# Roboto VF

This is a variable version of Roboto intended to be a 1:1 match with the official non-variable release from Google.

This is not an official Google project, but was enabled with generous funding by Google Fonts, who contracted Type Network.
Font Bureua too over the development in 2019 to add hinting and develop the build process on this repository. The Roboto family of instances contained 6 weights and two widths of normal, along with italic of the regular width.
The project began by taking UFO instances generated during the build process of the Roboto v2.136 release, which have quadratic outlines. 
The Thin, Regular and Bold UFOs required some fixes for interpolation compatibility, and a build script was written that preserves outline overlaps.

* [/master_ufo](master_ufo/) contains new source UFOs

* [/fonts](fonts/) folder contains variation font TTFs

  * **Roboto-min-VF.ttf** has deltas for min, default and max

Both fonts have named instances for all the styles in the v2.136 release.

## Install

    # Create a new virtualenv
    virtualenv env
    # Activate env
    source env/bin/activate
    # Install dependencies
    pip install -r requirements.txt

## Generate

    sh build-min.sh

# License

Both fonts and software found in this repo are all available under the Apache License v2.0
