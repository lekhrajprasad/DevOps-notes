#Creating My S3 Bucket 
module "storage" {

	source = "./s3"
	mys3bucket_name = "mys3bucket"
}

module "vpc" {

	source = "./vpc"
	myvpc_name = "dvs-vpc"
	myvpc_cidr = "192.165.0.0/16"    
	myigw_name = "dvs-igw"
	myroute_name = "dvs-route"
	myroute_cidr = "0.0.0.0/0"
	mysub_cicdr = "192.165.10.0/24"
	mypubsubnet_name = "dvs-pub-subnet"
	mysecgroup_name = "dvs-sg"
	
}

module "compute" {
	source = "./ec2"
	ami_id = "ami-0a887e401f7654935"
	key_name = "rajukey_nvirginia"	
	server_name= "dvs-server"
	mysecgroup_id = "${module.vpc.mysecgroupid}"
	mysubnet_id = "${module.vpc.mysubnet_id}"
	
}
