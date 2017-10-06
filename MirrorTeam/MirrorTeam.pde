ArrayList<PVector> positions = new ArrayList<PVector>();


void setup()
{
  size(1024, 1024, P3D);
  JSONObject json = loadJSONObject("MirrorTeam_session_09-29-2017_000.json");

  JSONArray jsonPositions = json.getJSONObject("trackedDevice").getJSONObject("NiaRight").getJSONArray("position");



  for (int i = 0; i < jsonPositions.size(); i+=8)
  {
    JSONObject jsonPosition = jsonPositions.getJSONObject(i);

    float x = jsonPosition.getFloat("x");
    float y = jsonPosition.getFloat("y");
    float z = jsonPosition.getFloat("z");

    positions.add(new PVector(x, y, z));
  }
}


void draw()
{
  pushMatrix();
  translate(width / 2, height / 2);
  for (PVector p : positions)
  {

    p.x *= 100;
    p.y *= 100;
    p.z *= 100;
    
    pushMatrix();
    translate(p.x, p.y, p.z);
     point(0, 0, 0);
      
    popMatrix();
}
  popMatrix();
}