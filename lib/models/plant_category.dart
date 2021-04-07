class PlantCategory {
  PlantCategory({
    required this.id,
    required this.label,
  });

  static List<PlantCategory> getCategories() {
    return [
      PlantCategory(
        id: '123',
        label: 'Recommended',
      ),
      PlantCategory(
        id: '456',
        label: 'Top',
      ),
      PlantCategory(
        id: '789',
        label: 'Indoor',
      ),
      PlantCategory(
        id: '987',
        label: 'Garden',
      ),
    ];
  }

  final String id;
  final String label;
}
