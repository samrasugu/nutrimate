// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileStateImpl _$$UserProfileStateImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileStateImpl(
      userProfile: json['userProfile'] == null
          ? null
          : UserProfile.fromJson(json['userProfile'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      isSignedIn: json['isSignedIn'] as bool?,
    );

Map<String, dynamic> _$$UserProfileStateImplToJson(
        _$UserProfileStateImpl instance) =>
    <String, dynamic>{
      'userProfile': instance.userProfile,
      'user': instance.user,
      'isSignedIn': instance.isSignedIn,
    };
