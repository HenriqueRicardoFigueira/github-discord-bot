
class MessageService
  
  attr_reader :payload
  
  def initialize(payload)
    @payload = payload
  end

  def send_message
    bot = Discordrb::Bot.new token: ENV['DISCORD_BOT_TOKEN']
    message = define_mesasge
    bot.send_message(ENV['DISCORD_CHANNEL_ID'], message)
  end


  private

  def define_mesasge
    case payload['action']
    when 'released'
      released
    when 'labeled'
      labeled
    when 'published'
      published
    end
  end

  def published
    "New release: #{tag_name}, Author: #{author} #{body}}"
  end

  def labeled
    return unless !payload['label']['name'].include?('code review')
    
    "PR ##{payload['pull_request']['number']} - #{payload['pull_request']['title']} has been labeled for code review"
  end

  def released
    "New release: #{tag_name}, Author: #{author} #{body}}"
  end

  def author
    payload['release']['author']['login']
  end

  def tag_name
    payload['release']['tag_name']
  end

  def body
    payload['release']['body']
  end

end