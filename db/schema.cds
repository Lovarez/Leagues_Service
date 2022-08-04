namespace Leagues.Services;

entity Leagues {
  key id : Integer;
  @mandatory country : String(2);
  @mandatory name    : String(120);
  @mandatory level   : Integer;
  @mandatory active  : Boolean;
}

entity Teams {
  key id   : Integer;
  @mandatory name : String(120);
  @mandatory stadiumName : String(120);
  @mandatory city : String (120);

}

entity Players {
  key id   : Integer;
  @mandatory name : String(120);
  @mandatory surname : String(120);
  @mandatory number : Integer;
}