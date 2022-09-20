# !/bin/bash

checkIfDefaultBranchSet()
{
    if [ "$DEFAULT_BRANCH" != "" ];then
        echo "Kiki"
    else
        echo "You didn't set DEFAULT_BRANCH"
        echo "please run command 'export DEFAULT_BRANCH=<your branch>'"
    fi
}

checkIfDefaultBranchSet