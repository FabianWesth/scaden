cd ..
CURRENT_DIR=$(pwd)
APP_FOLDER="/app/"
APP_DIR="$CURRENT_DIR$APP_FOLDER"
docker run --rm -u $(id -u):$(id -g) -it --gpus device=0 -v $APP_DIR:/app/ --name scaden_fw scaden_fw:20210203