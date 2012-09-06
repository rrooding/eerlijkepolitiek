#!/bin/bash

DATASETS="Activiteiten Agendapunten Besluiten Stemmingen Zaken"

for dataset in $DATASETS
do
  echo "* Downloading $dataset"
  wget -q http://data.appsvoordemocratie.nl/metadata/$dataset.tsv.gz
  echo "* Unpacking $dataset"
  gunzip $dataset.tsv.gz
  mv $dataset.tsv seeds/
done
