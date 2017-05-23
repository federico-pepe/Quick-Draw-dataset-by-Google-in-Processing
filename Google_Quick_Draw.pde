/*
 * Quick, Draw! The Data with Processing
 * by Federico Pepe
 * 23.05.2017
 * 
 * Quick, Draw! Dataset by Google
 * https://github.com/googlecreativelab/quickdraw-dataset
*/

JSONArray values;
int click = 0;

void setup() {
  size(256, 256);
  println("--- WAIT WHILE LOADING THE FILE");
  values = loadJSONArray("full-simplified-anvil.json");
  println("--- " + values.size() + " DRAWS LOADED! START CLICKING");
}

void draw() {
}

void mousePressed() {
  background(127);
  // Checking if you are at the end of the array
  if (click >= values.size()) {
    click = 0;
  }
  // Working on the JSON Object
  JSONObject json;
  json = values.getJSONObject(click);
  JSONArray drawing = json.getJSONArray("drawing");

  for (int i = 0; i < drawing.size(); i++) {
    JSONArray var = drawing.getJSONArray(i);
    for (int j = 0; j < var.size(); j += var.size()) {
      beginShape();
      for (int z = 0; z < var.getJSONArray(j).size(); z++) {
        vertex(var.getJSONArray(j).getInt(z), var.getJSONArray(j+1).getInt(z));
      }
      endShape(CLOSE);
    }
  }
  click++;
}