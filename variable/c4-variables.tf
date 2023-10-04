variable "aws_region" {
  description = "Name of the region"
  type        = string
  default     = "ap-south-1"

}


variable "aws_ami_id" {
  description = "AmI id for the linux"
  type        = string
  default     = "ami-0c42696027a8ede58"

}

variable "aws_instance_count" {
  description = "Number of instance required"
  type        = number
  default     = 2
}