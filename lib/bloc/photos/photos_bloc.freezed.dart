// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotosState {
  int? get nextPageKey => throw _privateConstructorUsedError;
  List<Photo> get itemList => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotosStateCopyWith<PhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res, PhotosState>;
  @useResult
  $Res call({int? nextPageKey, List<Photo> itemList, Object? error});
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res, $Val extends PhotosState>
    implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPageKey = freezed,
    Object? itemList = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
      itemList: null == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhotosListingStateCopyWith<$Res>
    implements $PhotosStateCopyWith<$Res> {
  factory _$$_PhotosListingStateCopyWith(_$_PhotosListingState value,
          $Res Function(_$_PhotosListingState) then) =
      __$$_PhotosListingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? nextPageKey, List<Photo> itemList, Object? error});
}

/// @nodoc
class __$$_PhotosListingStateCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$_PhotosListingState>
    implements _$$_PhotosListingStateCopyWith<$Res> {
  __$$_PhotosListingStateCopyWithImpl(
      _$_PhotosListingState _value, $Res Function(_$_PhotosListingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPageKey = freezed,
    Object? itemList = null,
    Object? error = freezed,
  }) {
    return _then(_$_PhotosListingState(
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
      itemList: null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_PhotosListingState implements _PhotosListingState {
  const _$_PhotosListingState(
      {this.nextPageKey = 0, final List<Photo> itemList = const [], this.error})
      : _itemList = itemList;

  @override
  @JsonKey()
  final int? nextPageKey;
  final List<Photo> _itemList;
  @override
  @JsonKey()
  List<Photo> get itemList {
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'PhotosState(nextPageKey: $nextPageKey, itemList: $itemList, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotosListingState &&
            (identical(other.nextPageKey, nextPageKey) ||
                other.nextPageKey == nextPageKey) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      nextPageKey,
      const DeepCollectionEquality().hash(_itemList),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotosListingStateCopyWith<_$_PhotosListingState> get copyWith =>
      __$$_PhotosListingStateCopyWithImpl<_$_PhotosListingState>(
          this, _$identity);
}

abstract class _PhotosListingState implements PhotosState {
  const factory _PhotosListingState(
      {final int? nextPageKey,
      final List<Photo> itemList,
      final Object? error}) = _$_PhotosListingState;

  @override
  int? get nextPageKey;
  @override
  List<Photo> get itemList;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PhotosListingStateCopyWith<_$_PhotosListingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhotosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, bool? isNew, bool? isPopular)
        loadPhotos,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, bool? isNew, bool? isPopular)? loadPhotos,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, bool? isNew, bool? isPopular)? loadPhotos,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhotosEvent value) loadPhotos,
    required TResult Function(_RefreshEvent value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPhotosEvent value)? loadPhotos,
    TResult? Function(_RefreshEvent value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhotosEvent value)? loadPhotos,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosEventCopyWith<$Res> {
  factory $PhotosEventCopyWith(
          PhotosEvent value, $Res Function(PhotosEvent) then) =
      _$PhotosEventCopyWithImpl<$Res, PhotosEvent>;
}

/// @nodoc
class _$PhotosEventCopyWithImpl<$Res, $Val extends PhotosEvent>
    implements $PhotosEventCopyWith<$Res> {
  _$PhotosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadPhotosEventCopyWith<$Res> {
  factory _$$_LoadPhotosEventCopyWith(
          _$_LoadPhotosEvent value, $Res Function(_$_LoadPhotosEvent) then) =
      __$$_LoadPhotosEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, bool? isNew, bool? isPopular});
}

/// @nodoc
class __$$_LoadPhotosEventCopyWithImpl<$Res>
    extends _$PhotosEventCopyWithImpl<$Res, _$_LoadPhotosEvent>
    implements _$$_LoadPhotosEventCopyWith<$Res> {
  __$$_LoadPhotosEventCopyWithImpl(
      _$_LoadPhotosEvent _value, $Res Function(_$_LoadPhotosEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? isNew = freezed,
    Object? isPopular = freezed,
  }) {
    return _then(_$_LoadPhotosEvent(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isNew: freezed == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPopular: freezed == isPopular
          ? _value.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LoadPhotosEvent implements _LoadPhotosEvent {
  const _$_LoadPhotosEvent({required this.page, this.isNew, this.isPopular});

  @override
  final int page;
  @override
  final bool? isNew;
  @override
  final bool? isPopular;

  @override
  String toString() {
    return 'PhotosEvent.loadPhotos(page: $page, isNew: $isNew, isPopular: $isPopular)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadPhotosEvent &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, isNew, isPopular);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadPhotosEventCopyWith<_$_LoadPhotosEvent> get copyWith =>
      __$$_LoadPhotosEventCopyWithImpl<_$_LoadPhotosEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, bool? isNew, bool? isPopular)
        loadPhotos,
    required TResult Function() refresh,
  }) {
    return loadPhotos(page, isNew, isPopular);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, bool? isNew, bool? isPopular)? loadPhotos,
    TResult? Function()? refresh,
  }) {
    return loadPhotos?.call(page, isNew, isPopular);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, bool? isNew, bool? isPopular)? loadPhotos,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (loadPhotos != null) {
      return loadPhotos(page, isNew, isPopular);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhotosEvent value) loadPhotos,
    required TResult Function(_RefreshEvent value) refresh,
  }) {
    return loadPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPhotosEvent value)? loadPhotos,
    TResult? Function(_RefreshEvent value)? refresh,
  }) {
    return loadPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhotosEvent value)? loadPhotos,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (loadPhotos != null) {
      return loadPhotos(this);
    }
    return orElse();
  }
}

abstract class _LoadPhotosEvent implements PhotosEvent {
  const factory _LoadPhotosEvent(
      {required final int page,
      final bool? isNew,
      final bool? isPopular}) = _$_LoadPhotosEvent;

  int get page;
  bool? get isNew;
  bool? get isPopular;
  @JsonKey(ignore: true)
  _$$_LoadPhotosEventCopyWith<_$_LoadPhotosEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshEventCopyWith<$Res> {
  factory _$$_RefreshEventCopyWith(
          _$_RefreshEvent value, $Res Function(_$_RefreshEvent) then) =
      __$$_RefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshEventCopyWithImpl<$Res>
    extends _$PhotosEventCopyWithImpl<$Res, _$_RefreshEvent>
    implements _$$_RefreshEventCopyWith<$Res> {
  __$$_RefreshEventCopyWithImpl(
      _$_RefreshEvent _value, $Res Function(_$_RefreshEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshEvent implements _RefreshEvent {
  const _$_RefreshEvent();

  @override
  String toString() {
    return 'PhotosEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, bool? isNew, bool? isPopular)
        loadPhotos,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, bool? isNew, bool? isPopular)? loadPhotos,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, bool? isNew, bool? isPopular)? loadPhotos,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPhotosEvent value) loadPhotos,
    required TResult Function(_RefreshEvent value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPhotosEvent value)? loadPhotos,
    TResult? Function(_RefreshEvent value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPhotosEvent value)? loadPhotos,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _RefreshEvent implements PhotosEvent {
  const factory _RefreshEvent() = _$_RefreshEvent;
}
