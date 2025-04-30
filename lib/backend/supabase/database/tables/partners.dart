import '../database.dart';

class PartnersTable extends SupabaseTable<PartnersRow> {
  @override
  String get tableName => 'partners';

  @override
  PartnersRow createRow(Map<String, dynamic> data) => PartnersRow(data);
}

class PartnersRow extends SupabaseDataRow {
  PartnersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PartnersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  dynamic get contactInfo => getField<dynamic>('contact_info');
  set contactInfo(dynamic value) => setField<dynamic>('contact_info', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  bool? get priorityDisplay => getField<bool>('priority_display');
  set priorityDisplay(bool? value) => setField<bool>('priority_display', value);
}
