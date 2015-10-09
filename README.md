# Static HAProxy Docker Container

[![Build Status](https://travis-ci.org/UKHomeOffice/docker-static-haproxy.svg?branch=master)](https://travis-ci.org/UKHomeOffice/docker-static-haproxy)

This container aims to be a generic and very basic tcp proxy service with static backends, i.e. not fancy service discovery here :-). You can specify
via the command line multiple proxies

## Getting Started

In this section I'll show you some examples of how you might run this container with docker.

### Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

## Usage

```shell
Usage: haconfig [options]
    -p, --proxy SPEC                 a proxy specification for the haproxy
    -d, --dryrun                     perform dryrun, i.e. just show the resulting configuration
    -t, --template TEMPLATE          the path to the haproxy template erb
    -h, --help                       display this usage menu
```

So to create a load balancer on 127.0.0.1:8080 going to endpoints 10.50.10.100:3499,10.50.10.101:3499

```shell
[jest@starfury docker-static-haproxy]$ 	docker run -ti --rm --net=host ukhomeofficedigital/static-haproxy -p 127.0.0.1:6443,10.50.10.100:3499,10.50.10.101:3499
```

Note: you can specify multiple proxies by repeating the -p switch.

### Useful File Locations

* `haproxy.conf.erb` is stored at `/etc/haproxy/haproxy.conf.erb`

### Examples

## Find Us

* [GitHub](https://github.com/UKHomeOffice/docker-static-haproxy)
* [Quay.io](https://quay.io/repository/ukhomeofficedigital/docker-static-haproxy)

## Contributing

Feel free to submit pull requests and issues. If it's a particularly large PR, you may wish to
discuss it in an issue first.

Please note that this project is released with a [Contributor Code of Conduct](code_of_conduct.md).
By participating in this project you agree to abide by its terms.

## Versioning

We use [SemVer](http://semver.org/) for the version tags available See the tags on this repository.

## Authors

* **Rohith Jayawardene** - *Initial work* - [gambol99](https://github.com/gambol99)

See also the list of
[contributors](https://github.com/UKHomeOffice/docker-static-haproxy/graphs/contributors) who
participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
