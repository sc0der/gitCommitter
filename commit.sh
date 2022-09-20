# !/bin/bash



getCommitMessage(){
    if [[ "$1" != '' ]];then
        echo "Salom $1"
    else
        echo "Please enter a message: "
        read message
        echo "Messsage is: $message"
    fi
}

checkIfDefaultBranchSet()
{
    if [ "$DEFAULT_BRANCH" != "" ];then
        getCommitMessage
    else
        echo "You didn't set DEFAULT_BRANCH"
        echo "please run command 'export DEFAULT_BRANCH=<your branch>'"
    fi
}


checkIfDefaultBranchSet