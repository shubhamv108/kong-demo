variable "konnect_pat" {
  description = "Kong Konnect Personal Access Token"
  type        = string
  sensitive   = true
}

variable "control_plane_name" {
  description = "Name of control plane"
  type        = string
}

variable "region" {
  description = "Name of control plane"
  type        = string
}
