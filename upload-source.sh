rm -rf assets
mkdir -p assets
cd code/workshop
zip -r ../../assets/workshop * .gitignore .eslintrc.cjs
aws s3 sync ../../assets s3://ws-assets-us-east-1/5820d793-b97a-4539-b72d-25b7b07dec2b --delete

echo "***************************************************************"
echo "***    The uploaded assets will ONLY be available once a    ***"
echo "***       COMMIT is PUSHED to the workshop repository       ***"
echo "***             AFTER this script was run!                  ***"
echo "***                                                         ***"
echo "***        If they're not updated in a test event           ***"
echo "***             you haven't pushed a commit!                ***"
echo "***************************************************************"
