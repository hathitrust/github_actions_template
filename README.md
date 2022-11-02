# Template repository for github actions for HathiTrust

The example uses a Dockerfile for a Ruby project, but this is applicable to
projects in perl as well.

To be able to deploy to Kubernetes using these actions, you will need to first
set up secrets using use https://github.com/mlibrary/config-repo-env.

See also the actions these workflows use:

* https://github.com/hathitrust/github_actions
* https://github.com/mlibrary/deploy-to-kubernetes

This repository includes:

* Github Actions workflows for building a Docker image and deploying to
  Kubernetes. See individual workflows for additional comments.
* starter `Dockerfile`, `Dockerfile.prod`, and `docker-compose.yml`, which implement our best attempt at a strategy around gem caching.
* LICENSE required by all HathiTrust projects
* Starter Gemfile, rspec, coveralls configuration
* `wait-for` from https://github.com/eficode/wait-for, which we use extensively in CI workflows for waiting for mysql etc to become ready
