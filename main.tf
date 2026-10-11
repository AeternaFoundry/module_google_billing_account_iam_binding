resource "google_billing_account_iam_binding" "billing_account_iam_bindings" {
  for_each = var.billing_account_iam_bindings

  billing_account_id = each.value.billing_account_id
  members            = each.value.members
  role               = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

