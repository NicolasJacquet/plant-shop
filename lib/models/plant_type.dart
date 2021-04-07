class PlantType {
  PlantType({
    required this.id,
    required this.name,
  });

  static List<PlantType> getTypes() {
    return [
      PlantType(
        id: '1',
        name: 'Monstera',
      ),
      PlantType(
        id: '2',
        name: 'Calathea',
      ),
      PlantType(
        id: '3',
        name: 'Cactus',
      ),
      PlantType(
        id: '4',
        name: 'Ears',
      ),
    ];
  }

  final String id;
  final String name;
}
