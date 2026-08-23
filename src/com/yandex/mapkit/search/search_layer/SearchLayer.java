package com.yandex.mapkit.search.search_layer;

import com.yandex.mapkit.geometry.Geometry;
import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.map.IconStyle;
import com.yandex.mapkit.search.BusinessFilter;
import com.yandex.mapkit.search.FilterCollection;
import com.yandex.mapkit.search.SearchManager;
import com.yandex.mapkit.search.SearchMetadata;
import com.yandex.mapkit.search.SearchOptions;
import com.yandex.runtime.image.ImageProvider;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface SearchLayer {
    void addPlacemarkListener(PlacemarkListener placemarkListener);

    void addSearchResultListener(SearchResultListener searchResultListener);

    void clear();

    void deselectPlacemark();

    void enableMapMoveOnSearchResponse(boolean z);

    void enableRequestsOnMapMoves(boolean z);

    void fetchNextPage();

    void forceUpdateIcon(String str, PlacemarkIconType placemarkIconType, ImageProvider imageProvider, IconStyle iconStyle);

    void forceUpdateMapObjects();

    List<SearchResultItem> getSearchResultsList();

    boolean hasNextPage();

    boolean isValid();

    boolean isVisible();

    void obtainAdIcons(boolean z);

    void removePlacemarkListener(PlacemarkListener placemarkListener);

    void removeSearchResultListener(SearchResultListener searchResultListener);

    void resetAssetsProvider();

    void resetSort();

    void resubmit();

    void searchByUri(String str, SearchOptions searchOptions);

    SearchMetadata searchMetadata();

    void selectPlacemark(String str);

    String selectedPlacemarkId();

    void setAssetsProvider(AssetsProvider assetsProvider);

    void setFilterCollection(FilterCollection filterCollection);

    @Deprecated
    void setFilters(List<BusinessFilter> list);

    void setInsets(int i, int i2, int i3, int i4);

    void setPolylinePosition(PolylinePosition polylinePosition);

    void setSearchManager(SearchManager searchManager);

    void setSortByDistance(Geometry geometry);

    void setVisible(boolean z);

    void submitQuery(String str, Geometry geometry, SearchOptions searchOptions);

    void submitQuery(String str, SearchOptions searchOptions);
}
