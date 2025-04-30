import '../database.dart';

class EventsTable extends SupabaseTable<EventsRow> {
  @override
  String get tableName => 'events';

  @override
  EventsRow createRow(Map<String, dynamic> data) => EventsRow(data);
}

class EventsRow extends SupabaseDataRow {
  EventsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get maxParticipants => getField<int>('max_participants');
  set maxParticipants(int? value) => setField<int>('max_participants', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  String? get hostPartnerId => getField<String>('host_partner_id');
  set hostPartnerId(String? value) =>
      setField<String>('host_partner_id', value);
}
