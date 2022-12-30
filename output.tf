data "kubernetes_service" "example" {
  metadata {
    name = "wordpress"
    namespace = "wordpress"
  }
}
output "load_balancer_hostname" {
  value = kubernetes_service.example.status.0.load_balancer.0.ingress.0.hostname
}

# # output "ingress_endpoint" {
# #     value = module.wordpress-helm-chart-deploy.status.0.load_balancer.0.ingress.0.hostname #ingress_endpoint
# # } 
# # # value = data.kubernetes_ingress_v1.wordpress.status.0.load_balancer.0.ingress.0.hostname

# data "kubernetes_resource" "example" {
#   api_version = "v1"
#   kind        = "Ingress"

#   metadata {
#     name      = "wordpress"
#     namespace = "wordpress"
#   }
# }

# output "ingress_endpoint" {
#     value = data.kubernetes_resource.example.object.0.hostname
# }
