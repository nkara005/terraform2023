resource "aws_lightsail_instance" "custom" {
  name              = "custom"  #change name to preference
  availability_zone = "us-east-1b" #change availability zone as preffered
  blueprint_id      = "amazon_linux_2" #change blueprint_id as preffered
  bundle_id         = "nano_1_0" #change bundle_id as preffered
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This server was created using Terraform </h1>' | sudo tee /var/www/html/index.html"
}