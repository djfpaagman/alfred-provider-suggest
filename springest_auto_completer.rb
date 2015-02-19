class SpringestAutoCompleter
  attr_accessor :args

  def initialize(args)
    @args = URI.encode(args)
  end

  def providers
    json['results']['institutes']
  end

  def subjects
    json['results']['subjects']
  end

  protected

  def uri
    URI.parse("https://www.springest.nl/autocomplete/#{args}.jsonp?api_key=public")
  end

  def response
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request =Net::HTTP::Get.new(uri.request_uri)

    http.request(request)
  end

  def json
    JSON.parse(response.body)
  end
end

