class League {
  int leagueId;
  String name;
  String type;
  String country;
  String countryCode;
  int season;
  String seasonStart;
  String seasonEnd;
  String logo;
  String flag;
  int standings;
  int isCurrent;

  League(
      {
        required this.leagueId,
        required this.name,
        required this.type,
        required this.country,
        required this.countryCode,
        required this.season,
        required this.seasonStart,
        required this.seasonEnd,
        required this.logo,
        required this.flag,
        required this.standings,
        required this.isCurrent});

  factory League.fromJson(Map<String, dynamic> json) {
    return League(
      leagueId: json['leagueId'],
      name: json['name'], 
      type: json['type'],
      country: json['country'],
      countryCode: json['countryCode'],
      season: json['season'],
      seasonStart: json['seasonStart'],
      seasonEnd: json['seasonEnd'],
      logo: json['logo'],
      flag: json['flag'],
      standings: json['standings'],
      isCurrent: json['isCurrent'],
      );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['league_id'] = this.leagueId;
    data['name'] = this.name;
    data['type'] = this.type;
    data['country'] = this.country;
    data['country_code'] = this.countryCode;
    data['season'] = this.season;
    data['season_start'] = this.seasonStart;
    data['season_end'] = this.seasonEnd;
    data['logo'] = this.logo;
    data['flag'] = this.flag;
    data['standings'] = this.standings;
    data['is_current'] = this.isCurrent;
    return data;
  }
}

