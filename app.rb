require 'sinatra'
require 'httparty'
require 'dotenv/load'

# To be able to obtain user information, the account token that is placed must be on a mutual server or be a friend of the same.

get '/user/:id' do
  user_id = params['id']

  begin
    response = HTTParty.get(
      "https://discord.com/api/users/#{user_id}/profile",
      headers: {
        'Authorization' => ENV["DISCORD_TOKEN"] 
      }
    )

    data = response.parsed_response

    puts "[\x1b[32mAPI-REQUEST\x1b[0m] [\x1b[32m#{Time.now}\x1b[0m] #{request.ip}"

    {
      id: data['id'],
      badges: data['badges'],
      username: data['username'],
      bio: data['bio'] || 'Unable to obtain user bio.',
      nitroType: data['nitroType'],
      createdTimestamp: data['createdTimestamp'],
      discriminator: data['discriminator'],
      connected_accounts: data['connected_accounts'],
      premium_type: data['premium_type'],
      premium_since: data['premium_since'],
      premium_guild_since: data['premium_guild_since'],
      profile_themes_experiment_bucket: data['profile_themes_experiment_bucket'],
      user_profile: data['user_profile'],
      guild_badges: data['guild_badges'],
      legacy_username: data['legacy_username']
    }.to_json
  rescue => error
    status 404
    { message: 'User not found' }.to_json
  end
end

set :port, 3000
puts "[\x1b[32mAPI\x1b[0m\x1b[32m] Running on port 3000.\x1b[0m"
