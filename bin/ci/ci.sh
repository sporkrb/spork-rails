#!/bin/sh
set -e
bundle exec rspec spec
GEMSET="rails4.0" bundle exec cucumber features --tags @rails4
GEMSET="rails3.2" bundle exec cucumber features --tags ~@rails4
GEMSET="rails3.1" bundle exec cucumber features --tags ~@rails4
GEMSET="rails3.0" bundle exec cucumber features --tags ~@rails4
