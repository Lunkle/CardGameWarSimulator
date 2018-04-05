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
    int number;
    PVector position;
    int cardNumber;
    int textSize = TEXT_SIZE;
    boolean isFaceDown = true;
    PImage spriteSuite;
    
    Deck deckFrom;
        
    Card(String suite, int number){ //Removed deck as cards can be made within main deck
        this.suite = suite;
        this.number = number;
        //deckFrom = deck;
        if(number == 1){
            value = "A";
        }else if(number == 11){
            value = "J";
        }else if(number == 12){
            value = "Q";
        }else if(number == 13){
            value = "K";
        }else if(number == 14){
            value = "JOKER";
            textSize = JOKER_TEXT_SIZE;
        }else{
            value = str(number); 
        }
        switch(suite){
            case SPADES:
                spriteSuite = loadImage("Suites/SuiteSpade.png");
                break;
            case HEARTS:
                spriteSuite = loadImage("Suites/SuiteHeart.png");
                break;
            case CLUBS:
                spriteSuite = loadImage("Suites/SuiteClub.png");
                break;
            case DIAMONDS:
                spriteSuite = loadImage("Suites/SuiteDiamond.png");
                break;
        }
        
        
    }
    
    void drawSuite(){
        image(spriteSuite, position.x, position.y);
    }
    
    void displayCard(){
        rect(position.x, position.y, CARD_WIDTH, CARD_HEIGHT, CORNER_RADIUS);
        drawSuite();
        textAlign(CENTER);
        textSize(textSize);
        text(value, position.x + CARD_WIDTH/2, position.y + CARD_HEIGHT/2 + textSize);
    }
}
