require 'sinatra/base'
require 'nationbuilder'

class SkeletonNBApp < Sinatra::Base

	post '/people' do
	    content_type :json
	 
	    nb_client = NationBuilder::Client.new('mayorofla', ENV['63399ad58be8012ed191c1bdeeccac0e257a92efd73494414ebbce0df9848600'])
	    post_data = {
	      person: {
	        email: params[:email],
	        tags: ["datala", "open data"]
	      }
	    }
	 
	    nb_client.call(:people, :create, post_data).to_json
	end
end