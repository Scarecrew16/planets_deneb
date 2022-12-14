class Planet {
  //int id
  final int? id;
  final String name;
  final String image;
  final String description;
  final String type;
  final String nature;
  final String size;
  final String distance;
  final String rotation;
  final String translation;

  Planet(
      {this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.type,
      required this.nature,
      required this.size,
      required this.distance,
      required this.rotation,
      required this.translation});

  factory Planet.fromMap(Map<String, dynamic> json) => Planet(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      description: json['description'],
      type: json['type'],
      nature: json['nature'],
      size: json['size'],
      distance: json['distance'],
      rotation: json['rotation'],
      translation: json['translation']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'type': type,
      'nature': nature,
      'size': size,
      'distance': distance,
      'rotation': rotation,
      'translation': translation
    };
  }
}
