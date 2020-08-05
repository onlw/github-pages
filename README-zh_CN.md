<p align="center">
    <img width="200" src="https://github.com/spaco/github-pages/blob/master/doc/github_pages.png?raw=true">
</p>

<h1 align="center">A script to build Github Pages quickly </h1>

English | [简体中文](./README-zh_CN.md)

## ✨ Features

- 🎨 Powerful theme customization for Hexo.
- 🌈 Support for Hugo
- 📦 Support for jekyll

## 🖥 Environment Support

### Hexo
- [Node.js](http://nodejs.org/) (Should be at least Node.js 8.10, recommends 10.0 or higher)
- [Git](http://git-scm.com/)

## 📦 Install

```bash
git clone git@github.com:spaco/github-pages.git
```

## 🔨 Usage

```bash
cd github-pages
./app/hexo/install.sh -h
```

```bash
This script will not download [node Git]. You must download [node Git] yourself. Then use this script to install
Usage: 
install.sh -f <blog_folder> -u <github_username> -s <github_personal_access_token> 

-f: The blog folder
-u: Github username
-s: Github personal access token
```

Example:

```bash
./app/hexo/install.sh -f /Users/spaco/blog/hexo -u spaco -s GITHUB_PERSONAL_ACCESS_TOKEN
```

## 🔗 Links

- [Home page]()
- [GitHub Pages](https://help.github.com/en/github/working-with-github-pages)
- [Create GitHub Personal Access Token](https://help.github.com/en/enterprise/2.20/user/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line)
- [Change Log](CHANGELOG.en-US.md)
- [Hexo](https://hexo.io/docs/index.html)

## ⌨️ Development

Use Gitpod, a free online dev environment for GitHub.

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/spaco/github-pages)

## 🤝 Contributing [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

We welcome all contributions. You can submit any ideas as [pull requests](https://github.com/spaco/github-pages/pulls) or as [GitHub issues](https://github.com/spaco/github-pages/issues). 

If you are a collaborator, please follow our [Pull Request principle](https://github.com/spaco/github-pages/wiki/PR-principle) to create a Pull Request by [collaborator template](https://github.com/spaco/github-pages/compare?expand=1&template=collaborator.md).

## 🤔️ FAQ
- How should I choose scopes when I create github personal access token

    <p>
        <img width="200" src="https://github.com/spaco/github-pages/blob/master/doc/github_personal_access_token_scopes.png?raw=true">
    </p>