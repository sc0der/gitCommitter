# !/bin/bash

pushCommits(){
    git commit -am "$@"
    git push origin $DEFAULT_BRANCH
    echo "commit: $@"
    echo "branch: $DEFAULT_BRANCH"
}

getCommitMessage(){
    if [ $@ != "" ];then
        pushCommits $@
    else
        echo "Please enter a message: "
        read message
        pushCommits $message
    fi
}

checkIfDefaultBranchSet()
{
    if [ "$DEFAULT_BRANCH" != "" ];then
        getCommitMessage $1
    else
        echo "You didn't set DEFAULT_BRANCH"
        echo "please run command 'export DEFAULT_BRANCH=<your branch>'"
    fi
}


checkIfDefaultBranchSet $@
