provider "aws" {
  access_key = "ACCESS KEY"     						#\\Here u have to give ur "access_key" which u have to find it in aws
  secret_key = "SECRET KEY"     	#\\Here u have to give ur "secret_key" which u have to find it in aws
  region     = "ap-south-1"     								#\\mention the region where u want to launch your instance
 
}
=================================================================================================
#creating Security group in aws 
=================================================================================================

resource "aws_security_group""group1"{
        name ="fiv_security_grp"
        description="Allow all traffic"
        vpc_id = "vpc-31555a59"

        ingress {
                    from_port=0000
                    to_port=000
                    protocol="-1"        						#\\Here "-1"  is for all traffic if u need specific one then give the specific name
                    cidr_blocks=["0.0.0.0/0"]

                }

===================================================================================================
#creating aws instance
===================================================================================================

resource "aws_instance" "terraform1" {
  ami           = "ami-01e074f40dfb9999d"						#\\ Give the ami id(image id [or] os id )(this image id is free tier)
  instance_type = "t2.micro"									#\\ Give the type of instace u want(this one is free tier)
  security_groups = "Second_security_grp"						#\\ Give the Security group name [or] u can give it as default
  key_name = "vivekkumar"										#\\ Give the key_name	


}

