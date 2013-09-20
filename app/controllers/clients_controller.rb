class ClientsController < ApplicationController

  def show
    
    @conf_tun = params[:tun] || 'tun'
    @conf_server_ip = params[:host]
    @conf_server_port = params[:port] || 1194

    @inline_certs = params[:inline_certs]
    # get cert urls 

    # @conf_ca = params[:ca_url]
    # @conf_client_cert = params[:client_cert_url]
    # @conf_client_key = params[:]

    render 'show.text.erb' 
  end

end
