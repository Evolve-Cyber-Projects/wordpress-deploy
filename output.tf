data "kubernetes_ingress_v1" "ingress" {
  metadata {
    name = "wordpress"
    namespace = var.deployment_namespace
  }
}




output "urls" {
  value = kubernetes_ingress_v1.ingress[0].spec[*].rule[*].host : kubernetes_ingress.ingress[0].spec[*].rule[*].host
}
