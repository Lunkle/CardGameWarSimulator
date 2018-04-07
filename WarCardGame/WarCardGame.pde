PImage spadesSprite;
PImage heartsSprite;
PImage clubsSprite;
PImage diamondsSprite;

Deck deck1;
Deck deck2;

void setup() {
    spadesSprite = loadImage("Suites/SuiteSpade.png");
    heartsSprite = loadImage("Suites/SuiteHeart.png");
    clubsSprite = loadImage("Suites/SuiteClub.png");
    diamondsSprite = loadImage("Suites/SuiteDiamond.png");
    size(800, 600);
    deck1 = new Deck(10, 10);
    deck2 = new Deck(200, 200);
    deck1.shuffleDeck();
    deck2.shuffleDeck();

}

void draw() {
    background(220, 200, 140);
    deck1.displayDeck();
    deck2.displayDeck();
}
