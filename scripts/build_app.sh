set -e

BUNDLE_DIR=/tmp/bundle

echo "Install meteor"
curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh

echo "Build app"
cd $APP_SRC_DIR
npm install
meteor build --directory $BUNDLE_DIR

mv $BUNDLE_DIR/bundle $APP_DIR

echo "Install packages"
cd $APP_DIR/programs/server
npm install --production

echo "Clean up"
rm -rf $APP_SRC_DIR
rm -rf $BUNDLE_DIR
rm -rf ~/.meteor
rm /usr/local/bin/meteor
