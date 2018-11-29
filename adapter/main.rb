# existing class
class Driller
  def drill
    "I'm drilling!"
  end
end

# common class for tools
class Tool
  attr_reader :adapter

  def initialize(adapter)
    @adapter = adapter
  end

  def use_tool
    adapter.use_tool
  end
end

# adapter pattern
class DrillerAdapter
  attr_reader :driller

  def initialize(driller)
    @driller = driller
  end

  def use_tool
    driller.drill
  end
end
