
//data as a list of numbers
int[] data;


void setup(){
  size(400,300);
  String[] numbers = loadStrings("data.csv");
  
  //
  data = int (split(numbers[0],','));
}

void draw(){
  background(255);
  stroke(0);
  for (int i = 0; i < data.length; i++){
    fill(data[i]);
    rect(i*20,0,20,data[i]); //x,y, width, height
  }
  
}
//println(data[0]);
//}