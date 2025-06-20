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

  int? get includedDays => getField<int>('included_days');
  set includedDays(int? value) => setField<int>('included_days', value);

  int? get displayOrder => getField<int>('display_order');
  set displayOrder(int? value) => setField<int>('display_order', value);

  String? get stayShopId => getField<String>('stay_shop_id');
  set stayShopId(String? value) => setField<String>('stay_shop_id', value);

  String? get rentalShopId => getField<String>('rental_shop_id');
  set rentalShopId(String? value) => setField<String>('rental_shop_id', value);

  String? get experienceShopId => getField<String>('experience_shop_id');
  set experienceShopId(String? value) =>
      setField<String>('experience_shop_id', value);
}
