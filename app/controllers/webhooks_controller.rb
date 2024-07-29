
require 'discordrb'

class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def github
    MessageService.new(payload).send_message
    head :ok
  end

end
