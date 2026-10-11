output "billing_account_iam_bindings_id" {
  description = "Map of id values across all billing_account_iam_bindings, keyed the same as var.billing_account_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_billing_account_iam_binding.billing_account_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "billing_account_iam_bindings_billing_account_id" {
  description = "Map of billing_account_id values across all billing_account_iam_bindings, keyed the same as var.billing_account_iam_bindings except keys with no billing_account_id are omitted"
  value       = { for k, v in google_billing_account_iam_binding.billing_account_iam_bindings : k => v.billing_account_id if v.billing_account_id != null && length(v.billing_account_id) > 0 }
}
output "billing_account_iam_bindings_condition" {
  description = "Map of condition values across all billing_account_iam_bindings, keyed the same as var.billing_account_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_billing_account_iam_binding.billing_account_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "billing_account_iam_bindings_etag" {
  description = "Map of etag values across all billing_account_iam_bindings, keyed the same as var.billing_account_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_billing_account_iam_binding.billing_account_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "billing_account_iam_bindings_members" {
  description = "Map of members values across all billing_account_iam_bindings, keyed the same as var.billing_account_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_billing_account_iam_binding.billing_account_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "billing_account_iam_bindings_role" {
  description = "Map of role values across all billing_account_iam_bindings, keyed the same as var.billing_account_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_billing_account_iam_binding.billing_account_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}

