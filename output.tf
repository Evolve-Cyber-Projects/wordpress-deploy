# data "kubernetes_ingress_v1" "wordpress" {
#   metadata {
#     name      = "wordpress"
#     namespace = helm_release.wordpress.namespace
#   }
# }