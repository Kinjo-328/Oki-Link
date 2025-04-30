import '../database.dart';

class PurchasesTable extends SupabaseTable<PurchasesRow> {
  @override
  String get tableName => 'purchases';

  @override
  PurchasesRow createRow(Map<String, dynamic> data) => PurchasesRow(data);
}

class PurchasesRow extends SupabaseDataRow {
  PurchasesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PurchasesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get packageId => getField<String>('package_id');
  set packageId(String? value) => setField<String>('package_id', value);

  DateTime? get purchaseDate => getField<DateTime>('purchase_date');
  set purchaseDate(DateTime? value) =>
      setField<DateTime>('purchase_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get paymentId => getField<String>('payment_id');
  set paymentId(String? value) => setField<String>('payment_id', value);

  int? get totalPrice => getField<int>('total_price');
  set totalPrice(int? value) => setField<int>('total_price', value);
}
