output "ingress_endpoint" {
    value = module.wordpress-helm-chart-deploy.metadata.values.host
}