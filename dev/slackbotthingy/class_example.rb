#!/usr/bin/env ruby

class HelloWorld
  def initialize
    p 'NEW INSTANCE!'
    @var = 'im a class var'
  end

  def self.hello_world
    p 'HELLO FROM A CLASS METHOD'
    p @var
  end

  def hello_world
    p 'HELLO FROM AN INSTANCE METHOD'
    p @var
  end
end

instance = HelloWorld.new
klass = HelloWorld

instance.hello_world
# instance.hello_world

# klass.hello_world
# klass.hello_world_instance
