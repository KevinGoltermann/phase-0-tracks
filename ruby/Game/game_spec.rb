require_relative 'Game'

describe Game do
  let(:Game) { Game.new("practice") }

  it "is guess right and output new word" do
    expect(game.match("p")).to eq true
    expect(game.guessing_word).to eq "p*******"
  end

  it "guess doesnt match" do
    expect(game.match("x")).to eq false
  end

  it "holding place" do
    expect(game.guessing_word).to eq "********"
  end
 
 it "guess counter" do
    expect(game.match("p")).to eq true
    expect(game.guess_counter).to eq 1
    expect(game.guess_amount).to eq 16
  end


  it "check for won status" do
    expect(game.match("p")).to eq true
    expect(game.winner).to eq false
    expect(game.match("r")).to eq true
    expect(game.match("a")).to eq true
    expect(game.match("c")).to eq true
    expect(game.match("t")).to eq true
    expect(game.match("i")).to eq true
    expect(game.match("c")).to eq true
    expect(game.match("e")).to eq true
    expect(game.winner).to eq true
  end
end