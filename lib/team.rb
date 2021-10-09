require './lib/deep_freezable'

class Team
  extend DeepFreezable
  CURRENCIES = deep_freeze(['Japan', 'US', 'India'])
end