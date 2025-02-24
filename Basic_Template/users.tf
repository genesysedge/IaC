resource "genesyscloud_user" "john_doe" {
  acd_auto_answer = false
  routing_utilization {
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
  }
  state       = "active"
  email       = "john.doe@example.com"
  division_id = "${genesyscloud_auth_division.Home.id}"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "12345"
    employee_type = "Full-time"
    official_name = "Johnathan Doe"
  }
  name = "John Doe"
  addresses {
    other_emails {
      address = "john.doe@gmail.com"
      type    = "HOME"
    }
  }
}

resource "genesyscloud_user" "mary_smith" {
  addresses {
    other_emails {
      address = "mary.smith@gmail.com"
      type    = "HOME"
    }
  }
  division_id = "${genesyscloud_auth_division.Home.id}"
  routing_utilization {
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
  }
  acd_auto_answer = false
  state           = "active"
  email           = "mary.smith@example.com"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "10002"
    employee_type = "Full-time"
    official_name = "Mary Smith"
  }
  name = "Mary Smith"
}

resource "genesyscloud_user" "james_brown" {
  email = "james.brown@example.com"
  employer_info {
    official_name = "James Brown"
    date_hire     = "2021-03-18"
    employee_id   = "10004"
    employee_type = "Full-time"
  }
  routing_utilization {
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
  }
  addresses {
    other_emails {
      address = "james.brown@gmail.com"
      type    = "HOME"
    }
  }
  state           = "active"
  name            = "James Brown"
  division_id     = "${genesyscloud_auth_division.Home.id}"
  acd_auto_answer = false
}

resource "genesyscloud_user" "emily_jones" {
  routing_utilization {
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
  }
  state       = "active"
  email       = "emily.jones@example.com"
  division_id = "${genesyscloud_auth_division.Home.id}"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "10006"
    employee_type = "Full-time"
    official_name = "Emily Jones"
  }
  acd_auto_answer = false
  addresses {
    other_emails {
      address = "emily.jones@gmail.com"
      type    = "HOME"
    }
  }
  name = "Emily Jones"
}

resource "genesyscloud_user" "david_wilson" {
  routing_utilization {
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
  }
  state       = "active"
  email       = "david.wilson@example.com"
  division_id = "${genesyscloud_auth_division.Home.id}"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "10007"
    employee_type = "Full-time"
    official_name = "David Wilson"
  }
  acd_auto_answer = false
  addresses {
    other_emails {
      address = "david.wilson@gmail.com"
      type    = "HOME"
    }
  }
  name = "David Wilson"
}

resource "genesyscloud_user" "lisa_martin" {
  routing_utilization {
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
  }
  state       = "active"
  email       = "lisa.martin@example.com"
  division_id = "${genesyscloud_auth_division.Home.id}"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "10008"
    employee_type = "Full-time"
    official_name = "Lisa Martin"
  }
  acd_auto_answer = false
  addresses {
    other_emails {
      address = "lisa.martin@gmail.com"
      type    = "HOME"
    }
  }
  name = "Lisa Martin"
}

resource "genesyscloud_user" "michael_lee" {
  routing_utilization {
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
  }
  state       = "active"
  email       = "michael.lee@example.com"
  division_id = "${genesyscloud_auth_division.Home.id}"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "10009"
    employee_type = "Full-time"
    official_name = "Michael Lee"
  }
  acd_auto_answer = false
  addresses {
    other_emails {
      address = "michael.lee@gmail.com"
      type    = "HOME"
    }
  }
  name = "Michael Lee"
}

resource "genesyscloud_user" "susan_kim" {
  routing_utilization {
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
  }
  state       = "active"
  email       = "susan.kim@example.com"
  division_id = "${genesyscloud_auth_division.Home.id}"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "10010"
    employee_type = "Full-time"
    official_name = "Susan Kim"
  }
  acd_auto_answer = false
  addresses {
    other_emails {
      address = "susan.kim@gmail.com"
      type    = "HOME"
    }
  }
  name = "Susan Kim"
}

resource "genesyscloud_user" "robert_lee" {
  routing_utilization {
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
  }
  state       = "active"
  email       = "robert.lee@example.com"
  division_id = "${genesyscloud_auth_division.Home.id}"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "10011"
    employee_type = "Full-time"
    official_name = "Robert Lee"
  }
  acd_auto_answer = false
  addresses {
    other_emails {
      address = "robert.lee@gmail.com"
      type    = "HOME"
    }
  }
  name = "Robert Lee"
}
resource "genesyscloud_user" "sarah_clark" {
  routing_utilization {
    call {
      include_non_acd  = true
      maximum_capacity = 1
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
  }
  state       = "active"
  email       = "sarah.clark@example.com"
  division_id = "${genesyscloud_auth_division.Home.id}"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "10012"
    employee_type = "Full-time"
    official_name = "Sarah Clark"
  }
  acd_auto_answer = false
  addresses {
    other_emails {
      address = "sarah.clark@gmail.com"
      type    = "HOME"
    }
  }
  name = "Sarah Clark"
}
