# Outputs
# 
# Output values make information about your infrastructure available on the command line, 
# and can expose information for other Terraform configurations to use.
#================================================

output "name" {
  description = "Name of the Role."
  value       = aws_iam_role.role.name
}

output "arn" {
  description = "ARN of the Role."
  value       = aws_iam_role.role.arn
}

output "policy_id" {
  description = "ID of the policy defining the role's perrmissions."
  value       = aws_iam_policy.policy.name
}

output "policy_arn" {
  description = "ARN of the policy defining the role's perrmissions."
  value       = aws_iam_policy.policy.arn
}