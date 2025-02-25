# Wrapup Codes
resource "genesyscloud_outbound_wrapupcodemappings" "wrapupcodemappings" {
  default_set = []
}

resource "genesyscloud_routing_wrapupcode" "Sale" {
  division_id = "*"
  name        = "Sale"
}

resource "genesyscloud_routing_wrapupcode" "Needs_Review" {
  division_id = "*"
  name        = "Needs Review"
}

resource "genesyscloud_routing_wrapupcode" "Postponed" {
  division_id = "*"
  name        = "Postponed"
}

# Skills
resource "genesyscloud_routing_skill" "enrollment_tier_2" {
  name = "enrollment_tier_2"
}

resource "genesyscloud_routing_skill" "escalations" {
  name = "escalations"
}

resource "genesyscloud_routing_skill" "cs_tier_2" {
  name = "cs_tier_2"
}

resource "genesyscloud_routing_skill" "finance" {
  name = "finance"
}

resource "genesyscloud_routing_skill" "enrollment_tier_1" {
  name = "enrollment_tier_1"
}

resource "genesyscloud_routing_skill" "cs_tier_1" {
  name = "cs_tier_1"
}

# Languages
resource "genesyscloud_routing_language" "english" {
  name = "english"
}

resource "genesyscloud_routing_language" "spanish" {
  name = "spanish"
}

# Settings
resource "genesyscloud_routing_settings" "routing_settings" {
  contactcenter {
    remove_skills_from_blind_transfer = false
  }
  reset_agent_on_presence_change = false
  transcription {
    content_search_enabled             = false
    low_latency_transcription_enabled  = false
    pci_dss_redaction_enabled          = true
    pii_redaction_enabled              = true
    transcription                      = "Disabled"
    transcription_confidence_threshold = 40
  }
}

# Utilization
resource "genesyscloud_routing_utilization" "routing_utilization" {
  call {
    include_non_acd  = false
    maximum_capacity = 1
  }
  callback {
    include_non_acd  = false
    maximum_capacity = 1
  }
  chat {
    maximum_capacity = 4
    include_non_acd  = false
  }
  email {
    include_non_acd           = false
    interruptible_media_types = ["call", "callback", "chat"]
    maximum_capacity          = 1
  }
  message {
    include_non_acd  = false
    maximum_capacity = 4
  }
}