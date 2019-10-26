# Docker/Singularity config for dgea container


## Docker

```bash
docker pull sebio/dgea
```


## Singularity

A [Singularity Hub](https://www.singularity-hub.org/) definition build on version 3.

If [Singularity](https://sylabs.io/docs/) is installed locally, the container can be build (needs root access) locally like this:

```bash
sudo singularity build dgea.sif Singularity > build.log 2>&1
```

The container can also be downloaded from [Singularity Hub](https://www.singularity-hub.org/) without root access to the local machine like this:

```bash
singularity pull --name "dgea.sif" sschmeier/container-dgea:latest
```

