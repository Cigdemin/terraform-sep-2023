output "main_instance_public_ip" {
  description = "This prints public up of the main instance"
  value = aws_instance.main[*].public_ip
}
