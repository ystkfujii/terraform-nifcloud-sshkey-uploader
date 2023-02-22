output "public_key" {
  description = "The generated public key"
  value       = local.public_key
}

output "private_key" {
  description = "The generated private key"
  value       = local.private_key
  sensitive   = true
}
