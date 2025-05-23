output "module_contol_plance_poc_konnect_gateway_control_plane_poc_id" {
  value       = module.control_plane_poc.konnect_gateway_control_plane_poc_id
  description = "konnect_gateway_control_plane_poc_id"
}

output "module_contol_plance_poc_httpbin_konnect_gateway_service_httpbin_id" {
  value = module.control_plane_poc.httpbin_konnect_gateway_service_httpbin_id
}

output "module_contol_plance_poc_httpbin_konnect_gateway_route_httpbin_route_get_httpbin_id" {
  value = module.control_plane_poc.httpbin_konnect_gateway_route_httpbin_route_get_httpbin_id
}
