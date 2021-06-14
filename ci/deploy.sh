echo 'Deploying...'
ssh-keygen
cd ~/.ssh
ssh-copy-id -i ~/.ssh/id_rsa.pub root@121.89.233.173
ssh root@121.89.233.173
echo 'SUCCESS!'
