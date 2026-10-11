resource "aws_security_group" "security_groups" {
  for_each = var.security_groups

  description            = each.value.description
  name                   = each.value.name
  name_prefix            = each.value.name_prefix
  region                 = each.value.region
  revoke_rules_on_delete = each.value.revoke_rules_on_delete
  tags                   = each.value.tags
  tags_all               = each.value.tags_all
  vpc_id                 = each.value.vpc_id

  dynamic "egress" {
    for_each = each.value.egress != null ? each.value.egress : []
    content {
      cidr_blocks      = egress.value.cidr_blocks
      description      = egress.value.description
      from_port        = egress.value.from_port
      ipv6_cidr_blocks = egress.value.ipv6_cidr_blocks
      prefix_list_ids  = egress.value.prefix_list_ids
      protocol         = egress.value.protocol
      security_groups  = egress.value.security_groups
      self             = egress.value.self
      to_port          = egress.value.to_port
    }
  }

  dynamic "ingress" {
    for_each = each.value.ingress != null ? each.value.ingress : []
    content {
      cidr_blocks      = ingress.value.cidr_blocks
      description      = ingress.value.description
      from_port        = ingress.value.from_port
      ipv6_cidr_blocks = ingress.value.ipv6_cidr_blocks
      prefix_list_ids  = ingress.value.prefix_list_ids
      protocol         = ingress.value.protocol
      security_groups  = ingress.value.security_groups
      self             = ingress.value.self
      to_port          = ingress.value.to_port
    }
  }
}

