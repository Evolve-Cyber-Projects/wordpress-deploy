data "kubernetes_ingress_v1" "ingress" {
  metadata {
    name = "wordpress"
    namespace = var.deployment_namespace
  }
}




output "urls" {
  value = data.kubernetes_ingress_v1.ingress.spec[0].rule[0].host
  
  #  data.kubernetes_ingress.ingress[0].spec[0].tls[0].hosts
