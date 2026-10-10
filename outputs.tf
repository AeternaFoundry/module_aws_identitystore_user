output "identitystore_users_id" {
  description = "Map of id values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identitystore_users_addresses" {
  description = "Map of addresses values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => one(v.addresses) if v.addresses != null && length(v.addresses) > 0 }
}
output "identitystore_users_display_name" {
  description = "Map of display_name values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "identitystore_users_emails" {
  description = "Map of emails values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => one(v.emails) if v.emails != null && length(v.emails) > 0 }
}
output "identitystore_users_external_ids" {
  description = "Map of external_ids values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.external_ids if v.external_ids != null && length(v.external_ids) > 0 }
}
output "identitystore_users_identity_store_id" {
  description = "Map of identity_store_id values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.identity_store_id if v.identity_store_id != null && length(v.identity_store_id) > 0 }
}
output "identitystore_users_locale" {
  description = "Map of locale values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.locale if v.locale != null && length(v.locale) > 0 }
}
output "identitystore_users_name" {
  description = "Map of name values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => one(v.name) if v.name != null && length(v.name) > 0 }
}
output "identitystore_users_nickname" {
  description = "Map of nickname values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.nickname if v.nickname != null && length(v.nickname) > 0 }
}
output "identitystore_users_phone_numbers" {
  description = "Map of phone_numbers values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => one(v.phone_numbers) if v.phone_numbers != null && length(v.phone_numbers) > 0 }
}
output "identitystore_users_preferred_language" {
  description = "Map of preferred_language values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.preferred_language if v.preferred_language != null && length(v.preferred_language) > 0 }
}
output "identitystore_users_profile_url" {
  description = "Map of profile_url values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.profile_url if v.profile_url != null && length(v.profile_url) > 0 }
}
output "identitystore_users_region" {
  description = "Map of region values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.region if v.region != null && length(v.region) > 0 }
}
output "identitystore_users_timezone" {
  description = "Map of timezone values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}
output "identitystore_users_title" {
  description = "Map of title values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.title if v.title != null && length(v.title) > 0 }
}
output "identitystore_users_user_id" {
  description = "Map of user_id values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}
output "identitystore_users_user_name" {
  description = "Map of user_name values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}
output "identitystore_users_user_status" {
  description = "Map of user_status values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.user_status if v.user_status != null && length(v.user_status) > 0 }
}
output "identitystore_users_user_type" {
  description = "Map of user_type values across all identitystore_users, keyed the same as var.identitystore_users"
  value       = { for k, v in aws_identitystore_user.identitystore_users : k => v.user_type if v.user_type != null && length(v.user_type) > 0 }
}

