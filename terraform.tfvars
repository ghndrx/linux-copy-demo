credentials_file = "credentials.json"
project_id       = "linux-copy-demo"
region           = "us-central1"
zone = ["us-central1-a", "us-central1-b", "us-central1-c"]
image_name       = "debian-cloud/debian-11"
instance_type    = "n1-standard-1"
network_name     = "my-vpc"

subnets_cidr_list= ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24","10.0.4.0/24"]