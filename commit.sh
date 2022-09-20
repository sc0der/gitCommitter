# !/bin/bash

pushCommits(){
    git commit -am "$1"
    git push origin $DEFAULT_BRANCH
    echo "commit: $1"
    echo "branch: $DEFAULT_BRANCH"
}

getCommitMessage(){
    if [ $1 != "" ];then
        pushCommits $1
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


checkIfDefaultBranchSet $1
