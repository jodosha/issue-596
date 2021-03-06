require 'spec_helper'
require_relative '../../../../apps/web/views/groups/index'

describe Web::Views::Groups::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/groups/index.html.erb') }
  let(:view)      { Web::Views::Groups::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
