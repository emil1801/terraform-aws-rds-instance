module "wordpress_db" {
    source = "../"
    region              = "us-east-2"
    identifier          = "dbname"
    allocated_storage   = 20
    storage_type        = "gp2"
    engine              = "mysql"
    engine_version      = "5.7"
    instance_class      = "db.t2.micro"
    name                = "mydb"
    username            = "foo"
    publicly_accessible = true
    subnet_ids = [
    "subnet-0bae0d19977bc5692", 
    "subnet-00ac1efdfc746cd7e", 
    "subnet-0510c7116e9d02786"
    ]
    allowed_hosts = [
        "50.194.68.230/32",
        "127.0.0.1/32"
    ]
}

output "region" {
	value = module.wordpress_db.region
}
output "subnet_list" {
	value = module.wordpress_db.subnet_list
}
output "allowed_hosts" {
	value = module.wordpress_db.allowed_hosts
}
output "wordpress_db_NAME" {
	value = module.wordpress_db.DB_NAME
}