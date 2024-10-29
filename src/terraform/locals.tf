
locals {
  owners               = var.business_divsion
  environment          = var.environment
  resource_name_prefix = "${var.application_name}-${var.business_divsion}-${var.environment}"

  block_name   = lower(replace("${var.application_name}${random_integer.main.result}", "-", ""))
  storage_name = "st${local.block_name}"

  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
}