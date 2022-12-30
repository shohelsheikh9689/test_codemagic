// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supedupar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SupervisorWorkOrderEditEventTearOff {
  const _$SupervisorWorkOrderEditEventTearOff();

  NotesChanged notesChanged(String notes) {
    return NotesChanged(
      notes,
    );
  }
}

/// @nodoc
const $SupervisorWorkOrderEditEvent = _$SupervisorWorkOrderEditEventTearOff();

/// @nodoc
mixin _$SupervisorWorkOrderEditEvent {
  String get notes => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String notes) notesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String notes)? notesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String notes)? notesChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotesChanged value) notesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotesChanged value)? notesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotesChanged value)? notesChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupervisorWorkOrderEditEventCopyWith<SupervisorWorkOrderEditEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupervisorWorkOrderEditEventCopyWith<$Res> {
  factory $SupervisorWorkOrderEditEventCopyWith(
          SupervisorWorkOrderEditEvent value,
          $Res Function(SupervisorWorkOrderEditEvent) then) =
      _$SupervisorWorkOrderEditEventCopyWithImpl<$Res>;
  $Res call({String notes});
}

/// @nodoc
class _$SupervisorWorkOrderEditEventCopyWithImpl<$Res>
    implements $SupervisorWorkOrderEditEventCopyWith<$Res> {
  _$SupervisorWorkOrderEditEventCopyWithImpl(this._value, this._then);

  final SupervisorWorkOrderEditEvent _value;
  // ignore: unused_field
  final $Res Function(SupervisorWorkOrderEditEvent) _then;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $NotesChangedCopyWith<$Res>
    implements $SupervisorWorkOrderEditEventCopyWith<$Res> {
  factory $NotesChangedCopyWith(
          NotesChanged value, $Res Function(NotesChanged) then) =
      _$NotesChangedCopyWithImpl<$Res>;
  @override
  $Res call({String notes});
}

/// @nodoc
class _$NotesChangedCopyWithImpl<$Res>
    extends _$SupervisorWorkOrderEditEventCopyWithImpl<$Res>
    implements $NotesChangedCopyWith<$Res> {
  _$NotesChangedCopyWithImpl(
      NotesChanged _value, $Res Function(NotesChanged) _then)
      : super(_value, (v) => _then(v as NotesChanged));

  @override
  NotesChanged get _value => super._value as NotesChanged;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(NotesChanged(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotesChanged implements NotesChanged {
  const _$NotesChanged(this.notes);

  @override
  final String notes;

  @override
  String toString() {
    return 'SupervisorWorkOrderEditEvent.notesChanged(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotesChanged &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  $NotesChangedCopyWith<NotesChanged> get copyWith =>
      _$NotesChangedCopyWithImpl<NotesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String notes) notesChanged,
  }) {
    return notesChanged(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String notes)? notesChanged,
  }) {
    return notesChanged?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String notes)? notesChanged,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotesChanged value) notesChanged,
  }) {
    return notesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotesChanged value)? notesChanged,
  }) {
    return notesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotesChanged value)? notesChanged,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(this);
    }
    return orElse();
  }
}

abstract class NotesChanged implements SupervisorWorkOrderEditEvent {

  const factory NotesChanged(String notes) = _$NotesChanged;

  @override
  String get notes;
  @override
  @JsonKey(ignore: true)
  $NotesChangedCopyWith<NotesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
