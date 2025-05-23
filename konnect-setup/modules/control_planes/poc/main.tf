module "httpbin" {
  source       = "./services/httpbin"
  control_plane_id = konnect_gateway_control_plane.poc.id
}
