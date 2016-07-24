require "easytone/version"

module Easytone
  def Easytone.tone(username, password, text, version = '2016-05-19')
    tone_url = "https://#{username}:#{password}@gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=#{version}&text=#{text}"
    response = JSON.parse(RestClient.get(tone_url))
    return response["document_tone"]["tone_categories"][0]["tones"]
  end
end
