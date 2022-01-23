#! /bin/bash
cd /Users/omkar/learn/learn-doc
git pull
git add .
echo "Enter comment for the commit:"
read comment
git commit -m "$comment"
git push

