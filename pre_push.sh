#!/usr/bin/env bash

export PATH=/usr/local/bin:/usr/bin:/bin:$PATH

commit_message=$(git log -1 --pretty=%B)
regex='^#[[:digit:]]* '

echo 'Commit msg: ' $commit_message

sub_string=$(echo "$commit_message" | grep -o "$regex")
if [ -z "$sub_string" ]
then
     echo 'Commit message must begin with #:ticket_number[whitespace]'
     echo "Error commit: $commit_message"
     exit 1
fi