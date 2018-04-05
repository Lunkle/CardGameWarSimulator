class Deck {
    Card[] deck;

    //Default deck.
    Deck() {
        deck = new Card[54];
        addDefaultCards();
    }

    void addDefaultCards() {
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
        }
        deck = temp;
    }
}
