set -e

BUNDLE_DIR=/tmp/bundle

# install meteor
curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh

# build app
cd $APP_SRC_DIR
npm install
meteor build --directory $BUNDLE_DIR

mv $BUNDLE_DIR/bundle $APP_DIR

# install packages
cd $APP_DIR/programs/server
npm install --production

# clean up
rm -rf $APP_SRC_DIR
rm -rf $BUNDLE_DIR
rm -rf ~/.meteor
rm /usr/local/bin/meteor
