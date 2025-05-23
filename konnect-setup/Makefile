# Makefile for managing Terraform environments

ENV ?= dev
TFVARS_FILE = $(ENV).tfvars

.PHONY: init plan apply destroy workspace

# Initialize the Terraform backend and provider plugins
init:
	@echo "🔧 Initializing Terraform for $(ENV)..."
	terraform init

# Create or select the workspace for the given environment
workspace:
	@echo "🔁 Switching to workspace: $(ENV)"
	@if ! terraform workspace list | grep -q "^$(ENV)$$"; then \
		terraform workspace new $(ENV); \
	else \
		terraform workspace select $(ENV); \
	fi

# Preview the Terraform changes
plan: workspace
	@echo "📋 Planning Terraform changes for $(ENV)..."
	terraform plan -var-file="$(TFVARS_FILE)" -var="region=in"

# Apply the Terraform configuration
apply: workspace
	@echo "🚀 Applying Terraform configuration for $(ENV)..."
	terraform apply -var-file="$(TFVARS_FILE)" -var="region=in"

# Destroy the environment
destroy: workspace
	@echo "🔥 Destroying Terraform resources for $(ENV)..."
	terraform destroy -var-file="$(TFVARS_FILE)" -var="region=in"

# Show current workspace
current:
	@terraform workspace show

# Clean up .terraform directory
clean:
	@rm -rf .terraform .terraform.lock.hcl
