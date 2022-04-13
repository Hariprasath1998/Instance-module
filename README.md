<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.web-server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2-ami-id"></a> [ec2-ami-id](#input\_ec2-ami-id) | To set the instance AMI | `string` | n/a | yes |
| <a name="input_ec2-connection-type"></a> [ec2-connection-type](#input\_ec2-connection-type) | (Optional) To set the Instance connection type | `string` | `null` | no |
| <a name="input_ec2-destination-file"></a> [ec2-destination-file](#input\_ec2-destination-file) | (Optional) To set the destination file path for file provisioner | `string` | `null` | no |
| <a name="input_ec2-iam-instance-profile"></a> [ec2-iam-instance-profile](#input\_ec2-iam-instance-profile) | To set the instance IAM Profile | `string` | n/a | yes |
| <a name="input_ec2-inline-script"></a> [ec2-inline-script](#input\_ec2-inline-script) | (Optional) To set the inline commands | `list(string)` | `null` | no |
| <a name="input_ec2-instance-count"></a> [ec2-instance-count](#input\_ec2-instance-count) | To set the Instance count | `number` | `1` | no |
| <a name="input_ec2-instance-type"></a> [ec2-instance-type](#input\_ec2-instance-type) | To set the Instance type | `string` | n/a | yes |
| <a name="input_ec2-key-name"></a> [ec2-key-name](#input\_ec2-key-name) | (Optional) To set the Instance Key name | `string` | `null` | no |
| <a name="input_ec2-private-key"></a> [ec2-private-key](#input\_ec2-private-key) | (Optional) To set the Instance private key | `string` | `null` | no |
| <a name="input_ec2-security-groups"></a> [ec2-security-groups](#input\_ec2-security-groups) | To set the instance security group | `set(string)` | n/a | yes |
| <a name="input_ec2-source-file"></a> [ec2-source-file](#input\_ec2-source-file) | (Optional) To set the source file path for file provisioner | `string` | `null` | no |
| <a name="input_ec2-user"></a> [ec2-user](#input\_ec2-user) | (Optional) To set the Instance User name | `string` | `null` | no |
| <a name="input_ec2-user-data"></a> [ec2-user-data](#input\_ec2-user-data) | To set the instance user data | `string` | `null` | no |
| <a name="input_project-developer"></a> [project-developer](#input\_project-developer) | (Optional) To set the developer name, used in Name tag | `string` | `null` | no |
| <a name="input_project-environment"></a> [project-environment](#input\_project-environment) | (Optional) To set the environment, used in Environment tag | `string` | `null` | no |
| <a name="input_project-name"></a> [project-name](#input\_project-name) | (Optional) To set the project name, used in Name tag | `string` | `null` | no |
| <a name="input_subnet-ids"></a> [subnet-ids](#input\_subnet-ids) | To set the subnet ids to launch the instance in | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2-instances"></a> [ec2-instances](#output\_ec2-instances) | Instance Details |
| <a name="output_instance-ids"></a> [instance-ids](#output\_instance-ids) | Instance IDs |
<!-- END_TF_DOCS -->