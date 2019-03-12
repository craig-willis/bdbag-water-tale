# Run the built image 
docker run -p 8888:8888  \
    -v `pwd`/data/data:/WholeTale/data  \
	-v `pwd`/data/workspace:/WholeTale/workspace \
	test/watertale
