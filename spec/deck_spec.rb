require 'rspec'
require './lib/card'
require './lib/deck'

RSpec.describe Deck do
    it "exists" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'King', 13)
        card4 = Card.new(:club, '5', 5)
        cards = [card1, card2, card3]


        deck = Deck.new(cards)
    
        expect(deck).to be_an_instance_of(Deck)

        expect(deck.rank_of_card_at(0)).to eq(12)

        expect(deck.high_ranking_cards).to eq([card1, card3])

        expect(deck.percent_high_ranking).to eq(66.66666666666666)

        deck.add_card(card4)

        expect(deck.cards).to eq([card1, card2, card3, card4])

        expect(deck.remove_card).to eq(card1)
        expect(deck.cards).to eq([card2, card3, card4])
    end
end