#!/usr/bin/env bash


# first, from root run chmod +x ./scripts/sync.sh ./.git/hooks/pre-pull ./.git/hooks/pre-push ./.git/hooks/pre-commit
# make sure to authenticate with workshop credentials before running
# then from root run "./scripts/sync.sh" to push and "./scripts/sync.sh" pull to pull

if [[ $1 == "pull" ]]; then
    cd content
    rm -rf ./assets/
    aws s3 sync s3://ws-assets-us-east-1/50cf2fdb-1972-4e79-814f-12d2e6fb0dab ./assets --delete
#    unzip ./assets/opea-demo-runner.zip -d ./assets/
#    rm ./assets/opea-demo-runner.zip
else
#    cd ./infrastructure
#    zip -r ../assets/opea-demo-runner.zip ./opea-demo-runner/ -x "./opea-demo-runner/node_modules/*" "./opea-demo-runner/cdk.out/*" 
    aws s3 sync ./assets s3://ws-assets-us-east-1/50cf2fdb-1972-4e79-814f-12d2e6fb0dab --delete
#    rm ../assets/opea-demo-runner.zip
fi