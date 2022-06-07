import 'package:true_vocation_mobile/domain/model/favorites.dart';
import 'package:true_vocation_mobile/domain/model/response.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class FavoriteRepository {
  Future<CustomResponse> createFavorite(Favorites favorites) async {
    final response = await ApiConstants.dio.post(
      '/api/favorites',
      data: favorites.toJson(),
    );

    if (response.statusCode! >= 400) {
      return CustomResponse(code: response.statusCode!, title: response.statusMessage!);
    }
    else {
      return const CustomResponse(code: 200, title: '');
    }
  }

  Future<bool> checkFavoritesUniversity(Favorites favorites) async {
    final response = await ApiConstants.dio.post(
      '/api/check-favorites-university', data: favorites.toJson(),
    );
    return response.data;
  }

  Future<bool> checkFavoritesProfession(Favorites favorites) async {
    final response = await ApiConstants.dio.post(
      '/api/check-favorites-profession', data: favorites.toJson(),
    );
    return response.data;
  }

  Future<bool> checkFavoritesSpeciality(Favorites favorites) async {
    final response = await ApiConstants.dio.post(
      '/api/check-favorites-speciality', data: favorites.toJson(),
    );
    return response.data;
  }

  Future<CustomResponse> deleteFavoritesUniversity(Favorites favorites) async {
    final response = await ApiConstants.dio.delete(
      '/api/delete-favorites-university', data: favorites.toJson(),
    );
    if (response.statusCode! >= 400){
      return CustomResponse(code: response.statusCode!, title: 'Try again');
    } else {
      return const CustomResponse(code: 200, title: 'Try again');
    }
  }

  Future<CustomResponse> deleteFavoritesProfession(Favorites favorites) async {
    final response = await ApiConstants.dio.delete(
      '/api/delete-favorites-profession', data: favorites.toJson(),
    );
    if (response.statusCode! >= 400){
      return CustomResponse(code: response.statusCode!, title: 'Try again');
    } else {
      return const CustomResponse(code: 200, title: 'Try again');
    }
  }

  Future<CustomResponse> deleteFavoritesSpeciality(Favorites favorites) async {
    final response = await ApiConstants.dio.delete(
      '/api/delete-favorites-speciality', data: favorites.toJson(),
    );
    if (response.statusCode! >= 400){
      return CustomResponse(code: response.statusCode!, title: 'Try again');
    } else {
      return const CustomResponse(code: 200, title: 'Try again');
    }
  }
}
