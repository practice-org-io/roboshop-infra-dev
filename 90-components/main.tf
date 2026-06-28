module "component" {
    for_each = var.components
    source = "git::https://https://github.com/practice-org-io/terraform-roboshop-component.git.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}