# ![](https://github.com/docker-suite/artwork/raw/master/logo/png/logo_32.png) mysqltuner
[![Build Status](http://jenkins.hexocube.fr/job/docker-suite/job/mysqltuner/badge/icon?color=green&style=flat-square)](http://jenkins.hexocube.fr/job/docker-suite/job/mysqltuner/)
![Docker Pulls](https://img.shields.io/docker/pulls/dsuite/mysqltuner.svg?style=flat-square)
![Docker Stars](https://img.shields.io/docker/stars/dsuite/mysqltuner.svg?style=flat-square)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/dsuite/mysqltuner/latest.svg?style=flat-square)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/dsuite/mysqltuner/latest.svg?style=flat-square)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg?style=flat-square)](https://opensource.org/licenses/MIT)

[Alpine container][alpine-base] with [MySQLTuner][mysqltuner].

## ![](https://github.com/docker-suite/artwork/raw/master/various/pin/png/pin_16.png) Usage

This container is periodicaly updated to always contains the latest version of [MySQLTuner][mysqltuner].

```bash
    docker run -it --rm dsuite/mysqltuner \
        --host <hostname> \
        --user <username> \
        --pass <password> \
        --forcemem <size> \
        --forceswap <size>
```

Since this docker contianer will always be communicating with a remote MySQL instance, use:  
    `--forcemem` to define amount of RAM installed in megabytes.  
    `--forceswap` to define amount of swap memory configured in megabytes.  

## ![](https://github.com/docker-suite/artwork/raw/master/various/pin/png/pin_16.png) Help

For a list of all MySQLTuner options, run: `docker run -it --rm dsuite/mysqltuner --help`


[mysqltuner]: https://github.com/major/MySQLTuner-perl/
[alpine-base]: https://github.com/docker-suite/alpine-base
