import '../database.dart';

class UserBasicViewTable extends SupabaseTable<UserBasicViewRow> {
  @override
  String get tableName => 'user_basic_view';

  @override
  UserBasicViewRow createRow(Map<String, dynamic> data) =>
      UserBasicViewRow(data);
}

class UserBasicViewRow extends SupabaseDataRow {
  UserBasicViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserBasicViewTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
