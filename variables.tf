variable "ami_id" {
  type        = string
  description = "Ami ID for the Ec2 Instance"


}

variable "instance_type" {
  type        = string
  description = "Ec2 Instance type"

}

variable "availability_zone" {
  type        = string
  description = "Availability area"

}

variable "key_name" {
  type        = string
  description = "AWS Key pair to be used to be ssh"

}

variable "name" {
  type        = string
  default     = "EC2 Instance"
  description = "Name tags"

}

variable "ec2_tags" {
  type = map(string)

  description = "Tags to be attached to the Ec2_Instance"

}

variable "subnet_id" {
  type    = string
  default = null

}

variable "sg_name" {
  type    = string
  default = "aws_sg"
  description = "aws_sg"

}

variable "sg_description" {
  type    = string
  default = ""

}

variable "sg_vpc_id" {
  type    = string
  default = null

}

variable "sg_tags" {
  type = map(string)


}

variable "sg_inbound_ports" {
  type = list(object({
    from_port   = number
    to_port     = number
    description = string
    protocol    = string
    cidr_blocks = list(string)
  }))

  description = "SG Group Inbound Rules"
  default = [{
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH"

  }]

}

