require 'spec_helper'
require_relative '../../../../apps/web/controllers/groups/index'

describe Web::Controllers::Groups::Index do
  let(:action) { Web::Controllers::Groups::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
