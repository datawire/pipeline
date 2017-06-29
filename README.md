# Deployment Pipeline for Quote of the Moment (QotM) Service

[![Build Status](https://travis-ci.org/datawire/pipeline.svg?branch=master)](https://travis-ci.org/datawire/pipeline)

This is a deployment pipeline for the Quote of the Moment (QotM) service.

The workflow is as follows:

On commit to Git:

1. Clone and checkout Git commit.
2. Build code.
3. Run local unit tests.
4. Run local integration tests.
5. Build a Docker image datawire/${SERVICE_NAME}:${COMMIT_SHA}.
6. Deploy to staging cluster with an ephemeral identifier.
7. Run remote acceptance tests.
8. If branch == master then deploy to staging and production.

# License

Licensed under Apache 2.0. Please see [LICENSE](LICENSE) for details.
