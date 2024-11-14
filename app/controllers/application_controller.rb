class ApplicationController < ActionController::API
    before_action :set_cors_headers
    private

    def set_cors_headers
      response.set_header('Access-Control-Allow-Origin', 'https://hounsot.github.io')
      response.set_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
      response.set_header('Access-Control-Allow-Headers', 'Origin, Content-Type, Accept')
      response.set_header('Access-Control-Allow-Credentials', 'true')
    end
end
