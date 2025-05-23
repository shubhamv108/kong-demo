resource "konnect_gateway_service" "httpbin" {
  name             = "HTTPBin"
  protocol         = "https"
  host             = "httpbin.konghq.com"
  port             = 443
  path             = "/"
  control_plane_id = var.control_plane_id
}
