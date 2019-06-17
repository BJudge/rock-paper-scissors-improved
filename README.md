# I still need to test the ComputerPlayer class - stubbing a singleton class

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
