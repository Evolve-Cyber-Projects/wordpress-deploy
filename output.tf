data "kubernetes_ingress" "example" {
  metadata {
    name = "wordpress"
  }
}
output "instance_ip_addr" {
     value = data.kubernetes_ingress.example.0.load_balancer.0.ingress.0.hostname
   #value = data.kubernetes_service.ingress_svc.status.0.load_balancer.0.ingress[0].ip
}