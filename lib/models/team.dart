class Team {
  int teamId;
  String name;
  String logo;
  String country;
  int founded;
  String venueName;
  String venueSurface;
  String venueAddress;
  String venueCity;
  int venueCapacity;

  Team(
      {
      required this.teamId,
      required this.name,
      required this.logo,
      required this.country,
      required this.founded,
      required this.venueName,
      required this.venueSurface,
      required this.venueAddress,
      required this.venueCity,
      required this.venueCapacity});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      teamId: json['teamId'],
      name: json['name'],
      logo: json['logo'],
      country: json['country'],
      founded: json['founded'],
      venueName: json['venueName'],
      venueSurface: json['venueSurface'],
      venueAddress: json['venueAddress'],
      venueCity: json['venueCity'],
      venueCapacity: json['venueCapacity'],
      );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['team_id'] = this.teamId;
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['country'] = this.country;
    data['founded'] = this.founded;
    data['venue_name'] = this.venueName;
    data['venue_surface'] = this.venueSurface;
    data['venue_address'] = this.venueAddress;
    data['venue_city'] = this.venueCity;
    data['venue_capacity'] = this.venueCapacity;
    return data;
  }
}
