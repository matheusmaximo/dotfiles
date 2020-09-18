git-up-there() {
    branchName=$(git copy-branch-name)
    if [ "$branchName" = "master" ]
    then
        echo "On master branch, switch branches first"
        return
    fi
    
    git commit
    git push -u origin $branchName
    gh pr create --web
}