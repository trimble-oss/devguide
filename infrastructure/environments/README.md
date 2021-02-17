# Terraform Environments

 Each terraform environment can be constructed by navigating to the environment folder and running terraform commands.

## Run Steps

- ensure devguide-dev aws credentials profile exists
- cd to envrionment folder such as prod
- `terraform plan` to check changes
- `terraform apply` to apply changes

## Notes

- `terraform apply` will fail for the first time on a clean environment. This is due to cognito's route53 alias record requiring a base A record which is created by the www module. Creating a module -> module depends_on creates weird behavior for data lookups and future apply's. Run apply twice to get past this issue.
- `terraform destroy` should never be used since it will destroy the user pool, but will fail as well on the s3 bucket not being empty for content and logs. Items can eb removed for successful destruction.