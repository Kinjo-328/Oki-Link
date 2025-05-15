import '../database.dart';

class ExperienceShopsTable extends SupabaseTable<ExperienceShopsRow> {
  @override
  String get tableName => 'experience_shops';

  @override
  ExperienceShopsRow createRow(Map<String, dynamic> data) =>
      ExperienceShopsRow(data);
}

class ExperienceShopsRow extends SupabaseDataRow {
  ExperienceShopsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExperienceShopsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  List<String> get imageUrls => getListField<String>('image_urls');
  set imageUrls(List<String>? value) =>
      setListField<String>('image_urls', value);

  String? get experienceType => getField<String>('experience_type');
  set experienceType(String? value) =>
      setField<String>('experience_type', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);
}
