resource "aws_iam_user" "test" {
  name = var.name
  tags = var.tags
}

resource "aws_iam_access_key" "test" {
  user  = aws_iam_user.test.name
  count = (var.api_keys == true ? 1 : 0)
}