variable "environment" {
  description = "indicates name of our environment. possible values dev,cit,sit,uat,pprod,prod,n"
  default     = "dev"
}
variable "cost_centre" {
  description = "A part of an organization to which costs may be charged.e.g. finance/it/hr/wholesale/retail/investment etc..."
  default     = "finance"
}
variable "vpc_cidr_block" {
  description = "vpc cidr block"
  default     = "192.168.0.0/16"
}
variable "vpc_instance_tenancy" {
  default     = "default"
  description = "possible values default or dedicated"
}
variable "assign_ipv6_cidr_block" {
  default = "false"
}
variable "region_id" {
  default = "useast1"
}
variable "region" {
  description = "region in which resource is created."
  default     = "us-east-1"
}
variable "version_id" {
  description = "version of this component.everytime when we are updating this component we need to increment it."
  default     = "1"
}
variable "build_date" {
  description = "date on which this component built/modified. format ddmmyyyy e.g. 27122017"
  default     = "21012023"
}
variable "vpc_seq_id" {
  default = "001"
}
variable "public_subnet_cidr_list" {
  description = "all public facing resources e.g. ALB will reside in this subnet"
  type        = list(any)
  default     = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}
variable "private_app_subnet_list" {
  description = "all backend micro services ECS/K8s etc will receive request from this."
  type        = list(any)
  default     = ["192.168.4.0/24", "192.168.5.0/24", "192.168.6.0/24"]
}

variable "private_db_subnet_list" {
  description = "all noSQL, RDS etc will reside here"
  type        = list(any)
  default     = ["192.168.7.0/24", "192.168.8.0/24", "192.168.9.0/24"]
}
variable "az_list" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "seq_id" {
  default = "1"
}
variable "tag_for_vpc" {
  type    = map(any)
  default = {}
}
variable "tag_for_public_subnet" {
  type    = map(any)
  default = {}
}
variable "tag_for_privApp_subnet" {
  type    = map(any)
  default = {}
}
variable "tag_for_privDb_subnet" {
  type    = map(any)
  default = {}
}
variable "tag_for_internent_gateway" {
  type    = map(any)
  default = {}
}
variable "tag_for_nat_gateway" {
  type    = map(any)
  default = {}
}
variable "tag_for_vpn_gateway" {
  type    = map(any)
  default = {}
}
variable "common_tags" {
  type    = map(any)
  default = {}
}
variable "tag_for_route_table" {
  type    = map(any)
  default = {}
}


