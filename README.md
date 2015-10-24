# Docker SFML-1.6

This is a docker container to build SFML-1.6 applications.

## Building and running

I suggest to make a `build.sh` file containing:

```bash
docker run --rm -it -v $PWD:/source epayet/sfml-1.6
```

and a `run.sh` file containing:

```bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PWD'/libs/SFML'
./nameOfYourApp
```

It is quite difficult to compile SFML-1.6 on recent systems, so the container is an old Ubuntu. To run the app, the trick is to add compiled .so files from the container into your own machine path (LD_LIBRARY_PATH). Works on x64 linux systems.
