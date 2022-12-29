data "kubernetes_ingress" "example" {
  metadata {
    name = "wordpress"
  }
}

output "instance_ip_addr" {
  value = data.kubernetes_ingress.example.spec.rule.host               #status.0.load_balancer.0.ingress[0].ip
}