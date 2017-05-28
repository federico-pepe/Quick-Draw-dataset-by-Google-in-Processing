/*
 * Quick, Draw! The Data with Processing
 * by Federico Pepe
 * 23.05.2017
 *
 * Quick, Draw! Dataset by Google
 * https://github.com/googlecreativelab/quickdraw-dataset
 */

BufferedReader reader;

String line;
JSONObject json;

void setup() {
  size(256, 256);
  reader = createReader("full-simplified-anvil.ndjson");
}

void draw() {
}

void mousePressed() {
  background(127);
  try {
    line = reader.readLine();
    json = parseJSONObject(line);
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
  }
  catch (IOException e) {
    e.printStackTrace();
    line = null;
  }
  // As find in BufferedReader's reference
  // https://processing.org/reference/BufferedReader.html
  if (line == null) {
    // Stop reading because of an error or file is empty
    noLoop();
  }
}
