variable "aws_region" {
  description = "AWS Region for the Genesys Cloud Instance"
  type        = string
  default     = "US East"
}

variable "oauthclient_id" {
  description = "OauthClient ID we are using to apply the TerraForm configuration"
  type        = string
}

variable "oauthclient_secret" {
  description = "OauthClient Secret we are using to apply the TerraForm configuration"
  type        = string
}

variable "genesyscloud_flow_INBOUNDCALL_main_holiday_filepath" {
  description = "YAML file path for flow configuration. Note: Changing the flow name will result in the creation of a new flow with a new GUID, while the original flow will persist in your org."
}

variable "genesyscloud_flow_INBOUNDCALL_main_emergency_filepath" {
  description = "YAML file path for flow configuration. Note: Changing the flow name will result in the creation of a new flow with a new GUID, while the original flow will persist in your org."
}

variable "genesyscloud_flow_INBOUNDCALL_main_closed_filepath" {
  description = "YAML file path for flow configuration. Note: Changing the flow name will result in the creation of a new flow with a new GUID, while the original flow will persist in your org."
}

variable "genesyscloud_flow_INBOUNDCALL_Main_IVR_filepath" {
  description = "YAML file path for flow configuration. Note: Changing the flow name will result in the creation of a new flow with a new GUID, while the original flow will persist in your org."
}

variable "genesyscloud_flow_INBOUNDCALL_main_logic_filepath" {
  description = "YAML file path for flow configuration. Note: Changing the flow name will result in the creation of a new flow with a new GUID, while the original flow will persist in your org."
}
