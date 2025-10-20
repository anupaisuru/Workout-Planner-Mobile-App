class Equipment {
  final int id;
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinutus;
  final double noOfCalories;
  final bool isHandOvered;

  Equipment({
    required this.id,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImageUrl,
    required this.noOfMinutus,
    required this.noOfCalories,
    required this.isHandOvered,
  });
}
