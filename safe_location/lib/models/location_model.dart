import 'dart:convert';

Location locationFromJson(String str) => Location.fromJson(json.decode(str));

String locationToJson(Location data) => json.encode(data.toJson());

class Location {
    Location({
        this.date,
        this.identification,
        this.geolocation,
        this.reference,
    });

    String? date;
    String? identification;
    String? geolocation;
    String? reference;

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        date: json["date"],
        identification: json["identification"],
        geolocation: json["Geolocation"],
        reference: json["reference"],
    );

    Map<String, dynamic> toJson() => {
        "date": date,
        "identification": identification,
        "Geolocation": geolocation,
        "reference": reference,
    };
}
