set -e

BUNDLE_DIR=/tmp/bundle

cd $APP_SRC_DIR
# npm install --production # todo do we need this ?
meteor build --directory $BUNDLE_DIR

cd $BUNDLE_DIR/bundle/programs/server
npm install --production

mv $BUNDLE_DIR/bundle $APP_DIR

# cleanup
rm -rf $APP_SRC_DIR
rm -rf $BUNDLE_DIR
rm -rf ~/.meteor
rm /usr/local/bin/meteor