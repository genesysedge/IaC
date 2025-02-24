resource "genesyscloud_routing_queue" "Customer_Support" {
  canned_response_libraries {
    mode = "All"
  }
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  suppress_in_queue_call_recording = true
  enable_transcription             = false
  name                             = "Customer Support"
  scoring_method                   = "TimestampAndPriority"
  acw_wrapup_prompt                = "MANDATORY_TIMEOUT"
  enable_manual_assignment         = false
  media_settings_email {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
  }
  calling_party_name      = "WGU Academy Coaching."
  skill_evaluation_method = "BEST"
  media_settings_call {
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  division_id             = "${genesyscloud_auth_division.Home.id}"
  enable_audio_monitoring = false
  media_settings_callback {
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  media_settings_message {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
  acw_timeout_ms   = 300000
  auto_answer_only = false
}

resource "genesyscloud_routing_queue" "Enrollment" {
  acw_timeout_ms = 300000
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  auto_answer_only   = false
  calling_party_name = "WGU Academy Coaching."
  canned_response_libraries {
    mode = "All"
  }
  division_id = "${genesyscloud_auth_division.Home.id}"
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  scoring_method           = "TimestampAndPriority"
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  name                     = "Enrollment"
  skill_evaluation_method  = "BEST"
  enable_transcription     = false
  enable_manual_assignment = false
    suppress_in_queue_call_recording = true
  enable_audio_monitoring          = false
  media_settings_callback {
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
  }
  media_settings_message {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
}

resource "genesyscloud_routing_queue" "Finance" {
  enable_audio_monitoring = true
  media_settings_email {
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  enable_manual_assignment = false
  media_settings_call {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  auto_answer_only                 = false
  calling_party_name               = "WGU Academy Student Support."
  division_id                      = "${genesyscloud_auth_division.Home.id}"
  scoring_method                   = "TimestampAndPriority"
  wrapup_codes                     = ["${genesyscloud_routing_wrapupcode.Needs_Review.id}"]
  suppress_in_queue_call_recording = false
  enable_transcription             = true
  name                             = "Finance"
  skill_evaluation_method          = "BEST"
  acw_wrapup_prompt                = "MANDATORY_TIMEOUT"
    media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  media_settings_message {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  acw_timeout_ms = 300000
  media_settings_callback {
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
}

resource "genesyscloud_routing_queue" "Escalations" {
  calling_party_name       = "WGU Academy Coaching."
  enable_audio_monitoring  = false
  enable_manual_assignment = false
  media_settings_callback {
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
  }
  media_settings_message {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
  acw_wrapup_prompt                = "MANDATORY_TIMEOUT"
  scoring_method                   = "TimestampAndPriority"
  suppress_in_queue_call_recording = true
  division_id                      = "${genesyscloud_auth_division.Home.id}"
  enable_transcription             = false
  name                             = "Escalations"
  media_settings_chat {
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  acw_timeout_ms = 300000
  media_settings_call {
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
    skill_evaluation_method = "BEST"
  auto_answer_only        = false
  canned_response_libraries {
    mode = "All"
  }
}

resource "genesyscloud_routing_queue" "Outbound_Agents" {
  media_settings_callback {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
  scoring_method    = "TimestampAndPriority"
  acw_wrapup_prompt = "OPTIONAL"
  name              = "Outbound Agents"
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_chat {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
  media_settings_email {
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  enable_audio_monitoring = false
  division_id             = "${genesyscloud_auth_division.Home.id}"
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
  }
  skill_evaluation_method          = "ALL"
  wrapup_codes                     = ["${genesyscloud_routing_wrapupcode.Sale.id}", "${genesyscloud_routing_wrapupcode.Needs_Review.id}", "${genesyscloud_routing_wrapupcode.Postponed.id}"]
  auto_answer_only                 = true
  enable_manual_assignment         = false
  enable_transcription             = false
  suppress_in_queue_call_recording = true
}