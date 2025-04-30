import '../database.dart';

class WorkationPackagesTable extends SupabaseTable<WorkationPackagesRow> {
  @override
  String get tableName => 'workation_packages';

  @override
  WorkationPackagesRow createRow(Map<String, dynamic> data) =>
      WorkationPackagesRow(data);
}

class WorkationPackagesRow extends SupabaseDataRow {
  WorkationPackagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WorkationPackagesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  int? get durationDays => getField<int>('duration_days');
  set durationDays(int? value) => setField<int>('duration_days', value);

  List<String> get imageUrls => getListField<String>('image_urls');
  set imageUrls(List<String>? value) =>
      setListField<String>('image_urls', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
