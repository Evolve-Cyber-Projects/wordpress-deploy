output "ingress_endpoint" {
    value = module.wordpress-helm-chart-deploy.ingress.rules.host
}