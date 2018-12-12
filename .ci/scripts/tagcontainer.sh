MAJOR=1
MINOR=0
BUILD=$BUILD_ID
VERSION=${MAJOR}.${MINOR}.${BUILD}
TAG=${BRANCH_NAME}-${VERSION}

if [ "$BRANCH_NAME" = "master" ]
then
    $TAG=${VERSION}
    git config user.name "shaheena14"
    git config user.email "shaheena.vja@gmail.com"
    git tag -a ${TAG} -m "Jenkins Created version ${TAG}"
    git push git@github.com:shaheena14/npm-ui.git --tags
fi
