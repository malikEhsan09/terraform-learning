# 1.0 File without the variables.tf file

//provider
# provider "aws" {
#     profile = "default"
#     region  = "us-east-1"
# }
# # resources block
# resource "aws_instance" "app_server" {
#     # ami           = "ami-0c55b159cbfafe1f0"
#     ami  = "ami-0a2601fa32a0e773d"
#     instance_type = "t3.micro"

#     tags = {
#         # Name = "MyTerraformInstance"  
#         Name = "MyNewTerraformInstance"  //re-apply to check changes apply
#     }
# }



#2.0  Load the variables from variables.tf file
# provider
provider "aws" {
    profile = "default"
    region  = "us-east-1"
}

# resources block
resource "aws_instance" "app_server" {
    ami           = "ami-0a2601fa32a0e773d"
    instance_type = var.ec2_instance_type   //load the type

    tags = {
        Name = var.instance_name     //load the name
    }
  
}