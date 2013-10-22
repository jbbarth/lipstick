require 'rack/test'
require 'spec_helper'

require 'radial/web'

describe Radial::Web do
  include Rack::Test::Methods

  def app
    Radial::Web
  end

  describe 'GET /' do
    context 'html' do
      it 'should return ok' do
        get '/'
        last_response.should be_ok
      end
    end
  end
end
