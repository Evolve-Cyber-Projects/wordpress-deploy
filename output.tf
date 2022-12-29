output "ingress_endpoint" {
    value = module.wordpress-helm-chart-deploy.values.host
}