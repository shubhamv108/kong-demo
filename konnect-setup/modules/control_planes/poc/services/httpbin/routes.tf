resource "konnect_gateway_route" "httpbin_route_get_httpbin" {
  methods = ["GET"]
  name    = "Anything"
  paths   = ["/anything"]

  strip_path = false

  control_plane_id = var.control_plane_id
  service = {
    id = konnect_gateway_service.httpbin.id
  }
}
