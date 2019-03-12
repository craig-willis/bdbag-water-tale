# Example Tale in BDBag Format

This example illustrates:
* Tale in BagIt-RO format
* 'Water Tale" example with notebook, referencing DataONE data
* fetch.txt for retrieving remote data (fill holes)
* repo2docker integration to build an image off the workspace

Install `bdbag`:
```
pip install bdbag
```

Build the image using my `repo2docker` fork:
```
./build.sh
```

Fetch the missing data using bdbag:
```
bdbag --resolve-fetch all .
```

Run the built image:
```
./run.sh
```

Access on https://localhost:8888/?token=<token>
