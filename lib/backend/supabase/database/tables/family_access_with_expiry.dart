import '../database.dart';

class FamilyAccessWithExpiryTable
    extends SupabaseTable<FamilyAccessWithExpiryRow> {
  @override
  String get tableName => 'family_access_with_expiry';

  @override
  FamilyAccessWithExpiryRow createRow(Map<String, dynamic> data) =>
      FamilyAccessWithExpiryRow(data);
}

class FamilyAccessWithExpiryRow extends SupabaseDataRow {
  FamilyAccessWithExpiryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FamilyAccessWithExpiryTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get sharedTo => getField<String>('shared_to');
  set sharedTo(String? value) => setField<String>('shared_to', value);

  String? get ownerName => getField<String>('owner_name');
  set ownerName(String? value) => setField<String>('owner_name', value);

  String? get sharedToName => getField<String>('shared_to_name');
  set sharedToName(String? value) => setField<String>('shared_to_name', value);

  String? get sharedToEmail => getField<String>('shared_to_email');
  set sharedToEmail(String? value) =>
      setField<String>('shared_to_email', value);

  DateTime? get expiresDate => getField<DateTime>('expires_date');
  set expiresDate(DateTime? value) => setField<DateTime>('expires_date', value);
}
