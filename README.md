# terraform-fargate-tutorial

This repository contains a working example of setting up a minimal Fargate ECS service on AWS using Terraform. It was last updated in September 2021 to use Terraform 1.0.5.

See the post [at Section 411](https://section411.com/2019/07/hello-world/).

## Diagram

![sun-api](https://user-images.githubusercontent.com/590736/171856164-70c98307-c847-455e-ab28-2b5badf97d14.png)

## Changes

Minor changes to remove profile to sit better in my environment and configure the backend bucket, removed the tagging of the terraform version as well which isn't best practice but wanted to see if it ran into any issues and it didn't.  Also added the certificate approval code as I didn't read that far into the article so worked around that problem (required `depends_on` as per [this](https://github.com/hashicorp/terraform-provider-aws/issues/26245).  You will need to define the domain URI and the bucket before running a `terraform plan` or `apply`.

Used this to trial TLS monitoring errors (use openssl s_client).
