import '../database.dart';

class UserEmailsTable extends SupabaseTable<UserEmailsRow> {
  @override
  String get tableName => 'user_emails';

  @override
  UserEmailsRow createRow(Map<String, dynamic> data) => UserEmailsRow(data);
}

class UserEmailsRow extends SupabaseDataRow {
  UserEmailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserEmailsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
