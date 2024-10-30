locals {
  mandatory_tags = {
    apm-id               = var.apm-id
    application-name     = var.application-name
    app-support-dl       = var.app-support-dl
    app-servicenow-group = var.app-servicenow-group
    business-division    = var.business-division
    compliance           = var.compliance
    company              = var.company
    costcenter           = var.costcenter
    environment          = var.environment
    PatchGroup           = var.PatchGroup
    PatchWindow          = var.PatchWindow
    workspace            = var.workspace

    elvh-apm-id               = var.elvh-apm-id
    elvh-app-env              = var.elvh-app-env
    elvh-application-name     = var.elvh-application-name
    elvh-app-support-dl       = var.elvh-app-support-dl
    elvh-app-servicenow-group = var.elvh-app-servicenow-group
    elvh-business-division    = var.elvh-business-division
    elvh-ci-owner             = var.elvh-ci-owner
    elvh-company              = var.elvh-company
    elvh-costcenter           = var.elvh-costcenter
    elvh-infra-env            = var.elvh-infra-env    
    elvh-workspace            = var.elvh-workspace

  }
  tags = merge(local.mandatory_tags, var.tags)
}
