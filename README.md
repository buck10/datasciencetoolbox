# Data Science Toolbox (Forked)

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

This is a fork of the [Data Science Toolbox](https://github.com/datasciencetoolbox/datasciencetoolbox).

This version is based upon Ubuntu 22.04LTS and includes tools such as:

* jq
* xmlstarlet
* GNU parallel
* xsv
* pup
* ripgrep
* vowpal wabbit

Under the hood, this project employs Packer, Ansible, and Docker.

## Building

In order to build this docker image, you must have Packer, Ansible and Docker installed and you should have an account on Docker Hub if you wish to upload the resulting image.

After cloning the repository, create a file name `variables.json` and add the following:

```json
{
    "docker_hub_username": "<your docker hub username here>",
    "docker_hub_password": "<your docker hub password here>"
}
```

You can then build the image using:

```bash
sudo make docker-build
```

## License

The Data Science Toolbox is licensed under the MIT License.
