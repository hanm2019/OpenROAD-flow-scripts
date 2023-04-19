IMAGENAME=registry.cn-beijing.aliyuncs.com/xitongzu/flow-ubuntu20.04-builder:master

#docker run --rm -it -u $(id -u ${USER}):$(id -g ${USER}) -v $(pwd)/flow:/OpenROAD-flow-scripts/flow  -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro ${IMAGENAME}

docker run --rm -it \
	  -u $(id -u ${USER}):$(id -g ${USER}) \
           -v $(pwd)/flow:/OpenROAD-flow-scripts/flow \
           -e DISPLAY=${DISPLAY} \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v ${HOME}/.Xauthority:${HOME}/.Xauthority \
	   -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro \
           --network host \
           --security-opt seccomp=unconfined \
	   ${IMAGENAME}

