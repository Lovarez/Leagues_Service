namespace Leagues.Services;

entity Leagues {
  key id : Integer;
  @mandatory country : String(2);
  @mandatory name    : String(120);
  @mandatory level   : Integer;
  teams: Association to many Teams on teams.league = $self;
}

entity Teams {
  key id   : Integer;
  @mandatory name : String(120);
  @mandatory stadiumName : String(120);
  @mandatory city : String (120);
  @mandatory numberPlayers  : Integer;
  league: Association to Leagues; 
  players: Association to many Players on players.team =$self;
}

entity Players {
  key id   : Integer;
  @mandatory name : String(120);
  @mandatory surname : String(120);
  @mandatory number  : Integer;
  @mandatory active  : Boolean;
  team: Association to Teams;
}