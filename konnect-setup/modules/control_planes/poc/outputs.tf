output "konnect_gateway_control_plane_poc_id" {
  value       = konnect_gateway_control_plane.poc.id
  description = "konnect_gateway_control_plane_poc_id"
}

output "httpbin_konnect_gateway_service_httpbin_id" {
  value = module.httpbin.konnect_gateway_service_httpbin_id
}

output "httpbin_konnect_gateway_route_httpbin_route_get_httpbin_id" {
  value = module.httpbin.konnect_gateway_route_httpbin_route_get_httpbin_id
}
