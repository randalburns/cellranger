# cellranger

Docker build for Cell Ranger



### Download cellranger files to local directory (not in git repo)

```
wget -O cellranger-7.1.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-7.1.0.tar.gz?Expires=1691409513&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1leHAvY2VsbHJhbmdlci03LjEuMC50YXIuZ3oiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2OTE0MDk1MTN9fX1dfQ__&Signature=dzLwOLw8IYkPmvrrqoiVObemXkHKrpJscUtLjBL3pNEDoEJoMowskX-WsXkm-TojVZltfgZEuVEABH4uxNBAgVbSIQHw8hVNEWGmritEhsYwLSPZohNLHEOwerkEElJ~KPTFyipX0VegJwgpDEmTYe77jJqXPgG8jQvdhvyhQ3N7nQyu5jsaIrcaQUamVdohOVg4oAfJemAoVrxDJHRnIcaOujGa7l3dWrzyC3MLyyKgHd5arTwnMITIZjSXAGZotKUA~KI8TPtQsx-AYo1A8kS6ZKS68GSDJkV3DoUIGzUTrLOk87tM-YYfhr4Hd9QAeHc9H2qZ2zf1bcNfP8wPKA__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"

wget https://cf.10xgenomics.com/supp/cell-exp/refdata-gex-GRCh38-and-mm10-2020-A.tar.gz
```

### configure docker memory in WSL2 engine

This step addresses the 6GB memory limitation in docker desktop.

Edit file .wslconfig
```
[wsl2]
memory=12GB
```


### Build docker image

```
docker build . -t cellranger
```


### Run docker image

```
docker run -i -t --mount type=bind,source="/$(pwd)"/./cellranger-7.1.0,target=/opt/cellranger-7.1.0 cellranger
```

### Verify the cell ranger install


```
cellranger testrun --id=tiny

```

### Verify the bcl2fastq pipeline

Download data inside the container at /tmp.

```
cd /tmp
wget https://cf.10xgenomics.com/supp/cell-exp/cellranger-tiny-bcl-1.2.0.tar.gz
wget https://cf.10xgenomics.com/supp/cell-exp/cellranger-tiny-bcl-simple-1.2.0.csv
```


Run the tiny pipeline.
```
cellranger mkfastq --id=tiny-bcl --input-dir=/tmp/cellranger-tiny-bcl-1.2.0 --csv=/tmp/cellranger-tiny-bcl-simple-1.2.0.csv
```

