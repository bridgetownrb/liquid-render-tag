require "liquid"

unless defined?(Liquid::Render)
  tags = Liquid::Template.tags.instance_variable_get(:@cache)

  original_verbosity = $VERBOSE
  $VERBOSE = nil
  Dir["#{__dir__}/liquid-render-tag/*.rb"].each { |f| require f }
  Dir["#{__dir__}/liquid-render-tag/registers/*.rb"].each { |f| require f }
  Dir["#{__dir__}/liquid-render-tag/tags/*.rb"].each { |f| require f }
  $VERBOSE = original_verbosity

  Liquid::Template.register_filter(Liquid::StandardFilters)

  tags.each do |name, klass|
    Liquid::Template.register_tag(name, klass)
  end
end
