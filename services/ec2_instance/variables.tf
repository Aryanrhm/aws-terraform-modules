variable "name" {
  description = "The name to use for the prefix of all the resources"
  type        = string
}

##### ec2 #####

variable "user_data" {
  type = bool
  description = "To specify a user data file for the instance"
}

variable "user_data_path" {
  description = "If the user_data is true, this variable will be used to specify the path of user file."
  type = string
  default = "./user-data.sh"
}

variable "sg_id" {
  description = "The ID of created Security Group to assign to instance"
  type        = string
}

variable "key_name" {
  description = "The name of key to use for the ec2 instance"
  type        = string
}

variable "pem_file_name" {
  description = "The name of pem file which would be created locally"
  type        = string
}

variable "ami_id" {
  type        = string
  description = "The ami_id of created instance"
}

variable "instance_type" {
  type    = string
}

variable "hibernate" {
  description = "Add the hibernation ability to the instance, which the root_block_encryption should be enabled either"
  type        = bool
  default = false
}

variable "root_block_encrypt" {
  description = "The ability of encrypting root block device "
  type        = bool
  default = false
}

#### Target group ####

variable "tg_attach"{
  type = bool
  description = "To attach the ec2 instance to a Target Group"
  default = false
}

variable "tg_arn" {
  description = "The arn of Target Group to attach the ec2 instance to"
  type        = string
}

variable "tg_port" {
  type = number
  description = "The port on which targets receive traffic"
}

##### Elastic IP #####

variable "eip" {
  description = "Adding an Elastic IP for the instance"
  type        = bool
  default = false
}

##### Elastic Block Storage ####

variable "extra_ebs" {
  description = "Adding an extra ebs volume for the instance"
  type        = bool
  default = false
}

variable "ebs_size" {
  description = "The size of attached ebs"
  type        = number
}

variable "ebs_az" {
  description = "The Availablity Zone of ebs volume"
  type        = string
}

variable "ebs_device_name" {
  description = "The ebs device name to expose to the instance"
  type = string
}

##### Instance Profile #####

variable "role_name" {
  description = "The name of role to create the instance profile"
  type        = string
}