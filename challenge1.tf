provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "TerraformVPC"{
    cidr_block = "192.168.0.0/16"
    tags = {
        Name = "MynewCustomVPC"
    }
    
}

output "vpcid"{
    value = aws_vpc.TerraformVPC.id
}