import '../database.dart';

class StayShopsTable extends SupabaseTable<StayShopsRow> {
  @override
  String get tableName => 'stay_shops';

  @override
  StayShopsRow createRow(Map<String, dynamic> data) => StayShopsRow(data);
}

class StayShopsRow extends SupabaseDataRow {
  StayShopsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StayShopsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  List<String> get imageUrls => getListField<String>('image_urls');
  set imageUrls(List<String>? value) =>
      setListField<String>('image_urls', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  String? get providerId => getField<String>('provider_id');
  set providerId(String? value) => setField<String>('provider_id', value);
}
