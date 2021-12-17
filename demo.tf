
resource "aws_ebs_volume" "web_host_storage" {
  # unencrypted volume
  availability_zone = "${var.region}a"
  #encrypted         = false  # Setting this causes the volume to be recreated on apply 
  size = 1
  tags = merge({
    Name = "${local.resource_prefix.value}-ebs"
    }, {
    git_commit           = "6e62522d2ab8f63740e53752b84a6e99cd65696a"
    git_file             = "terraform/aws/ec2.tf"
    git_last_modified_at = "2021-05-02 11:16:31"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "c5509daf-10f0-46af-9e03-41989212521d"
  })
}

