using {Leagues.Services as leagues} from '../db/schema';

service LeaguesService {
    entity Leagues as projection on leagues.Leagues;

    entity Teams as projection on leagues.Teams;

    entity Players as projection on leagues.Players;

};

service LeaguesServiceAdmin {

};
