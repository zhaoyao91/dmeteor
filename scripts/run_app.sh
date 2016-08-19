set -e

cd $APP_DIR

export PORT=80

echo "=> Starting meteor app on port:$PORT"
node main.js
