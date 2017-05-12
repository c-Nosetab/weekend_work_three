# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

class Tv
  attr_accessor :power, :volume, :channel

  def initialize
    @power = false
    @volume = 10
    @channel = 3
  end

end

# The Tv class will have the attributes: power, volume, and channel.

class Remote
  attr_reader :tv

  def initialize
    @tv = Tv.new
  end

  def toggle_power
    @tv.power = true
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(chan)
    @tv.channel = chan
  end

end

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

remote = Remote.new

p remote.tv

remote.toggle_power
remote.increment_volume
remote.set_channel(20)
p remote.tv

remote.decrement_volume
p remote.tv