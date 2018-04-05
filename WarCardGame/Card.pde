final String SPADES = "SPADES";
final String HEARTS = "HEARTS";
final String CLUBS = "CLUBS";
final String DIAMONDS = "DIAMONDS";

final int CARD_WIDTH = 20;
final int CARD_HEIGHT = 40;
final int TEXT_SIZE = 20;
final int JOKER_TEXT_SIZE = 10;
final int CORNER_RADIUS = 5;

class Card {
    String suite;
    String value;
    PVector position;
    int cardNumber;
    int textSize = TEXT_SIZE;
    boolean isFaceDown = true;
    
    Card(String suite, int number){
        this.suite = suite;
        if(number == 1){
            value = "A";
        }else if(number == 11){
            value = "J";
        }else if(number == 12){
            value = "J";
        }else if(number == 13){
            value = "K";
        }
        if(number == 14){
            value = "JOKER";
            textSize = JOKER_TEXT_SIZE;
        }
    }
    
    void displayCard(){
        rect(position.x, position.y, CARD_WIDTH, CARD_HEIGHT, CORNER_RADIUS);
        textAlign(CENTER);
        textSize(textSize);
        text(value, position.x, position.y);
    }
}
