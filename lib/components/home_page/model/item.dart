class Item {
  String id;
  String title;
  String category;
  String day;
  String time;

  Item(
      {required this.id,
      required this.title,
      required this.category,
      required this.day,
      required this.time});

  set(String value) => this.category;

  @override
  String toString() {
    return "id: $id title: $title category: $category day: $day time: $time";
  }
}
