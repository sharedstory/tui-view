// Constants

// MapCellModel manages state for one map cell. 
class MapCellModel {

  int id, i, j, terrain, tile_type;
  float distance;
  boolean has_hospital;

  // Constructor
  MapCellModel(int _i, int _j, int _terrain) {
    i = _i; 
    j = _j; 
    terrain = _terrain;
    has_hospital = false;
    tile_type = 0;
  }

  // Adds a hospital
  void add_hospital() {
    has_hospital = true;
  }

  void remove_hospital() {
    has_hospital = false;
  }

  //detects what icon a fiducial should have
  void is_sf() { //san francisco
    tile_type = 2;
  }

  void is_pa() { //palo alto
    tile_type = 3;
  }

  void is_epa() { //east palo alto
    tile_type = 4;
  }

  void is_per() { //personal
    tile_type = 5;
  }

  void is_com() { //community
    tile_type = 6;
  } 

  void is_glo() { //global
    tile_type = 7;
  } 

  void is_home() { //home
    tile_type = 11;
  }

  void is_school() { //school
    tile_type = 12;
  } 

  void is_church() { //church
    tile_type = 13;
  } 

  void is_tree() { //tree
    tile_type = 14;
  }

  void is_protester() { //protesters
    tile_type = 15;
  } 

  void is_street() { //street
    tile_type = 16;
  }

  int get_tile_type() {
    return tile_type;
  }

  // Defines how MapCellModels should be compared with each other
  // for equality. Here, two MapCellModels are equal if they 
  // share i and j. 
  boolean equals(MapCellModel other) {
    return i == other.i && j == other.j;
  }

  // Returns true when there is no town or hospital here.
  boolean is_free() {
    return !has_hospital;
  }
}