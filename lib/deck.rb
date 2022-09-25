require './lib/card'

class Deck
    attr_reader :cards
    def initialize(cards)
        @cards = cards
    end
        # takes an argument of the index location and iterates through the card, returning the rank of the card at that location
        def rank_of_card_at(index)
            @cards[index].rank
        end

        def high_ranking_cards
            high_ranking_cards = @cards.select do |card|
                card.rank > 10
            end
        end

        def add_card(card)
            @cards.push(card)
        end

        def remove_card
            @cards.shift
        end 

        def percent_high_ranking
            high_ranking_cards = @cards.select do |card|
                card.rank > 10
            end

            percent_high_ranking = (high_ranking_cards.length.to_f / @cards.length.to_f) * 100
        end
end