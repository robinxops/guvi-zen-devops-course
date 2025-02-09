variable "use1_aws_instances" {
  type = map(object({
    instance_type = optional(string, "t2.micro")
    ami_id        = optional(string, "ami-085ad6ae776d8f09c")
    user_data     = optional(string, null)
  }))
  default = {}
}

variable "aps1_aws_instances" {
  type = map(object({
    instance_type = optional(string, "t2.micro")
    ami_id        = optional(string, "ami-0c50b6f7dc3701ddd")
    user_data     = optional(string, null)
  }))
  default = {}
}
