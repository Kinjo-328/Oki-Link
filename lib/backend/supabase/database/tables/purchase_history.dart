import '../database.dart';

class PurchaseHistoryTable extends SupabaseTable<PurchaseHistoryRow> {
  @override
  String get tableName => 'purchase_history';

  @override
  PurchaseHistoryRow createRow(Map<String, dynamic> data) =>
      PurchaseHistoryRow(data);
}

class PurchaseHistoryRow extends SupabaseDataRow {
  PurchaseHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PurchaseHistoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  int get amount => getField<int>('amount')!;
  set amount(int value) => setField<int>('amount', value);

  String get productName => getField<String>('product_name')!;
  set productName(String value) => setField<String>('product_name', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
