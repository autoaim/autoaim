echo
git add -A
echo
git status
echo
read -p "commit: " commit
echo
git commit -m $commit
echo
git branch | grep "*" | cut -d " " -f 2 | git push origin
echo
git status
echo
echo OK
read