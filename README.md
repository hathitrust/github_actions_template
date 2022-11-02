[![Tests](https://github.com/hathitrust/otis/actions/workflows/tests.yml/badge.svg)](https://github.com/hathitrust/github_actions_template/actions/workflows/tests.yml)
[![Coverage Status](https://coveralls.io/repos/github/hathitrust/github_actions_template/badge.svg?branch=main)](https://coveralls.io/github/hathitrust/github_actions_template?branch=main)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://github.com/testdouble/standard)

# Template repository for github actions for HathiTrust

The example uses a Dockerfile for a Ruby project, but this is applicable to
projects in perl as well.

To be able to deploy to Kubernetes using these actions, you will need to first
set up secrets using use https://github.com/mlibrary/config-repo-env.

See also the actions these workflows use:

* https://github.com/hathitrust/github_actions
* https://github.com/mlibrary/deploy-to-kubernetes

This repository includes:

* examples for badges for tests, coveralls, and standardrb
* Github Actions workflows for building a Docker image and deploying to
  Kubernetes. See individual workflows for additional comments.
* starter `Dockerfile`, `Dockerfile.prod`, and `docker-compose.yml`, which implement our best attempt at a strategy around gem caching.
* LICENSE required by all HathiTrust projects
* Starter Gemfile, rspec, coveralls configuration
* `wait-for` from https://github.com/eficode/wait-for, which we use extensively in CI workflows for waiting for mysql etc to become ready

## Usage

[Use this template](https://github.com/hathitrust/ruby_github_actions_template/generate), or copy individual files into your project.

When using this template, document inline variation in the Dockerfiles and github actions. That will help in understanding divergence between individual projects and future updates to this template.
