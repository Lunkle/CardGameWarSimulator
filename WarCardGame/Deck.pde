class Deck {
    //Cards at the front of the array are at the bottom of the deck.
    //Cards at the back of the array are on the top of the deck.
    Card[] deck = new Card[0];
    PVector position;

    //Default deck.
    Deck(float xPos, float yPos) {
        this.position = new PVector(xPos, yPos);
        addDefaultCards();
    }

    void addDefaultCards() {
        String[] suiteArray = {SPADES, CLUBS, HEARTS, DIAMONDS};
        for (int i = 0; i < 4; i++) {
            for (int cardVal = 1; cardVal <= 13; cardVal++) {
                addCardOnTop(new Card(suiteArray[i], cardVal, this));
            }
        }
    }

    void addCardOnTop(Card card) {
        card.cardNumber = deck.length;
        deck = (Card[]) splice(deck, card, deck.length);
    }
    
    void addCardOnBottom(Card card) {
        card.cardNumber = 0;
        deck = (Card[]) splice(deck, card, 0);
    }

    void shuffleDeck() {
        Card[] temp = new Card[deck.length];
        ArrayList<Integer> indicesRemaining = new ArrayList<Integer>();
        for (int i = 0; i<deck.length; i++) {
            indicesRemaining.add(i);
        }
        for (int i = 0; i<deck.length; i++) {
            int rindex = int(random(indicesRemaining.size())); //Generates random index based on remaining possibilities of indices
            int index = indicesRemaining.get(rindex); //Gets the index from list. Done this way to be able to remove index later
            indicesRemaining.remove(rindex);
            temp[index] = deck[i]; //Copies over card to random index
            deck[i].cardNumber = index;
        }
        deck = temp;
    }

    void printDeck() {
        for (int i = 0; i < deck.length; i++) {
            deck[i].printCard();
        }
    }
    
    void displayDeck(){
        for(int i = 0; i < deck.length; i++){
            deck[i].displayCard();
        }
    }
}
