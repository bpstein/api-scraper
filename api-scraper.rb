require 'open-uri'
require 'json'

# Set API token and URL
auth_token = "193b7bfed7eb034d47162e8124ed4e19"
polling_url = "http://polling.3taps.com/poll"

# Specify request paramaters
params = {
	auth_token: auth_token,
	anchor: 2312360484,
	source: "CRAIG",
	category_group: "RRRR",
	category: "RHFR",
	'location.city' => "USA-NYM-BRL",
	retvals: "location,external_url,heading,body,timestamp,price,images,annotations"
}

# Prepare API request
uri = URI.parse(polling_url)
uri.query = URI.encode_www_form(params)

# Submit request
result = JSON.parse(open(uri).read)

# Display results to screen
puts JSON.pretty_generate result
