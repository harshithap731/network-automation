output "vpc_id" {
  value = aws_vpc.main.id
  description = "The ID of the VPC"
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
  description = "The IDs of the public subnets"
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
  description = "The IDs of the private subnets"
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
  description = "The ID of the Internet Gateway"
}

output "availability_zones_used" {
  value = slice(data.aws_availability_zones.available.names, 0, var.az_count)
  description = "The availability zones used for the subnets"
}

