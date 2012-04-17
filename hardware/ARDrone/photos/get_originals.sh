#/bin/sh
TARGETDIR='originals'
URL='http://igwe.rave.org/~rdewaele/robots/ARDrone/'
mkdir -p $TARGETDIR && cd $TARGETDIR && wget -r -nd -np $URL && cd ..
