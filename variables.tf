variable "billing_account_iam_bindings" {
  description = <<EOT
Map of billing_account_iam_bindings, attributes below
Required:
    - billing_account_id
    - members
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    billing_account_id = string
    members            = set(string)
    role               = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

