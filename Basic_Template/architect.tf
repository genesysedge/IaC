# Emergency Groups
resource "genesyscloud_architect_emergencygroup" "voice_main_emergency" {
  enabled     = false
  name        = "voice_main_emergency"
  division_id = "${genesyscloud_auth_division.Home.id}"
}

# Schedule Groups
resource "genesyscloud_architect_schedulegroups" "voice_main" {
  holiday_schedules_id = ["${genesyscloud_architect_schedules.voice_holiday_new_years.id}", "${genesyscloud_architect_schedules.voice_holiday_christmas.id}"]
  name                 = "voice_main"
  open_schedules_id    = ["${genesyscloud_architect_schedules.voice_open_main.id}"]
  time_zone            = "America/Denver"
  closed_schedules_id  = ["${genesyscloud_architect_schedules.voice_closed_main_weekends.id}", "${genesyscloud_architect_schedules.voice_closed_main_evenings.id}", "${genesyscloud_architect_schedules.voice_closed_main_early_morning.id}"]
  division_id          = "${genesyscloud_auth_division.Home.id}"
}


# Schedules
resource "genesyscloud_architect_schedules" "voice_holiday_christmas" {
  end         = "2024-12-26T00:00:00.000000"
  name        = "voice_holiday_christmas"
  rrule       = "FREQ=YEARLY;BYMONTH=12;BYMONTHDAY=25"
  start       = "2024-12-25T00:00:00.000000"
  division_id = "${genesyscloud_auth_division.Home.id}"
}

resource "genesyscloud_architect_schedules" "voice_closed_main_evenings" {
  rrule       = "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR"
  start       = "2024-12-30T17:00:00.000000"
  division_id = "${genesyscloud_auth_division.Home.id}"
  end         = "2024-12-30T23:00:00.000000"
  name        = "voice_closed_main_evenings"
}

resource "genesyscloud_architect_schedules" "voice_closed_main_early_morning" {
  name        = "voice_closed_main_early_morning"
  rrule       = "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR"
  start       = "2024-12-30T00:00:00.000000"
  division_id = "${genesyscloud_auth_division.Home.id}"
  end         = "2024-12-30T09:00:00.000000"
}

resource "genesyscloud_architect_schedules" "voice_main_adhoc" {
  name        = "voice_main_adhoc"
  start       = "2024-12-29T11:00:00.000000"
  division_id = "${genesyscloud_auth_division.Home.id}"
  end         = "2024-12-29T13:00:00.000000"
}

resource "genesyscloud_architect_schedules" "voice_holiday_new_years" {
  start       = "2025-01-01T00:00:00.000000"
  division_id = "${genesyscloud_auth_division.Home.id}"
  end         = "2025-01-02T00:00:00.000000"
  name        = "voice_holiday_new_years"
  rrule       = "FREQ=YEARLY;BYMONTH=1;BYMONTHDAY=1"
}

resource "genesyscloud_architect_schedules" "voice_closed_main_weekends" {
  name        = "voice_closed_main_weekends"
  rrule       = "FREQ=WEEKLY;BYDAY=SA,SU"
  start       = "2024-12-28T00:00:00.000000"
  division_id = "${genesyscloud_auth_division.Home.id}"
  end         = "2024-12-30T00:00:00.000000"
}

resource "genesyscloud_architect_schedules" "voice_open_main" {
  division_id = "${genesyscloud_auth_division.Home.id}"
  end         = "2024-12-30T17:00:00.000000"
  name        = "voice_open_main"
  rrule       = "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR"
  start       = "2024-12-30T09:00:00.000000"
}

# IVR
resource "genesyscloud_architect_ivr" "Main" {
  division_id        = "${genesyscloud_auth_division.Home.id}"
  dnis               = ["+13179831000"]
  name               = "Main"
  open_hours_flow_id = "${genesyscloud_flow.INBOUNDCALL_Main_IVR.id}"
}