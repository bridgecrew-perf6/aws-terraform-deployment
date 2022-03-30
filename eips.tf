# Resource: aws_eip
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

resource "aws_eip" "nat1" {
  vpc = true
  # EIP may require IGW to exist prior to association.
  #Use depends on to set an explicit on the IGW.

  depends_on = [aws_internet_gateway.main]
}

resource "aws_eip" "nat2" {
  vpc = true
  # EIP may require IGW to exist prior to association.
  #Use depends on to set an explicit on the IGW.

  depends_on = [aws_internet_gateway.main]
}
