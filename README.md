# cellranger

Docker build for Cell Ranger


### Build docker image

```
docker build . -t cellranger
```

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

### Download bcl2fastq

and get the tar.fz file in your base directory.

wget "https://files.softwaredownloads.illumina.com/82660c4c-f46c-4743-8566-2437755e4329/bcl2fastq2-v2-20-0-tar.zip?Expires=1691373545&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9maWxlcy5zb2Z0d2FyZWRvd25sb2Fkcy5pbGx1bWluYS5jb20vODI2NjBjNGMtZjQ2Yy00NzQzLTg1NjYtMjQzNzc1NWU0MzI5L2JjbDJmYXN0cTItdjItMjAtMC10YXIuemlwIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjkxMzczNTQ1fX19XX0_&Signature=Hga1fyIavrdbKr4TYNnoCYWiVEM00WFJf3WeH-rbgFf1GGyZ708FVPZkWxGkNQTwGfC6WIIHHK1FiRPLOgmONzPHNEItqe3q1dhmtvvFWBSj4XosiIifm0CU0V2okwOMV3FuWGj7vTaJzONIryxrQZzEG3d-2MswmkFqQdom5GXfFJEUeHEXWIKa-xYnaSM8hw5I9JVd3EscvJzlP1bnHMLqC3q3K2MrEyuwEldHqlgHsIaXS0S8alGFKfiQEIsIqGCVXj8-9NXcXDNO-TgTFOcR3mwS2MlGbSE~kF2qhjDFllWoOMNnR-jHZJ5idHrS~-VaecVxiDGoAHYw88zAVw__&Key-Pair-Id=APKAJO3UYWPXK4A26FPQ"

### Run docker image


### creating the fastq error

```
cellranger mkfastq --id=tiny-bcl --input-dir=/tmp/cellranger-tiny-bcl-1.2.0 --csv=/tmp/cellranger-tiny-bcl-simple-1.2.0.csv
```

get the data from the page `https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/using/mkfastq` look for tiny-bcl.





