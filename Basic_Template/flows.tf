resource "genesyscloud_flow" "INBOUNDCALL_main_holiday" {
  file_content_hash = "${filesha256(var.genesyscloud_flow_INBOUNDCALL_main_holiday_filepath)}"
  filepath          = "${var.genesyscloud_flow_INBOUNDCALL_main_holiday_filepath}"
  name              = "main_holiday"
  type              = "INBOUNDCALL"
  depends_on = [ genesyscloud_routing_queue.Customer_Support, genesyscloud_routing_queue.Enrollment, genesyscloud_routing_queue.Escalations, genesyscloud_routing_queue.Finance, genesyscloud_routing_queue.Outbound_Agents ]
}

resource "genesyscloud_flow" "INBOUNDCALL_main_emergency" {
  file_content_hash = "${filesha256(var.genesyscloud_flow_INBOUNDCALL_main_emergency_filepath)}"
  filepath          = "${var.genesyscloud_flow_INBOUNDCALL_main_emergency_filepath}"
  name              = "main_emergency"
  type              = "INBOUNDCALL"
  depends_on = [ genesyscloud_routing_queue.Customer_Support, genesyscloud_routing_queue.Enrollment, genesyscloud_routing_queue.Escalations, genesyscloud_routing_queue.Finance, genesyscloud_routing_queue.Outbound_Agents ]
}

resource "genesyscloud_flow" "INBOUNDCALL_main_closed" {
  file_content_hash = "${filesha256(var.genesyscloud_flow_INBOUNDCALL_main_closed_filepath)}"
  filepath          = "${var.genesyscloud_flow_INBOUNDCALL_main_closed_filepath}"
  name              = "main_closed"
  type              = "INBOUNDCALL"
  depends_on = [ genesyscloud_routing_queue.Customer_Support, genesyscloud_routing_queue.Enrollment, genesyscloud_routing_queue.Escalations, genesyscloud_routing_queue.Finance, genesyscloud_routing_queue.Outbound_Agents ]
}

resource "genesyscloud_flow" "INBOUNDCALL_Main_IVR" {
  name              = "Main IVR"
  type              = "INBOUNDCALL"
  file_content_hash = "${filesha256(var.genesyscloud_flow_INBOUNDCALL_Main_IVR_filepath)}"
  filepath          = "${var.genesyscloud_flow_INBOUNDCALL_Main_IVR_filepath}"
  depends_on = [ genesyscloud_routing_queue.Customer_Support, genesyscloud_routing_queue.Enrollment, genesyscloud_routing_queue.Escalations, genesyscloud_routing_queue.Finance, genesyscloud_routing_queue.Outbound_Agents ]
}

resource "genesyscloud_flow" "INBOUNDCALL_main_logic" {
  name              = "main logic"
  type              = "INBOUNDCALL"
  file_content_hash = "${filesha256(var.genesyscloud_flow_INBOUNDCALL_main_logic_filepath)}"
  filepath          = "${var.genesyscloud_flow_INBOUNDCALL_main_logic_filepath}"
  depends_on = [ genesyscloud_routing_queue.Customer_Support, genesyscloud_routing_queue.Enrollment, genesyscloud_routing_queue.Escalations, genesyscloud_routing_queue.Finance, genesyscloud_routing_queue.Outbound_Agents, genesyscloud_flow.INBOUNDCALL_Main_IVR ]
}

