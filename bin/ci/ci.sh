#!/bin/sh
set -e
bundle exec rspec spec
GEMSET="rails3.2" bundle exec cucumber features
GEMSET="rails3.1" bundle exec cucumber features
GEMSET="rails3.0" bundle exec cucumber features
