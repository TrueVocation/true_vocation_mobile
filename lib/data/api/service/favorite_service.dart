import 'package:true_vocation_mobile/data/api/repository/favorite_repository.dart';
import 'package:true_vocation_mobile/domain/model/favorites.dart';
import 'package:true_vocation_mobile/domain/model/response.dart';

class FavoriteService {
  Future<CustomResponse> createFavorite(Favorites favorites) async {
    return FavoriteRepository().createFavorite(favorites);
  }

  Future<bool> checkFavoritesUniversity(Favorites favorites) async {
    return FavoriteRepository().checkFavoritesUniversity(favorites);
  }

  Future<bool> checkFavoritesProfession(Favorites favorites) async {
    return FavoriteRepository().checkFavoritesProfession(favorites);
  }

  Future<bool> checkFavoritesSpeciality(Favorites favorites) async {
    return FavoriteRepository().checkFavoritesSpeciality(favorites);
  }

  Future<CustomResponse> deleteFavoritesUniversity(Favorites favorites) async {
    return FavoriteRepository().deleteFavoritesUniversity(favorites);
  }

  Future<CustomResponse> deleteFavoritesProfession(Favorites favorites) async {
    return FavoriteRepository().deleteFavoritesProfession(favorites);
  }

  Future<CustomResponse> deleteFavoritesSpeciality(Favorites favorites) async {
    return FavoriteRepository().deleteFavoritesSpeciality(favorites);
  }
}
