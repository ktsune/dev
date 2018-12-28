# => phone class
# => should have a #
# => phone should be able to send and receive calls
# => sending a call
  # => have to know which # you're calling
# => receiving a call
  # => goes 'briing briing'

class Phone

  attr_reader :number
  def initialize(number)
    @number = number
  end

  def make_call(number)
    p 'number dialed: ' + number
  end

  def receive_call(number)
    p 'received call from: ' + number
  end

  def speak(says_something)
    p "number on line: #{@number} #{says_something}"
  end

  def hang_up
    'call has ended: ' + @number
  end

end

# start_call -> takes a phone number
# => during call,
#    method speak, prints out the phone number and the text passed in
#    throws an error if there is no active call
# hangup_call -> ends conversation

# phone_1.call("XYZ")  => Calling "XYZ"
# phone_2.call("ABC")
# phone_1.speak("ssadfsdfa")
# phone_2.speak("abcdd")
# phone_1.hangup()

phone_1 = Phone.new('309-838-7173')
phone_2 = Phone.new('309-825-6625')

phone_1.make_call(phone_2.number)
phone_2.receive_call(phone_1.number)

phone_2.speak('hello?')
phone_1.speak('jerry, how is it going? this is bob, just calling to say hi')
phone_2.speak('hey bob! good to hear from you')
phone_1.speak('ok, g2g. ttyl.')
phone_2.speak('ok..bye?')
phone_1.speak('bye!')

phone_1.hang_up
phone_2.hang_up
