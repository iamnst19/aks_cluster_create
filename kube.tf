resource "null_resource" "kube_config_import" {
  provisioner "local-exec" {
    command = "az aks get-credentials --resource-group ${azurerm_kubernetes_cluster.k8s.resourcename} --name ${azurerm_kubernetes_cluster.k8s.clustername}"
  }
   

  depends_on = [
      azurerm_kubernetes_cluster.k8,
  ]
}
