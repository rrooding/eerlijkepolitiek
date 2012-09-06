# Eerlijke Politiek

## Importing the database

Download the datasets first:
    cd db
    ./download_datasets.sh

Run the migrations
    bundle exec rake db:migrate

Run the seeds
    bundle exec rake db:seed
