provider "aws" {
  access_key = "AKIA57VVTMAXUEZYXTV5"
  secret_key = "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"
  region     = "ap-south-1"
}

resource "aws_security_group""efs-general"{
        name ="Second_security_grp"
        description="Allow all traffic"
		
		ingress	{
			from_port=All
			to_port=All
			protocol="All"
		}
		


}

resource "aws_instance" "example" {
  ami           = "ami-01e074f40dfb9999d"
  instance_type = "t2.micro"
  security_groups = "Second_security_grp"
  key_name = "vivekkumar"


}
