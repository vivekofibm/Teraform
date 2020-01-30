provider "aws" {
  access_key = "AKIA57EZYXTV5"     								#\\Here u have to give ur "access_key" which u have to find it in aws
  secret_key = "qtHpzKqWLHAYMZ"					     	#\\Here u have to give ur "secret_key" which u have to find it in aws
  region     = "ap-south-1"     								#\\mention the region where u want to launch your instance
 
}

}

resource "aws_security_group""group1"{
        name ="security_grp"					#\\ give any name to security group
        description="Allow all traffic"			#\\ define the description
        vpc_id = "vpc-31555a59"					#\\ give the vpc id [or] make it as default

        ingress {
                        from_port=0000			     #\\ define the port range from	
                        to_port=000					 #\\ define the port range To
                        protocol="-1"				 #\\ mention the protocol which u want to allow (if u want All Traffic than give "-1")
                        cidr_blocks=["0.0.0.0/0"]	 #\\ mention the CIDR block

                }



}
