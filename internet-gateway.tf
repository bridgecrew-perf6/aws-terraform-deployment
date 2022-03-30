# Resource: aws_internet_gateway
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  # mao of tags to assign to the resource.
  tags = {
    Name = "main"
  }
}
