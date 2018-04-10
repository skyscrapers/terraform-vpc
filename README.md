# deprecated, use https://github.com/skyscrapers/terraform-network/tree/master/vpc
---
# terraform-vpc
Create a Amazon AWS VPC with subnets and an internet gateway with route tables.

## Example

```
module "vpc" {
  source = "github.com/skyscrapers/terraform-vpc"
  cidr_block = "10.10.0.0/16"
  environment = "production"
  subnets_cidr_block = "10.10.0.0/24,10.10.1.0/24,10.10.2.0/24,10.10.3.0/24"
}
```
