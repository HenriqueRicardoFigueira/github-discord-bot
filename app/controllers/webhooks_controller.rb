
require 'discordrb'

class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def github
    event = request.headers['X-GitHub-Event']
    payload = JSON.parse(request.body.read)

    send_message(payload)

    head :ok
  end

  private 

  def send_message(payload)
    bot = Discordrb::Bot.new token: ENV['DISCORD_BOT_TOKEN']

    message = case payload['action']
              when 'released'
                "New release: #{payload['release']['tag_name']}, Author: #{payload['release']['author']['login']} #{payload['release']['body']}}"
              when 'labeled'
                if payload['label']['name'].include?('code review')
                  "PR ##{payload['pull_request']['number']} - #{payload['pull_request']['title']} has been labeled for code review"
                end
              when 'published'
                "New release: #{payload['release']['tag_name']}, Author: #{payload['release']['author']['login']} #{payload['release']['body']}}"
              end
    bot.send_message(1153312562579001346, message)
  end

end
