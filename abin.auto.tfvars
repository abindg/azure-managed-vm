client = "dsb"
environment = "dev"
resourcegroupname = "myrsg"
resourcegrouplocation = "eastus"
vnetname = "myvnet"
vnetaddress = ["10.0.0.0/16"]
webSubnetname = "myweb"
websubnetaddress = ["10.0.1.0/24"]
dbsubnetname = "mydb"
dbsubnetaddress = ["10.0.2.0/24"]
webnsg = "web-nsg1"
dbnsg = "db-nsg1"
hostname = "web-vm"  
size = "Standard_B2s"
user = "adminuser"
password = "root@123" 
sourceimage = {
    publisher = "Redhat"
    offer     = "RHEL"
    sku       = "7.5"
    version   = "latest"
    }
pubipname = "web-pub" 
vnicname = "web-lin-nic1" 
privateip = "10.0.1.8" 
stopvm = false
managevm = "dsb-dev-web-vm"
managerg = "dsb-dev-myrsg-rkrgoc"
startvm = true
