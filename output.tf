data "kubernetes_service" "ingress_svc" {
  metadata {
    name = "wordpress"
  }
}

output "instance_ip_addr" {
   value = data.kubernetes_service.ingress_svc.status.0.load_balancer.0.ingress[0].ip
}