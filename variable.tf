# Old Tags
variable "apm-id" {
  description = "APM ID Number (https://elevancehealth.service-now.com/apm?id=apm_home_page_anthem). Example: APM1006369"
  validation {
    condition     = length(var.apm-id) == 10 && substr(var.apm-id, 0, 3) == "APM" || substr(var.apm-id, 0, 3) == "apm"
    error_message = "Value must be a valid APM id and must start with `APM` or `apm`."
  }
  type = string
}

variable "application-name" {
  description = "Based upon application nomenclature in server naming convention policy.Use up to six (6) characters to name your application."
  type        = string
}

variable "app-support-dl" {
  description = "application-dl is now app-support-dl. Pass appropriate value."
  type        = string
}

variable "app-servicenow-group" {
  description = "Application SNOW Group to which auto ticketing incidents or alerts can be assigned to in case of issues with resources."
  type        = string
}

variable "business-division" {
  description = "Based upon BU that owns the resource"
  type        = string
}

variable "company" {
  description = "Based upon company that owns the resource"
  type        = string
}

variable "compliance" {
  description = "Allowed Values : PHI, PCI, PII, PHI-PII, SOX, None."
  validation {
    condition     = contains(["PHI", "PCI", "PII", "PHI-PII", "SOX", "None"], var.compliance)
    error_message = "Allowed Values : PHI, PCI, PII, PHI-PII, SOX, None."
  }
  type = string
}

variable "costcenter" {
  description = "A valid 10-digit costcenter number must be used EXAMPLE: 0123456789"
  validation {
    condition     = length(var.costcenter) == 10
    error_message = "Value must be a valid 10-digit costcenter number."
  }
  type = string
}

variable "environment" {
  description = "DBx,SIT,PERF,PRODX,UAT,UTILx"
  type        = string
}

variable "PatchGroup" {
  description = "PatchGroup tag will be added automatically for every instance that gets spun up with value Default Make sure you add this to all automation templates (CFT or Terraform) This will have only one value ALLOWED VALUES: • Default"
  type        = string
}

variable "PatchWindow" {
  description = "PatchWindow tag will be added automatically for every instance that get spun up with value Default. But you need to update your automation templates (CFT or Terraform) if you would like to control the patching window."
  type        = string
}

variable "workspace" {
  description = "Name of the TFE workspace."
  type        = string
}

# RESERVED ELVH Tags
variable "elvh-apm-id" {
  description = "APM ID Number (https://elevancehealth.service-now.com/apm?id=apm_home_page_anthem). Example: APM1006369"
  type        = string
  default     = null
}

variable "elvh-app-env" {
  description = "App environment depending on  the medal, i.e., if medal is BRZ, set to 'sandbox', if medal is SLVR, set to 'development', if medal is GLD, set to 'test', if medal is PLAT, set to 'prod', if medal is DR, set to 'prod'"
  type        = string
  default     = null
}

variable "elvh-application-name" {
  description = "Based upon application nomenclature in server naming convention policy. Use up to six (6) characters to name your application."
  type        = string
  default     = null
}

variable "elvh-app-support-dl" {
  description = "Application Support Email DL"
  type        = string
  default     = null
}

variable "elvh-app-servicenow-group" {
  description = "Application SNOW Group to which auto ticketing incidents or alerts can be assigned to in case of issues with resources."
  type        = string
  default     = null
}

variable "elvh-business-division" {
  description = "Based upon BU that owns the resource"
  type        = string
  default     = null
}

variable "elvh-ci-owner" {
  description = "IT owner of the application"
  type        = string
  default     = null
}

variable "elvh-company" {
  description = "Based upon company that owns the resource"
  type        = string
  default     = null
}

variable "elvh-costcenter" {
  description = "A valid 10-digit costcenter number must be used EXAMPLE: 0123456789"
  type        = string
  default     = null
}

variable "elvh-infra-env" {
  description = "Medal of AWS Account, i.e, 'brz', 'slvr', 'gld','plat'"
  type        = string
  default     = null
}

variable "elvh-workspace" {
  description = "Name of the TFE workspace."
  type        = string
  default     = null
}

# Additional tags parameter
variable "tags" {
  description = "Any other tags that needs to be attached to the resource"
  type        = map(string)
  default     = {}
}
