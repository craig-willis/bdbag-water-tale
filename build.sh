# Use repo2docker to build the image from the workspace
docker run  \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v `pwd`/data/workspace:/WholeTale/workspace \
	--privileged=true \
	-e DOCKER_HOST=unix:///var/run/docker.sock \
	craigwillis/repo2docker \
	jupyter-repo2docker  \
	   --target-repo-dir=/WholeTale/workspace \
       --template=base.tpl \
	   --buildpack-name=PythonBuildPack \
	   --user-id=1000 --user-name=jovyan \
	   --no-clean --no-run --debug \
	   --image-name test/watertale \
	   /WholeTale/workspace
