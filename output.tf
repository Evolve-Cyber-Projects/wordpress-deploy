data "kubernetes_ingress" "example" {
  metadata {
    name = "wordpress"
  }
}

output "instance_ip_addr" {
  value = data.kubernetes_ingress.example.spec.0.rule.0.host               #status.0.load_balancer.0.ingress[0].ip
}