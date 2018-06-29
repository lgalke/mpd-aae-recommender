# mpd-aae-recommender
Applying adversarial autoencoding recommender to Spotify million playlist dataset (RecSysChallenge 2018)

## How To

After cloning the repository it takes very few action to apply our approach.
Please make sure to run the code on a machine with GPUs and CUDA support.
For the following command line instructions,
the current working directory is assumed to be the present git repository.

1. Setup virtual environment and install all dependencies

```sh
bash setup.sh
```

This will create a virtual environment in folder `venv` and install all the necessary requirements.


2. Activate the virtual environment

```sh
source venv/bin/activate
```

3. Kick-off the experiments (can take a while)

```sh
python3 make_submission.py --data-path PATH/TO/MillionPlaylist/data --test-path PATH/TO/MillionPlaylist/test_set.json
```

Replace the argument for `--data-path` with the ./data directory of the Spotify Million Playlist Dataset and
replace the argument for `--test-path` with the path to the json file holding test set.
