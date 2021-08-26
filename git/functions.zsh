git-up-there() {
    branchName=$(git copy-branch-name)
    if [ "$branchName" = "main" ]
    then
        echo "On main branch, switch branches first"
        return
    fi
    
    git commit
    git push -u origin $branchName
    gh pr create --web
}
