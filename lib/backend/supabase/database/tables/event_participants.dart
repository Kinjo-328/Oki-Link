import '../database.dart';

class EventParticipantsTable extends SupabaseTable<EventParticipantsRow> {
  @override
  String get tableName => 'event_participants';

  @override
  EventParticipantsRow createRow(Map<String, dynamic> data) =>
      EventParticipantsRow(data);
}

class EventParticipantsRow extends SupabaseDataRow {
  EventParticipantsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventParticipantsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get eventId => getField<String>('event_id');
  set eventId(String? value) => setField<String>('event_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get registeredAt => getField<DateTime>('registered_at');
  set registeredAt(DateTime? value) =>
      setField<DateTime>('registered_at', value);
}
