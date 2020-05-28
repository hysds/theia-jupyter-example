# Theia/Jupyter ADE Demo

## Prerequisites

- docker
- docker-compose


## ISCE2 Demo

1. Clone this repo:
   ```
   mkdir -p ~/dev
   cd ~/dev
   git clone https://github.com/hysds/theia-jupyter-example.git
   ```
   Note that the `docker-compose-isce2.yml` is configured to use the ISCE2 docker image
   as the base docker image for analysis/algorithm development. It already contains the
   SAS (science algorithm software) needed for analysis/algorithm development.
1. Clone git repo for analysis/algorithm development and export it to the `PROJECT` env var:
   ```
   git clone https://github.com/aria-jpl/ariamh.git
   export PROJECT=~/dev/ariamh
   ```
1. Start up theia/jupyter docker containers using docker-compose:
   ```
   cd theia-jupyter-example
   docker-compose up
   ```
1. As the `jupyter` container starts up, take note of the jupyter lab token. You will
   need it to connect to jupyterlab and for theia to communicate with it.
1. Navigate to `localhost:3000` in host browser.
1. In another browser tab, navigate to `localhost:8888`. Enter the jupyter token to connect.
1. Back in the theia browser tab, create a new file called `test.ipynb`: `File`->`New File`
1. This will open up a theia tab to your test notebook.
1. Let's test that it has access to the SAS (isce2). In the first cell type in:
   ```
   import isce
   ```
   Then print `Shift-Enter`.
1. A prompt at the top of the screen will ask you for the notebook password. Enter the jupyter 
   token from before. It may prompt you for the token a second time.
1. The output of the cell should print out the ISCE2 license information:
   ```
   This is the Open Source version of ISCE.
   Some of the workflows depend on a separate licensed package.
   To obtain the licensed package, please make a request for ISCE
   through the website: https://download.jpl.nasa.gov/ops/request/index.cfm.
   Alternatively, if you are a member, or can become a member of WinSAR
   you may be able to obtain access to a version of the licensed sofware at
   https://winsar.unavco.org/software/isce
   ```
1. Switch to the jupyter browser tab and create another notebook: `File`->`New`->`Notebook`
1. In the first cell type in:
   ```
   import isce
   ```
   Then print `Shift-Enter`.
1. This too should output the ISCE2 license information.
1. To shut down, press `Control-C` in the terminal window where you ran `docker-compose up`.
1. Cleanup after yourself by running:
   ```
   docker-compose down
   ```
