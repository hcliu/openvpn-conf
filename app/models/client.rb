class Client

  def self.get_cert url
    HTTParty.get(url)
  end

end