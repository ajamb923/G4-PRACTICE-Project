variable vpc_cidr {
    description = "What is the CIDR for your VPC?"
    default = "23.4.0.0/16"
}

variable vpc_name {
    description = "Name of VPC"
}

variable ami {
    description = "Which AMI will you like to use?"
}

variable instance_type {
    description = "What type of instance would you like to use? t2.micro = 0, t2.medium = 1, t2.nano = 2"
}

variable "instance_name" {
    description = "What is then name of the instance?"
}   

variable "subnet_cidr" {
    description = "Cidrs for subnet public"
}