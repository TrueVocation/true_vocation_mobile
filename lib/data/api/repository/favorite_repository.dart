import 'package:true_vocation_mobile/domain/model/favorites.dart';
import 'package:true_vocation_mobile/domain/model/response.dart';
import 'package:true_vocation_mobile/utils/constants.dart';

class FavoriteRepository {
  Future<CustomResponse> createFavorite(Favorites favorites) async {
    final response = await AppConstants.dio.post(
      '/api/favorites',
      data: favorites.toJson(),
    );

    if (response.statusCode! >= 400) {
      return CustomResponse(
          code: response.statusCode!, title: response.statusMessage!);
    } else {
      return const CustomResponse(code: 200, title: '');
    }
  }

  Future<bool> checkFavoritesUniversity(Favorites favorites) async {
    final response = await AppConstants.dio.post(
      '/api/check-favorites-university',
      data: favorites.toJson(),
    );
    return response.data;
  }

  Future<bool> checkFavoritesProfession(Favorites favorites) async {
    final response = await AppConstants.dio.post(
      '/api/check-favorites-profession',
      data: favorites.toJson(),
    );
    return response.data;
  }

  Future<bool> checkFavoritesSpeciality(Favorites favorites) async {
    final response = await AppConstants.dio.post(
      '/api/check-favorites-speciality',
      data: favorites.toJson(),
    );
    return response.data;
  }

  Future<CustomResponse> deleteFavoritesUniversity(Favorites favorites) async {
    final response = await AppConstants.dio.delete(
      '/api/delete-favorites-university',
      data: favorites.toJson(),
    );
    if (response.statusCode! >= 400) {
      return CustomResponse(code: response.statusCode!, title: 'Try again');
    } else {
      return const CustomResponse(code: 200, title: 'Try again');
    }
  }

  Future<CustomResponse> deleteFavoritesProfession(Favorites favorites) async {
    final response = await AppConstants.dio.delete(
      '/api/delete-favorites-profession',
      data: favorites.toJson(),
    );
    if (response.statusCode! >= 400) {
      return CustomResponse(code: response.statusCode!, title: 'Try again');
    } else {
      return const CustomResponse(code: 200, title: 'Try again');
    }
  }

  Future<CustomResponse> deleteFavoritesSpeciality(Favorites favorites) async {
    final response = await AppConstants.dio.delete(
      '/api/delete-favorites-speciality',
      data: favorites.toJson(),
    );
    if (response.statusCode! >= 400) {
      return CustomResponse(code: response.statusCode!, title: 'Try again');
    } else {
      return const CustomResponse(code: 200, title: 'Try again');
    }
  }

  Future<CustomResponse> getFavoriteUniversities(int page, size, userId) async {
    final response = await AppConstants.dio.get(
        '/api/favorites-universities/$userId?page=$page&size=$size&sort=id&order=desc');
    return CustomResponse(code: 200, title: '', body: response.data);
  }

  Future<CustomResponse> getFavoriteProfessions(int page, size, userId) async {
    final response = await AppConstants.dio.get(
        '/api/favorites-professions/$userId?page=$page&size=$size&sort=id&order=desc');
    return CustomResponse(code: 200, title: '', body: response.data);
  }

  Future<CustomResponse> getFavoriteSpecialities(int page, size, userId) async {
    final response = await AppConstants.dio.get(
        '/api/favorites-specialities/$userId?page=$page&size=$size&sort=id&order=desc');
    return CustomResponse(code: 200, title: '', body: response.data);
  }

  Future<CustomResponse> getFavoriteNews(int page, size, userId) async {
    final response = await AppConstants.dio.get(
        '/api/favorites-posts/$userId?page=$page&size=$size&sort=id&order=desc');
    return CustomResponse(code: 200, title: '', body: response.data);
  }
}
