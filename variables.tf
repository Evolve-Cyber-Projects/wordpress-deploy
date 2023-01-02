

variable "deployment_namespace" {
  type        = string
  default     = "wordpress"
  description = "- (Optional) Namespace where to deploy resources to."
}



# variable "values_yaml" {
#   type        = string
#   description = "- (Required) Values.yaml file."
# }