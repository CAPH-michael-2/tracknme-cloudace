resource "google_dialogflow_agent" "full_agent" {
  display_name = "dialogflow-agent"
  default_language_code = "en"
  supported_language_codes = ["fr","de","es"]
  time_zone = "America/New_York"
  description = "Example description."
  avatar_uri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
  enable_logging = true
  match_mode = "MATCH_MODE_ML_ONLY"
  classification_threshold = 0.3
  api_version = "API_VERSION_V2_BETA_1"
  tier = "TIER_STANDARD"
}

resource "google_dialogflow_agent" "tracknme_chatbot" {
  display_name = "TrackNMe Chatbot"
  default_language_code = "en-US"
  time_zone = "America/Los_Angeles"
}

resource "google_dialogflow_intent" "greeting_intent" {
  display_name = "Greeting"
  agent = google_dialogflow_agent.tracknme_chatbot.name

  training_phrases {
    type = "EXAMPLE"
    parts {
      text = "hello"
    }
  }

    training_phrases {
    type = "EXAMPLE"
    parts {
      text = "hi there"
    }
  }
  training_phrases {
    type = "EXAMPLE"
    parts {
      text = "good morning"
    }

  responses {
    text {
      text = "Hi there! How can I help you today?"
    }
  }
}


resource "google_dialogflow_entity" "city_entity" {
  display_name = "city"
  agent = google_dialogflow_agent.my_agent.name

  entity_type = "LOCATION"

  manual_training_phrases {
    parts {
      text = "manila"
    }
    parts {
      text = "cebu"
    }
    parts {
      text = "davao"
    }
  }
}

resource "google_dialogflow_intent" "find_city_intent" {
  # ... other properties

  training_phrases {
    type = "EXAMPLE"
    parts {
      text = "what is the weather in"
    }
    parts {
      text = "show me the weather for"
    }
  }

  parameters {
    name = "city"
    entity_type = google_dialogflow_entity.city_entity.name
    required = true
  }
}
