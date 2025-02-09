variable "aws_instances" {
  type = object({
    use1 = map(object({
      instance_type = optional(string, "t2.micro")
      ami_id        = optional(string, "ami-085ad6ae776d8f09c")
    }))
    aps1 = map(object({
      instance_type = optional(string, "t2.micro")
      ami_id        = optional(string, "ami-0c50b6f7dc3701ddd")
    }))
  })
  default = {
    use1 = {}
    aps1 = {}
  }
}
