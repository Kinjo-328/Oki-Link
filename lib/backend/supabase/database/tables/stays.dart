import '../database.dart';

class StaysTable extends SupabaseTable<StaysRow> {
  @override
  String get tableName => 'stays';

  @override
  StaysRow createRow(Map<String, dynamic> data) => StaysRow(data);
}

class StaysRow extends SupabaseDataRow {
  StaysRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StaysTable();

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
}
