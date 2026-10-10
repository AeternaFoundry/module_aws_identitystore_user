variable "identitystore_users" {
  description = <<EOT
Map of identitystore_users, attributes below
Required:
    - display_name
    - identity_store_id
    - user_name
    - name (block):
        - family_name (required)
        - formatted (optional)
        - given_name (required)
        - honorific_prefix (optional)
        - honorific_suffix (optional)
        - middle_name (optional)
Optional:
    - locale
    - nickname
    - preferred_language
    - profile_url
    - region
    - timezone
    - title
    - user_type
    - addresses (block):
        - country (optional)
        - formatted (optional)
        - locality (optional)
        - postal_code (optional)
        - primary (optional)
        - region (optional)
        - street_address (optional)
        - type (optional)
    - emails (block):
        - primary (optional)
        - type (optional)
        - value (optional)
    - phone_numbers (block):
        - primary (optional)
        - type (optional)
        - value (optional)
EOT

  type = map(object({
    display_name       = string
    identity_store_id  = string
    user_name          = string
    locale             = optional(string)
    nickname           = optional(string)
    preferred_language = optional(string)
    profile_url        = optional(string)
    region             = optional(string)
    timezone           = optional(string)
    title              = optional(string)
    user_type          = optional(string)
    name = object({
      family_name      = string
      formatted        = optional(string)
      given_name       = string
      honorific_prefix = optional(string)
      honorific_suffix = optional(string)
      middle_name      = optional(string)
    })
    addresses = optional(object({
      country        = optional(string)
      formatted      = optional(string)
      locality       = optional(string)
      postal_code    = optional(string)
      primary        = optional(bool)
      region         = optional(string)
      street_address = optional(string)
      type           = optional(string)
    }))
    emails = optional(object({
      primary = optional(bool)
      type    = optional(string)
      value   = optional(string)
    }))
    phone_numbers = optional(object({
      primary = optional(bool)
      type    = optional(string)
      value   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.addresses == null || (v.addresses.country == null || (length(v.addresses.country) >= 1 && length(v.addresses.country) <= 1024))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.addresses == null || (v.addresses.formatted == null || (length(v.addresses.formatted) >= 1 && length(v.addresses.formatted) <= 1024))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.addresses == null || (v.addresses.locality == null || (length(v.addresses.locality) >= 1 && length(v.addresses.locality) <= 1024))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.addresses == null || (v.addresses.postal_code == null || (length(v.addresses.postal_code) >= 1 && length(v.addresses.postal_code) <= 1024))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.addresses == null || (v.addresses.street_address == null || (length(v.addresses.street_address) >= 1 && length(v.addresses.street_address) <= 1024))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.locale == null || (length(v.locale) >= 1 && length(v.locale) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.nickname == null || (length(v.nickname) >= 1 && length(v.nickname) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.preferred_language == null || (length(v.preferred_language) >= 1 && length(v.preferred_language) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.profile_url == null || (length(v.profile_url) >= 1 && length(v.profile_url) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.timezone == null || (length(v.timezone) >= 1 && length(v.timezone) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.title == null || (length(v.title) >= 1 && length(v.title) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_users : (
        v.user_type == null || (length(v.user_type) >= 1 && length(v.user_type) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

