import '../database.dart';

class RentalShopsTable extends SupabaseTable<RentalShopsRow> {
  @override
  String get tableName => 'rental_shops';

  @override
  RentalShopsRow createRow(Map<String, dynamic> data) => RentalShopsRow(data);
}

class RentalShopsRow extends SupabaseDataRow {
  RentalShopsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RentalShopsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  List<String> get imageUrls => getListField<String>('image_urls');
  set imageUrls(List<String>? value) =>
      setListField<String>('image_urls', value);

  String? get rentalType => getField<String>('rental_type');
  set rentalType(String? value) => setField<String>('rental_type', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);
}
