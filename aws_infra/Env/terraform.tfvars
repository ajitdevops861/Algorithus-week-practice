vpcs = {
  "main" = {
    cidr_block           = "10.0.0.0/16"
    enable_dns_hostnames = true
    name                 = "sandbox-vpc"
    igw_name             = "sandbox-igw" # <--- सीधे यहीं नाम दे दिया, कोई झंझट नहीं!
  }
}


# 2. Subnets का डेटा (for_each और each.value.name के साथ)
subnets = {
  "public" = {
    cidr_block        = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip     = true
    name              = "my-public-subnet"
  },
  "private" = {
    cidr_block        = "10.0.10.0/24"
    availability_zone = "us-east-1a"
    map_public_ip     = false
    name              = "my-private-subnet"
  }
}