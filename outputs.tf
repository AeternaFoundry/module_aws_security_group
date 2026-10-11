output "security_groups_id" {
  description = "Map of id values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_groups_arn" {
  description = "Map of arn values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "security_groups_description" {
  description = "Map of description values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "security_groups_egress" {
  description = "Map of egress values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.egress if v.egress != null && length(v.egress) > 0 }
}
output "security_groups_ingress" {
  description = "Map of ingress values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.ingress if v.ingress != null && length(v.ingress) > 0 }
}
output "security_groups_name" {
  description = "Map of name values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "security_groups_name_prefix" {
  description = "Map of name_prefix values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "security_groups_owner_id" {
  description = "Map of owner_id values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "security_groups_region" {
  description = "Map of region values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "security_groups_revoke_rules_on_delete" {
  description = "Map of revoke_rules_on_delete values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.revoke_rules_on_delete if v.revoke_rules_on_delete != null }
}
output "security_groups_tags" {
  description = "Map of tags values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "security_groups_tags_all" {
  description = "Map of tags_all values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "security_groups_vpc_id" {
  description = "Map of vpc_id values across all security_groups, keyed the same as var.security_groups"
  value       = { for k, v in aws_security_group.security_groups : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}

