#include <WiFiClientSecure.h>
#include <ESP8266HTTPClient.h>
#include <ArduinoJson.h>
#include <ESP8266WiFi.h>
#define ldrPIn A0 // Define the input pin for the photoresistor
#define pirPin 16 // Define the input pin for the PIR sensor d0
unsigned long previousMillis = 0; // variable to store the last time the lights were turned off
int session = 0;

String serverName = "http://127.0.0.1:8000/api/get_device/"+WiFi.macAddress();
char* ssid = "YOUR_SSID";
char* password = "YOUR_PSWD";
int led1=5;//d1 yellow
int led2=12;//d6 orange
int led3=0;//d3 purple
int led4=2;//d4 white
WiFiClientSecure client;
void setup() {
  Serial.begin(9600);
   pinMode(ldrPIn, INPUT); // Set the LDR photoresistor pin as an input
  pinMode(pirPin, INPUT); // Set the PIR sensor pin as an input
  pinMode(led1,OUTPUT);
  digitalWrite(led1,LOW);
  pinMode(led2,OUTPUT);
  digitalWrite(led2,LOW);
  pinMode(led3,OUTPUT);
  digitalWrite(led3,LOW);
  pinMode(led4,OUTPUT);
  digitalWrite(led4,LOW);
  WiFi.begin(ssid, password);
  Serial.println("\nConnecting");
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi...");
  }
  Serial.println("\nConnected to the WiFi network");
  Serial.print("Local ESP8266 IP: ");
  Serial.println(WiFi.localIP());
}
// change the state of leds 
void light(int etat1, int etat2,int  etat3, int etat4) {
  digitalWrite(led1, etat1);
  digitalWrite(led2, etat2);
  digitalWrite(led3, etat3);
  digitalWrite(led4, etat4);
}

// light up the leds base on the brightness in the area
void brightness() {
  
  // value between 0 and 1023,
  int lightValue = analogRead(ldrPIn);
  // convert the range to 100% scale 
  int value = (lightValue / 1023.0) * 100.0;

  Serial.print("Light value: "); // Print a message to the serial monitor
  Serial.println(lightValue);
  Serial.print("Light Precentage: "); // Print a message to the serial monitor
  Serial.print(value);
  Serial.print(" %");
  Serial.println();

  // sun light
  if ( value <= 25 ) {
    light(HIGH,HIGH,HIGH,HIGH);
  }

  else if ( value > 25 && value <= 50 ) {
    light(HIGH,HIGH,LOW,LOW);
  } 

  else if ( value > 50 && value <= 75 ) {
    light(HIGH,LOW,LOW,LOW);
  } 
  
  
  else {
    light(LOW,LOW,LOW,LOW);
  }

}
void loop() {
  if (WiFi.status() == WL_CONNECTED) {
  
    HTTPClient http;
    String serverPath = serverName;
    client.setInsecure();
    http.begin(client, serverPath.c_str());
    int httpResponseCode = http.GET();
    Serial.print("HTTP response code: ");
    Serial.println(httpResponseCode);
    if (httpResponseCode > 0) {
      String payload = http.getString();      
      DynamicJsonDocument doc(1024);
      DeserializationError error = deserializeJson(doc, payload);
      if (error) {
        Serial.print("deserializeJson() failed: ");
        Serial.println(error.c_str());
      } else {
        int slider = doc["slider"].as<int>();
    
        int status = doc["state"].as<int>();
      int autoa = doc["Auto"].as<int>();

        Serial.print("slider=");
        Serial.println(slider);
           Serial.print("status=");
        Serial.println(status);
          Serial.print("auto=");
           Serial.println(autoa); 
          Serial.print("session=");
           Serial.println(session); 
if(autoa==1){
  /*
    session = 0 no one in the office 
    session = 1 some one enter the office
  */
  if ( session == 0 ) {
    if ( digitalRead(pirPin) == HIGH ) {
          session = 1;
    }
  }
  else {
    brightness();
    if ( millis() - previousMillis >= 10000 ) {
      if ( digitalRead(pirPin) == LOW ) {
        light(LOW,LOW,LOW,LOW);
        session = 0;
      }
      previousMillis = millis();
    }
  }}else{
       if (status == 1) {
  if (slider > 0 && slider <= 25) {
    digitalWrite(led1, HIGH);
    digitalWrite(led2, LOW);
    digitalWrite(led3, LOW);
    digitalWrite(led4, LOW);
  } else if (slider > 25 && slider <= 50) {
    digitalWrite(led1, HIGH);
    digitalWrite(led2, HIGH);
    digitalWrite(led3, LOW);
    digitalWrite(led4, LOW);
  } else if (slider > 50 && slider <= 75) {
    digitalWrite(led1, HIGH);
    digitalWrite(led2, HIGH);
    digitalWrite(led3, HIGH);
    digitalWrite(led4, LOW);
  } else if (slider > 75 && slider <= 100) {
    digitalWrite(led1, HIGH);
    digitalWrite(led2, HIGH);
    digitalWrite(led3, HIGH);
    digitalWrite(led4, HIGH);
  } else {
    digitalWrite(led1, LOW);
    digitalWrite(led2, LOW);
    digitalWrite(led3, LOW);
    digitalWrite(led4, LOW);
  }
} else {
  digitalWrite(led1, LOW);
  digitalWrite(led2, LOW);
  digitalWrite(led3, LOW);
  digitalWrite(led4, LOW);
}}

      }
    } else {
      Serial.print("Error code: ");
      Serial.println(httpResponseCode);
    }
    http.end();
  } else {
    Serial.println("WiFi disconnected");
  }
}