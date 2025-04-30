import '../database.dart';

class PackageComponentsTable extends SupabaseTable<PackageComponentsRow> {
  @override
  String get tableName => 'package_components';

  @override
  PackageComponentsRow createRow(Map<String, dynamic> data) =>
      PackageComponentsRow(data);
}

class PackageComponentsRow extends SupabaseDataRow {
  PackageComponentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PackageComponentsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get packageId => getField<String>('package_id');
  set packageId(String? value) => setField<String>('package_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get providerId => getField<String>('provider_id');
  set providerId(String? value) => setField<String>('provider_id', value);

  int? get includedDays => getField<int>('included_days');
  set includedDays(int? value) => setField<int>('included_days', value);
}
