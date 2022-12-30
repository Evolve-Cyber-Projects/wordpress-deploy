data "kubernetes_ingress_v1" "argocd" {
  metadata {
    name      = "argocd-server"
    namespace = module.wordpress-helm-chart-deploy.namespace
  }
}