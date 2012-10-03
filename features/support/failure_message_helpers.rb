module FailureMessageHelpers
  def unexpected_node_contents(css)
    flash_element = page.first('#flash')
    contents = flash_element ? flash_element.native.awesome_inspect : 'nothing.'
    "But, found: #{contents}"
  end

end

World(FailureMessageHelpers)
