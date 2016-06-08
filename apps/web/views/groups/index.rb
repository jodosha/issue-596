require 'ostruct'

module Web::Views::Groups
  class Index
    include Web::View

    def group
      OpenStruct.new(name: 'Foo', slug: 'foo')
    end
  end
end
