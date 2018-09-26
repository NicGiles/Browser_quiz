require 'question_randomiser'

RSpec.describe Question_randomiser do

  subject { described_class.new}

  it "should return a random question" do
    srand(4)
    expect(subject.random_q).to eq "C"
    end


end
#
# example of srand researched on github
# describe SingleGame do
#   subject(:single_game) { described_class.new(player_1) }
#   let(:player_1) { double :player, name: "Justyna" }
#
#   describe "#calculate_result" do
#     it 'calculates the win' do
#       # After setting seed srand(4), rand(3) will output
#       # the third (index 2) element in the array, which is rock.
#       srand(4)
#       # in the following line rand(3) is called and thanks to srand(4) we know it will return 2.
#       allow(single_game).to receive(:computer_weapon)
#       expect(single_game.calculate_result(single_game.computer_weapon, "paper")).to eq "Justyna won"
#     end
#   end
# end
