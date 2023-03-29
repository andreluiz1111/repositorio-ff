// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profissionalStatus;
    if (value != null) {
      result
        ..add('profissional_status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.horarios;
    if (value != null) {
      result
        ..add('horarios')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DateTime)])));
    }
    value = object.tpUser;
    if (value != null) {
      result
        ..add('tp_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cpf;
    if (value != null) {
      result
        ..add('cpf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.whatsapp;
    if (value != null) {
      result
        ..add('whatsapp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nascimento;
    if (value != null) {
      result
        ..add('nascimento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.plano;
    if (value != null) {
      result
        ..add('plano')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medico;
    if (value != null) {
      result
        ..add('medico')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profissional_status':
          result.profissionalStatus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'horarios':
          result.horarios.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DateTime)]))!
              as BuiltList<Object?>);
          break;
        case 'tp_user':
          result.tpUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpf':
          result.cpf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'whatsapp':
          result.whatsapp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nascimento':
          result.nascimento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'plano':
          result.plano = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medico':
          result.medico = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final bool? profissionalStatus;
  @override
  final BuiltList<DateTime>? horarios;
  @override
  final String? tpUser;
  @override
  final String? cpf;
  @override
  final String? whatsapp;
  @override
  final String? nascimento;
  @override
  final String? plano;
  @override
  final DocumentReference<Object?>? medico;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.profissionalStatus,
      this.horarios,
      this.tpUser,
      this.cpf,
      this.whatsapp,
      this.nascimento,
      this.plano,
      this.medico,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        profissionalStatus == other.profissionalStatus &&
        horarios == other.horarios &&
        tpUser == other.tpUser &&
        cpf == other.cpf &&
        whatsapp == other.whatsapp &&
        nascimento == other.nascimento &&
        plano == other.plano &&
        medico == other.medico &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, profissionalStatus.hashCode);
    _$hash = $jc(_$hash, horarios.hashCode);
    _$hash = $jc(_$hash, tpUser.hashCode);
    _$hash = $jc(_$hash, cpf.hashCode);
    _$hash = $jc(_$hash, whatsapp.hashCode);
    _$hash = $jc(_$hash, nascimento.hashCode);
    _$hash = $jc(_$hash, plano.hashCode);
    _$hash = $jc(_$hash, medico.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('profissionalStatus', profissionalStatus)
          ..add('horarios', horarios)
          ..add('tpUser', tpUser)
          ..add('cpf', cpf)
          ..add('whatsapp', whatsapp)
          ..add('nascimento', nascimento)
          ..add('plano', plano)
          ..add('medico', medico)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _profissionalStatus;
  bool? get profissionalStatus => _$this._profissionalStatus;
  set profissionalStatus(bool? profissionalStatus) =>
      _$this._profissionalStatus = profissionalStatus;

  ListBuilder<DateTime>? _horarios;
  ListBuilder<DateTime> get horarios =>
      _$this._horarios ??= new ListBuilder<DateTime>();
  set horarios(ListBuilder<DateTime>? horarios) => _$this._horarios = horarios;

  String? _tpUser;
  String? get tpUser => _$this._tpUser;
  set tpUser(String? tpUser) => _$this._tpUser = tpUser;

  String? _cpf;
  String? get cpf => _$this._cpf;
  set cpf(String? cpf) => _$this._cpf = cpf;

  String? _whatsapp;
  String? get whatsapp => _$this._whatsapp;
  set whatsapp(String? whatsapp) => _$this._whatsapp = whatsapp;

  String? _nascimento;
  String? get nascimento => _$this._nascimento;
  set nascimento(String? nascimento) => _$this._nascimento = nascimento;

  String? _plano;
  String? get plano => _$this._plano;
  set plano(String? plano) => _$this._plano = plano;

  DocumentReference<Object?>? _medico;
  DocumentReference<Object?>? get medico => _$this._medico;
  set medico(DocumentReference<Object?>? medico) => _$this._medico = medico;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _profissionalStatus = $v.profissionalStatus;
      _horarios = $v.horarios?.toBuilder();
      _tpUser = $v.tpUser;
      _cpf = $v.cpf;
      _whatsapp = $v.whatsapp;
      _nascimento = $v.nascimento;
      _plano = $v.plano;
      _medico = $v.medico;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              profissionalStatus: profissionalStatus,
              horarios: _horarios?.build(),
              tpUser: tpUser,
              cpf: cpf,
              whatsapp: whatsapp,
              nascimento: nascimento,
              plano: plano,
              medico: medico,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'horarios';
        _horarios?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
