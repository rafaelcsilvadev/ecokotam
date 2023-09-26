class Neighborhood {
  late String name;
  late double lat;
  late double lng;

  Neighborhood({required this.name, required this.lat, required this.lng});

  factory Neighborhood.fromJson(Map<String, dynamic> json) => Neighborhood(
    name: json['name'],
    lat: json['lat'],
    lng: json['lng']
  );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'lat': lat,
      'lng': lng,
    };
  }
}
