variable "aws_region" {
       description = "The AWS region to create things in." 
       default     = "us-east-1" 
}

variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "NEWKPDEVOPS" 
}

variable "instance_type" { 
    description = "instance type for ec2" 
    default     =  "t2.micro" 
}

variable "security_group" { 
    description = "Name of security group" 
    default     = "jenkins-sgroup-dec-2021" 
}

variable "tag_name" { 
    description = "Tag Name of for Ec2 instance" 
    default     = "my-ec2-instance" 
} 
variable "ami_id" { 
    description = "AMI for Ubuntu Ec2 instance" 
    default     = "ami-0b0af3577fe5e3532" 
}

variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}
