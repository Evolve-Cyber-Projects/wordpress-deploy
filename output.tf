data "kubernetes_ingress_v1" "ingress" {
  metadata {
    name = "wordpress"
    namespace = var.deployment_namespace
  }
}




output "urls" {
  value = data.kubernetes_ingress_v1.ingress[0].spec[0].tls[0].hosts
  
  # : data.kubernetes_ingress.ingress[0].spec[*].rule[*].host
}
