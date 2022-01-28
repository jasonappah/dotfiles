#!/usr/bin/env zx

$.shell = '/opt/homebrew/bin/zsh'
const dirs = await fs.readdir("./")
const wd = (await $`pwd`).toString().trim()
for (const f of dirs) {
	const accStat = await fs.stat(wd+"/"+f)
	if (!accStat.isDirectory()) {
		console.log(chalk.yellow(f, "is not a directory, skipping..."))
		continue
	}
	
	console.log(chalk.cyan("Starting with account",f))
	cd(path.join(wd,f))
	
	const repos = await fs.readdir(wd+"/"+f)
	for (const r of repos) {
		const repoStat = await fs.stat(wd+"/"+f+"/"+r)
		if (!repoStat.isDirectory()) {
			console.log(chalk.yellow(f, "is not a directory, skipping..."))
			continue
		}
		cd(r)
		const isNodePackage = (await globby(["package.json"])).length > 0
		if (!isNodePackage) {
			console.log(chalk.yellow(r, "is not a Node project, skipping..."))
			cd("..")
			continue
		}
		const hasLock = (await globby(["npm-shrinkwrap.json", "yarn.lock", "package-lock.json"])).length > 0
		if (hasLock) {
			console.log(chalk.blue(r,"has a lockfile, converting..."))
			await $`pnpm import`.pipe(process.stdout)
		}
		console.log(chalk.blue("Installing deps for", r, "..."))
		await $`rm -rf node_modules`
		await $`pnpm install`.pipe(process.stdout)
		console.log(chalk.green("Done with",r,"!"))
		cd("..")
	}
	cd(wd)
}
console.log(chalk.green("All done!"))
