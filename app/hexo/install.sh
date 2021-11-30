#!/bin/bash


function confirm() {
    read -r -p "${1:-Are you sure?} [y/N] " response
    case $response in
    [yY][eE][sS] | [yY])
        true
        ;;
    *)
        false
        ;;
    esac
}


## blue to echo
function echo_blue(){
    echo -e "\033[34m[ $1 ]\033[0m"
}

## green to echo
function echo_green(){
    echo -e "\033[32m[ $1 ]\033[0m"
}

## Error to warning with blink
function echo_red(){
    echo -e "\033[31m\033[01m\033[05m[ $1 ]\033[0m"
}


# properties
script_file_folder=$(pwd)

function usage() {
    echo ""
    echo "This script will not download [node Git]. You must download [node Git] yourself. Then use this script to install"
    echo "Usage: "
    echo "install.sh -f <blog_folder> -u <github_username> -s <github_personal_access_token> "
    echo ""
    echo "-f: The blog folder"
    echo "-u: Github username"
    echo "-s: Github personal access token"
    echo ""
}

while getopts "f:s:u:h" opts; do
    case $opts in
    f)
        blog_folder=${OPTARG}
        ;;
    s)
        github_personal_access_token=${OPTARG}
        ;;
    u)
        username=${OPTARG}
        ;;
    h)
        usage
        exit 0
        ;;
    \?)
        usage
        exit 1
        ;;
    esac
done

# create github pages repository use default
repository_name=${username}.github.io
echo_green "creating github repository ${repository_name} ..."

curl -u "${username}:${github_personal_access_token}" https://api.github.com/user/repos -d '{"name":"'"${repository_name}"'","auto_init":true}'
echo_green "github repository ${repository_name} has been created"

mkdir -p "${blog_folder}"

if (confirm "Do you want to install hexo-cli? if you have already installed please skip"); then
    echo_green "install hexo-cli ..."
    npm install -g hexo-cli
fi

echo_green "init hexo folder ..."
hexo init "${blog_folder}"

# copy github actions script to blog_folder
# shellcheck disable=SC2164
cd "${script_file_folder}"
cp -r ../../deploy_actions/github_actions/.github "${blog_folder}"

echo_green "push hexo to github ..."

# shellcheck disable=SC2164
cd "${blog_folder}"
github_pages_repository_url=git@github.com:"${username}/${repository_name}".git

# push to github
git init
git remote add origin "${github_pages_repository_url}"
git pull origin master
git branch --set-upstream-to=origin/master
git add .
git commit -m "first commit"
git checkout -b gh_page
git push -u origin gh_page




