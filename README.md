# balenaOS + alwaysAI

**Sample project to showcase how to run alwaysAI starter apps in balenaOS.**

**Note** This repository does not include alwaysAI starter apps. As of Jan 2020, you need to sign up for the private beta in order to get access to them, see more information [here](https://learn.alwaysai.co/beta-web-575).

## Usage

*If you are new to balena, see [this](https://www.balena.io/docs/learn/getting-started/raspberrypi3/nodejs/) getting started guide before going on*

After you deploy this project with `balena push` you need to manually run a few cli commands to get the apps running.

### Get starter apps

Run this command on `/usr/src`:

```
cd /usr/src
aai get-starter-apps
```

### Get models for a project

Before running one of the starter apps, you will need to download the required models for it. 
As of Jan 2020, there is no "easy" way of doing this. You can either deploy from your dev machine into a regular Raspbian installation and copy the models from there, or use the workaround below. An issue has been raised in alwaysai GitHub requesting to implement this as a feature (https://github.com/alwaysai/cli/issues/101).

1. Choose the app you want to run (be sure to update all paths accordingly if you choose another app): `hello_world`
2. `cd` into the app directory: `cd /usr/src/alwaysai-starter-apps/hello_world`
3. Run `aai install` command: `ALWAYSAI_HOME=/usr/src/alwaysai-starter-apps/hello_world aai app install`. This command will most likely fail on the last part (`Install python virtual environment`), but that is fine as long as the models were downloaded correctly on the step before.


### Run the app

Run with: `python app.py`