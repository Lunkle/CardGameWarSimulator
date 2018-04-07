final String SPADES = "SPADES";
final String HEARTS = "HEARTS";
final String CLUBS = "CLUBS";
final String DIAMONDS = "DIAMONDS";

final int CARD_WIDTH = 40;
final int CARD_HEIGHT = 60;
final int TEXT_SIZE = 20;
final int JOKER_TEXT_SIZE = 10;
final int CORNER_RADIUS = 5;

class Card {
    String suite;
    String value;
    int number;
    PVector position;
    int cardNumber;
    int textSize = TEXT_SIZE;
    boolean isFaceDown = false;
    PImage spriteSuite;
    
    Card(String suite, int number, Deck deckFrom) { //Removed deck as cards can be made within main deck
        this.position = deckFrom.position;
        this.suite = suite;
        this.number = number;
        //deckFrom = deck;
        if (number == 1) {
            value = "A";
        } else if (number == 11) {
            value = "J";
        } else if (number == 12) {
            value = "Q";
        } else if (number == 13) {
            value = "K";
        } else if (number == 14) {
            value = "JOKER";
            textSize = JOKER_TEXT_SIZE;
        } else {
            value = str(number);
        }
        switch(suite) {
        case SPADES:
            spriteSuite = spadesSprite;
            break;
        case HEARTS:
            spriteSuite = heartsSprite;
            break;
        case CLUBS:
            spriteSuite = clubsSprite;
            break;
        case DIAMONDS:
            spriteSuite = diamondsSprite;
            break;
        }
    }

    void printCard() {
        println(suite, value);
    }

    void drawSuite() {
        pushMatrix();
        scale(0.1);
        image(spriteSuite, 20, 10);
        popMatrix();
    }

    void displayCard() {
        pushMatrix();
        translate(position.x + cardNumber/5, position.y + cardNumber/5);
        if(isFaceDown){
            fill(0, 0, 255);
            rect(0, 0, CARD_WIDTH, CARD_HEIGHT, CORNER_RADIUS);
        }else{
            fill(255);
            rect(0, 0, CARD_WIDTH, CARD_HEIGHT, CORNER_RADIUS);
            drawSuite();
            textAlign(CENTER);
            textSize(textSize);
            fill(0);
            text(value, CARD_WIDTH/2, CARD_HEIGHT/2 + textSize);
        }
        popMatrix();
    }
}
