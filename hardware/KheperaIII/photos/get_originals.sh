#/bin/sh
TARGETDIR='originals'
URL='http://igwe.rave.org/~rdewaele/robots/KheperaIII/'
mkdir -p $TARGETDIR && cd $TARGETDIR && wget -r -nd -np $URL && cd ..
