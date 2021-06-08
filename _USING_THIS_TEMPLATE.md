# Using this template

You can use this file as a checklist to see if you didn't forget any placeholders.

------

Multiple files here use placeholder names, which are listed below, with what you should replace them with:
- [ ] `@ProjectName@`, the public name of your project
- [ ] `@ProjectFolder@`, the destination folder name for your project
- [ ] `@User@`, your GitHub username
- [ ] `@Repo@`, your GitHub repository name
- [ ] `@DockerImage@`, the docker image name for your project on the docker registry
- [ ] `@Filename@` in the CMakeLists for the install targets rules
- [ ] `@CommandLine@` to launch your project
- [ ] `@CLIHelp@` the help message generated by your project

Check for TODO throughout the project, you can find them in:
- [ ] README.md
    - [ ] @ProjectName@
    - [ ] Our beloved contributors (list of GitHub usernames of your contributors)
    - [ ] Credits
    - [ ] Copyright and Licence information
- [ ] ARCHITECTURE.md (brief description of the project architecture)
- [ ] CHANGELOG.md (check out [keepachangelog](http://keepachangelog.com/))
- [ ] ROADMAP.md (your vision for the development of the project ; not a problem if you can not follow it perfectly)
- [ ] .github/labeler.yml (list of GitHub labels to add to PRs when listed files are modified)
- [ ] .github/launch-tests (bash script to launch your tests)