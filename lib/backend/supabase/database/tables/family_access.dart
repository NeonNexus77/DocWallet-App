import '../database.dart';

class FamilyAccessTable extends SupabaseTable<FamilyAccessRow> {
  @override
  String get tableName => 'family_access';

  @override
  FamilyAccessRow createRow(Map<String, dynamic> data) => FamilyAccessRow(data);
}

class FamilyAccessRow extends SupabaseDataRow {
  FamilyAccessRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FamilyAccessTable();

  String get familyId => getField<String>('family_id')!;
  set familyId(String value) => setField<String>('family_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get sharedTo => getField<String>('shared_to');
  set sharedTo(String? value) => setField<String>('shared_to', value);

  int? get dateValidity => getField<int>('date_validity');
  set dateValidity(int? value) => setField<int>('date_validity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
