require 'twitter'
 
module Twitter::API::Users
  def username_available?(username)
    get('/users/username_available', :username => username)[:body][:valid]
  end
 
  def generate_account(params = {})
    object_from_response(Twitter::User, :post, '/account/generate.json', params)
  end
end

# twiterの公式のConsumerが必要→ q:(trace:284112929689853953)
