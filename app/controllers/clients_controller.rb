class ClientsController < ApplicationController

  def show
    
    @conf_tun = params[:tun] || 'tun'
    @conf_server_ip = params[:host]
    @conf_server_port = params[:port] || 1194

    @inline_certs = params[:inline_certs]

    if @inline_certs
      @conf_ca = Client.get_cert(params[:ca_url]) if params[:ca_url]
      @conf_client_cert = Client.get_cert(params[:client_cert_url]) if params[:client_cert_url]
      @conf_client_key = Client.get_cert(params[:client_key_url]) if params[:client_key_url]
    end
    # get cert urls



    render 'show.text.erb' 
  end

end
