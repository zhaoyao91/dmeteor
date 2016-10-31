# DMeteor
run meteor in docker easily

## Deprecated
see [Meteor Tools](https://github.com/zhaoyao91/meteor-tools)

## From MeteorD
Most of code of this repo is from the great [MeteorD](https://github.com/kadirahq/meteord) project. We just simplified it, fixed some bugs, and concentrated on the most straightforward usage, only to make it easier to use and maintain.

## Usage
Add following `Dockerfile` into the root of your app:

``````
FROM zhaoyao91/dmeteor
``````

Then you can build the docker image with:

``````
docker build -t yourname/app .
``````

Then you can run your meteor image with

``````
docker run -d \
    -e ROOT_URL=http://yourapp.com \
    -e MONGO_URL=mongodb://url \
    -e MONGO_OPLOG_URL=mongodb://oplog_url \
    -p 8080:80 \
    yourname/app
``````

## Versions
The `latest` version will always be the latest version.  
If some incompatible changes are made, a new legacy version will be added and commented with its core features.

## Contributions
Welcome any helps and supports. We want you to join us to maintain it together.

## License
MIT
