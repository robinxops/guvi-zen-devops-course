module "aws_ec2_use1" {
  source = "./modules/aws_ec2"

  providers = {
    aws = aws.use1
  }

  for_each      = var.use1_aws_instances
  instance_name = each.key
  instance_type = each.value.instance_type
  ami_id        = each.value.ami_id
  user_data     = each.value.user_data
}

module "aws_ec2_aps1" {
  source = "./modules/aws_ec2"

  providers = {
    aws = aws.aps1
  }

  for_each      = var.aps1_aws_instances
  instance_name = each.key
  instance_type = each.value.instance_type
  ami_id        = each.value.ami_id
  user_data     = each.value.user_data
}
