import '../database.dart';

class FriendshipsTable extends SupabaseTable<FriendshipsRow> {
  @override
  String get tableName => 'friendships';

  @override
  FriendshipsRow createRow(Map<String, dynamic> data) => FriendshipsRow(data);
}

class FriendshipsRow extends SupabaseDataRow {
  FriendshipsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FriendshipsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get friendId => getField<String>('friend_id');
  set friendId(String? value) => setField<String>('friend_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
