As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

the marketeer should be able to enter their name before the game
the marketeer will be presented the choices (rock, paper and scissors)
the marketeer can choose one option
the game will choose a random option
a winner will be declared


for game_spec use a mock with a fixed response, eg
double { turn :rock}
then use a double for player turn
double

lock up method stubs - method stubs.

it 'does not release broken bikes' do
  bike = double(:bike)
  allow(bike).to receive(:broken?).and_return(true)
  subject.dock bike
  expect {subject.release_bike}.to raise_error 'No bikes available'
end

## you want to stub the methods to handle the randomness

# this is the same as the test above
it 'does not release broken bikes' do
  # see how we move the allow() statement
  # into the double creation statement
  bike = double(:bike, broken?: true)
  subject.dock bike
  expect {subject.release_bike}.to raise_error 'No bikes available'
end

do not display on a post method
