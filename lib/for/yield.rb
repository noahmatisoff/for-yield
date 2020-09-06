require "for/yield/version"
require "option"

class NotContainerTypesError < StandardError
  def initialize(message = "Objects provided aren't all container types.")
    super
  end
end

class HeterogeneousObjectsError < StandardError
  def initialize(message = "Objects provided aren't all of the same type.")
    super
  end
end

class ObjectsNotProvidedError < StandardError
  def initialize(message = "No objects provided to for/yield.")
    super
  end
end

def for_(*objects)
  if objects.empty?
    raise ObjectsNotProvidedError
  end

  somes = objects.map(&:class).all? { |o| o == SomeClass }
  unless somes
    raise NotContainerTypesError
  end

  types = objects.map(&:get).map(&:class).uniq.size == 1
  unless types
    raise HeterogeneousObjectsError
  end

  yield *objects.map(&:get)
end
