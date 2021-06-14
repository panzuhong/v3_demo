echo 'Deploying...'
rsync -rv --delete -e 'ssh -o stricthostkeychecking=no' dist/ root@121.89.233.173:/usr/local/src/v3_demo
echo 'SUCCESS!'