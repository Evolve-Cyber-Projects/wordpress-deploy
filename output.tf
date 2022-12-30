output "ingress_endpoint" {
    value = module.wordpress-helm-chart-deploy.status.0.load_balancer.0.ingress.0.hostname #ingress_endpoint
} 
# value = data.kubernetes_ingress_v1.wordpress.status.0.load_balancer.0.ingress.0.hostname