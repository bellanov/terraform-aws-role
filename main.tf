# Module Definition
# 
# Contains the main set of configuration for the module.
#================================================

# Define service role to assume.
data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = var.assume_role_principal.type
      identifiers = [var.assume_role_principal.identifiers]
    }

    actions = ["sts:AssumeRole"]
  }
}

# Define the Role.
resource "aws_iam_role" "role" {
  name               = var.name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

# Define the Role's permissions in a policy.
resource "aws_iam_policy" "policy" {
  name        = "${var.name}-role-policy"
  description = "IAM Policy defining the role's permissions."
  policy      = var.policy
}

# Attach the policy to the role.
resource "aws_iam_role_policy_attachment" "role" {
  role       = aws_iam_role.role.name
  policy_arn = aws_iam_policy.policy.arn
}
