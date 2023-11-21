resource "aws_instance" "web1" {
  ami           = "ami-06ce6bb40e50efe77"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.TF_SG.name]
  key_name      = "uploader-key"
  tags = {
    Name = "prometheus-server"
  }
  user_data =filebase64("${path.moodule}/prometheusInstall.sh")

}

resource "aws_instance" "web2" {
  ami           = "ami-06ce6bb40e50efe77"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.TF_SG.name]
  key_name      = "uploader-key"
  tags = {
    Name = "grafana-server"
  }
  user_data = filebase64("${path.moodule}/grafanaInstall.sh")
}


