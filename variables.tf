variable "security_groups" {
  description = <<EOT
Map of security_groups, attributes below
Optional:
    - description
    - name
    - name_prefix
    - region
    - revoke_rules_on_delete
    - tags
    - tags_all
    - vpc_id
    - egress (block):
        - cidr_blocks (optional)
        - description (optional)
        - from_port (optional)
        - ipv6_cidr_blocks (optional)
        - prefix_list_ids (optional)
        - protocol (optional)
        - security_groups (optional)
        - self (optional)
        - to_port (optional)
    - ingress (block):
        - cidr_blocks (optional)
        - description (optional)
        - from_port (optional)
        - ipv6_cidr_blocks (optional)
        - prefix_list_ids (optional)
        - protocol (optional)
        - security_groups (optional)
        - self (optional)
        - to_port (optional)
EOT

  type = map(object({
    description            = optional(string)
    name                   = optional(string)
    name_prefix            = optional(string)
    region                 = optional(string)
    revoke_rules_on_delete = optional(bool)
    tags                   = optional(map(string))
    tags_all               = optional(map(string))
    vpc_id                 = optional(string)
    egress = optional(list(object({
      cidr_blocks      = optional(list(string))
      description      = optional(string)
      from_port        = optional(number)
      ipv6_cidr_blocks = optional(list(string))
      prefix_list_ids  = optional(list(string))
      protocol         = optional(string)
      security_groups  = optional(set(string))
      self             = optional(bool)
      to_port          = optional(number)
    })))
    ingress = optional(list(object({
      cidr_blocks      = optional(list(string))
      description      = optional(string)
      from_port        = optional(number)
      ipv6_cidr_blocks = optional(list(string))
      prefix_list_ids  = optional(list(string))
      protocol         = optional(string)
      security_groups  = optional(set(string))
      self             = optional(bool)
      to_port          = optional(number)
    })))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

