#/bin/bash

workdir=$(pwd)

cd ./node_modules/scratch-gui && npm install && npm run build

cd $workdir

rm -rf ./src/renderer 

cp -rf ./node_modules/scratch-gui/build ./src/renderer
