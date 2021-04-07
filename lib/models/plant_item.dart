class PlantItem {
  PlantItem({
    required this.id,
    required this.name,
    required this.category,
    required this.type,
    required this.price,
    required this.description,
    required this.picture,
  });

  static List<PlantItem> getPlants() {
    return [
      PlantItem(
        id: '123',
        name: 'Snake',
        category: 'Indoor',
        type: 'Monstera',
        price: 44.45,
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis in risus eget semper. Praesent non orci eu ante luctus ultricies vel nec augue.',
        picture: 'plant-1.png',
      ),
      PlantItem(
        id: '456',
        name: 'Zeylanica',
        category: 'Outdoor',
        type: 'Cactus',
        price: 44.45,
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis in risus eget semper. Praesent non orci eu ante luctus ultricies vel nec augue.',
        picture: 'plant-2.png',
      ),
      PlantItem(
        id: '789',
        name: 'Adonis',
        category: 'Indoor',
        type: 'Calathea',
        price: 44.45,
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse iaculis in risus eget semper. Praesent non orci eu ante luctus ultricies vel nec augue.',
        picture: 'plant-3.png',
      ),
    ];
  }

  final String id;
  final String name;
  final String category;
  final String type;
  final double price;
  final String description;
  final String picture;
}
