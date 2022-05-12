const int buttonPin = 2;

byte arbitraryCode = 97;

void setup() {
  pinMode(buttonPin, INPUT);
  Serial.begin(9600);
}

void loop() {
  if (digitalRead(buttonPin)) {
    Serial.write(arbitraryCode);
    delay(500);
  }
}
