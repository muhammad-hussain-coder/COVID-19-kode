Table table;
int inventory;
String[] dateList = new String [55];
String[] stateList = new String[55];
int TableRow = 55;
PImage img;

void setup() {
  size(1200, 750);
  background(#add8e6);
  Table table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");
  TableRow row = table.getRow(0);
  textSize(32);
  text("Homeland security", 10, 30); 
  fill(0, 102, 153);
  text("Coronavirus", 10, 60);
  fill(0, 102, 153, 51);
  text("Unites States", 10, 90); 
  fill(#00CC33);
  text("The deaths are visualated 5 times bigger than the cases on the graph", 50, 700);
  line(1150, 550, 1150, 105);
  line(150, 105, 1150, 105);
  line(150, 300, 1150, 300);
  fill(#2F4F4F);
  text(" 3.8 Milion", 800, 75); 
  fill(#2F4F4F);
  text(" 2 Milion", 800, 270); 
  img = loadImage("logo.png");
  img.resize(100, 100);

  float x = 30;
  for (int i = 0; i < table.getRowCount(); i++) {
    row = table.getRow(i);
    x = x + 20;
    String dateList = row.getString("date"); 
    println (dateList);
    String stateList2 = row.getString("state"); 
    println (stateList2);
    float cases = row.getInt("cases");
    float deaths = row.getInt("deaths");
    println(cases, deaths);
    fill(#0000FF);
    rect(x, 550, 20, -(cases/10000));
    fill(#8b0000);
    rect(x, 550, 20, -(deaths/2000));
  }

  println ();
}

void draw() {
  image(img, 10, 100);
}



void mousePressed() {
} 
