data "kubernetes_ingress_v1" "wordpress" {
  metadata {
    name      = helm_release.helm_deployment.namespace
    namespace = helm_release.helm_deployment.namespace
  }
}

output "ingress_endpoint" {
    value = data.kubernetes_ingress_v1.wordpress.status.[0].load_balancer.[0].ingress.[0].hostname
}