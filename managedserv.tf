
resource "null_resource" "mngd_srvc" {
    depends_on = [
      azurerm_linux_virtual_machine.web_linuxvm
    ]
    count = var.stopvm ? 1 : 0
    provisioner "local-exec" {
        command = "az vm stop --resource-group ${var.managerg} --name ${var.managevm}"
         interpreter = ["PowerShell", "-Command"]
}
}

resource "null_resource" "mngd_srvc1" {
    depends_on = [
      azurerm_linux_virtual_machine.web_linuxvm
    ]
    count = var.startvm ? 1 : 0
    provisioner "local-exec" {
        command = "az vm start -g ${var.managerg} -n ${var.managevm}"
         interpreter = ["PowerShell", "-Command"]
}
}
  