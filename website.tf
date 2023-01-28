#doing ssh and configuring the instance
resource "null_resource" "configure" {
depends_on = [ aws_volume_attachment.ec2Instance_EbsVolume_attach ]
provisioner "remote-exec" {
connection {
type        = "ssh"
user        = "ec2-user"
private_key = tls_private_key.key1.private_key_pem
host        = aws_instance.ec2Instance.public_ip
timeout     = "4m"
}
inline = [
"sudo yum install httpd php git -y",
"sudo mkfs.ext4 /dev/xvdd1",
"sudo mount /dev/xvdd1 /var/www/html",
"sudo rm -rf /var/www/html/*",
"sudo git clone https://github.com/Avi-504/terraform-aws-images.git /var/www/html/"
]
}
}