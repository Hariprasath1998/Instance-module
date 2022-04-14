variable "project-name" {
  description = "(Optional) To set the project name, used in Name tag"
  type        = string
  default     = null
}

variable "project-developer" {
  description = "(Optional) To set the developer name, used in Name tag"
  type        = string
  default     = null
}

variable "project-environment" {
  description = "(Optional) To set the environment, used in Environment tag"
  type        = string
  default     = null
}


variable "ec2-ami-id" {
  description = "To set the instance AMI"
  type        = string
}

variable "ec2-iam-instance-profile" {
  description = "To set the instance IAM Profile"
  type        = string
}

variable "ec2-instance-type" {
  description = "To set the Instance type"
  type        = string
}


variable "ec2-instance-count" {
  description = "To set the Instance count"
  type        = number
  default     = 1
}


variable "ec2-key-name" {
  description = "(Optional) To set the Instance Key name"
  type        = string
  default     = null
}


variable "subnet-ids" {
  description = "To set the subnet ids to launch the instance in"
  type        = list(any)
}

variable "ec2-security-groups" {
  description = "To set the instance security group"
  type        = set(string)
}


variable "ec2-user-data" {
  description = "To set the instance user data"
  type        = string
  default     = null
}
