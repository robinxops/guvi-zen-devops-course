use1_aws_instances = {
  "web-use1" = {
    user_data = <<-EOF
        #!/bin/bash
        sudo dnf update -y
        sudo dnf install -y nginx
        sudo systemctl enable nginx
        sudo systemctl start nginx
      EOF
  }
}

aps1_aws_instances = {
  "web-aps1" = {
    user_data = <<-EOF
        #!/bin/bash
        sudo dnf update -y
        sudo dnf install -y nginx
        sudo systemctl enable nginx
        sudo systemctl start nginx
      EOF
  }
}
