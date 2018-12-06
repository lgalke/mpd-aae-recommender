# mpd-aae-recommender

Applying adversarial autoencoding recommender to Spotify million playlist dataset

**Challenge:** [RecSys Challenge 2018](http://www.recsyschallenge.com/2018)

**Track:** Main track

**Team name:** Unconscious Bias

For more information see [Using Adversarial Autoencoders for Multi-Modal Automatic Playlist Continuation](https://zenodo.org/record/1455214)


## Steps to train a model and apply it to a test set

After cloning the repository it takes very few action to apply our approach.
Please make sure to run the code on a machine with GPUs and CUDA support.
For the following command line instructions,
the current working directory is assumed to be the present git repository.

### Step 1: Setup virtual environment and install all dependencies

```sh
bash setup.bash
```

This will create a virtual environment in folder `venv` and install all the necessary requirements.


### Step 2: Activate the virtual environment

```sh
source venv/bin/activate
```

### Step 3: Kick-off the experiments (can take a while)

CUDA support is required.

```sh
python3 make_submission.py --data-path PATH/TO/MillionPlaylist/data --test-path PATH/TO/MillionPlaylist/test_set.json
```

Replace the argument for `--data-path` with the ./data directory of the Spotify Million Playlist Dataset and
replace the argument for `--test-path` with the path to the json file holding test set.

Per default the output will be written to `submission.csv`, if desired it can be changed by providing `-o` argument.

## Cite

If you use our code in your own work please cite our paper:

    @inproceedings{Vagliano:2018,
         author = {Vagliano, Iacopo and Galke, Lukas and Mai, Florian and Scherp, Ansgar},
         title = {Using Adversarial Autoencoders for Multi-Modal Automatic Playlist Continuation},
         booktitle = {Proceedings of the ACM Recommender Systems Challenge 2018},
         series = {RecSys Challenge '18},
         year = {2018},
         isbn = {978-1-4503-6586-4},
         location = {Vancouver, BC, Canada},
         pages = {5:1--5:6},
         articleno = {5},
         numpages = {6},
         url = {http://doi.acm.org/10.1145/3267471.3267476},
         doi = {10.1145/3267471.3267476},
         acmid = {3267476},
         publisher = {ACM},
         address = {New York, NY, USA},
         keywords = {adversarial autoencoders, automatic playlist continuation, multi-modal recommender, music recommender systems, neural networks},
    }

