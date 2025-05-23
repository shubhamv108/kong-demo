resource "konnect_gateway_control_plane" "poc" {
  name         = var.control_plane_name
  description  = "This is a poc control plane"
  cluster_type = "CLUSTER_TYPE_CONTROL_PLANE"
  auth_type    = "pinned_client_certs"

  proxy_urls = [
    {
      host     = "example.com",
      port     = 443,
      protocol = "https"
    }
  ]
}
