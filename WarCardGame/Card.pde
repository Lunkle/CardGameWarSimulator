final String SPADES = "SPADES";
final String HEARTS = "HEARTS";
final String CLUBS = "CLUBS";
final String DIAMONDS = "DIAMONDS";

class Card {
    String suite;
    int number;
    Card(String suite, int number){
        this.suite = suite;
        this.number = number;
    }
}
