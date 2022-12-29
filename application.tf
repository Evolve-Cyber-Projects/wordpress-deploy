module "mysql-helm-chart-deploy" {
    source = "./modules/app-helm"
    deployment_name = "mysql"
    deployment_namespace = "wordpress"
    deployment_path = "./k8s/helm-charts/mysql-chart"
      values = [
    "${file("values.yaml")}"
  ]
#     values_yaml = "${file("/k8s/helm-charts/mysql-chart/values.yaml")}"
}

module "wordpress-helm-chart-deploy" {
    source = "./modules/app-helm"
    deployment_name = "wordpress"
    deployment_namespace = "wordpress"
    deployment_path = "./k8s/helm-charts/wordpress-chart"
      values = [
    "${file("values.yaml")}"
  ]
    values_yaml = "${file("/k8s/helm-charts/mysql-chart/values.yaml")}"
    #values_yaml = <<EOF

    #ingress:
     # hosts:
      # - host: "${var.app_name}-${var.environment}.${var.google_domain_name}"
       #  paths:
        #  - path: /
         #   pathType: ImplementationSpecific
# EOF
}