# Aws eb cli action

![Run tests](https://github.com/simon-ouyang/actions-aws-eb/workflows/Run%20tests/badge.svg)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/hmanzur/actions-aws-eb/blob/master/LICENCE)

This action run [eb cli](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html)

## Inputs

### `command`

**Required** The application environment and environment variables

## Example usage

```YAML
- name: Configure AWS credentials
  uses: aws-actions/configure-aws-credentials@v1
  with:
    aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
    aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    aws-region: us-west-2

- name: Set the environment variables   
  uses: simon-ouyang/actions-aws-eb@v1.0.0
  with:
    application_environment: '${{ secrets.ENVIRONMENT_NAME }}'
    environment_variable:  'foo=bar&&DB_URL=${{ secrets.DB_URL }}'
```
