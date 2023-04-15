# Experiment with AWS roles

## Scenario

We're following the AWS tutorial mentioned in the Resources section below. We want to create the roles in such a way that

- Users in the `Source` account (the trusted account) allowed to assume a specific role in the `Destination` account.
- A role in the `Destination` account (the trusting account) allowed administrator access to all S3 buckets in the `Destination` account.

## Setup

To setup the experiment, we'll need access to two AWS accounts. Use the [`terraform` configuration](./terraform/) to create the right resources across AWS.

### Steps
```sh
cd terraform
terraform plan -out=aws_experiment
terraform apply aws_experiment
```

## Resources

- [IAM tutorial: Delegate access across AWS accounts using IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html)