require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'

RSpec.describe Deck do
    it "exists" do
        card1 = Card.new(:diamond, 'Queen', 12)

        deck = Deck.new([card1])

        player = Player.new('Bunny', deck)

        expect(player.name).to eq('Bunny')

        expect(player.has_lost?).to eq(false)

        player.deck.remove_card

        expect(player.has_lost?).to eq(true)
    end
end