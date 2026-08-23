package com.yandex.mapkit.search.search_layer.internal;

import com.yandex.mapkit.geometry.Geometry;
import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.map.IconStyle;
import com.yandex.mapkit.search.BusinessFilter;
import com.yandex.mapkit.search.FilterCollection;
import com.yandex.mapkit.search.SearchManager;
import com.yandex.mapkit.search.SearchMetadata;
import com.yandex.mapkit.search.SearchOptions;
import com.yandex.mapkit.search.search_layer.AssetsProvider;
import com.yandex.mapkit.search.search_layer.PlacemarkIconType;
import com.yandex.mapkit.search.search_layer.PlacemarkListener;
import com.yandex.mapkit.search.search_layer.SearchLayer;
import com.yandex.mapkit.search.search_layer.SearchResultItem;
import com.yandex.mapkit.search.search_layer.SearchResultListener;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.image.ImageProvider;
import com.yandex.runtime.subscription.Subscription;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SearchLayerBinding implements SearchLayer {
    private final NativeObject nativeObject;
    protected Subscription<AssetsProvider> assetsProviderSubscription = new Subscription<AssetsProvider>() { // from class: com.yandex.mapkit.search.search_layer.internal.SearchLayerBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(AssetsProvider assetsProvider) {
            return SearchLayerBinding.createAssetsProvider(assetsProvider);
        }
    };
    protected Subscription<PlacemarkListener> placemarkListenerSubscription = new Subscription<PlacemarkListener>() { // from class: com.yandex.mapkit.search.search_layer.internal.SearchLayerBinding.2
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(PlacemarkListener placemarkListener) {
            return SearchLayerBinding.createPlacemarkListener(placemarkListener);
        }
    };
    protected Subscription<SearchResultListener> searchResultListenerSubscription = new Subscription<SearchResultListener>() { // from class: com.yandex.mapkit.search.search_layer.internal.SearchLayerBinding.3
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(SearchResultListener searchResultListener) {
            return SearchLayerBinding.createSearchResultListener(searchResultListener);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createAssetsProvider(AssetsProvider assetsProvider);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createPlacemarkListener(PlacemarkListener placemarkListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createSearchResultListener(SearchResultListener searchResultListener);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void addPlacemarkListener(PlacemarkListener placemarkListener);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void addSearchResultListener(SearchResultListener searchResultListener);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void clear();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void deselectPlacemark();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void enableMapMoveOnSearchResponse(boolean z);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void enableRequestsOnMapMoves(boolean z);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void fetchNextPage();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void forceUpdateIcon(String str, PlacemarkIconType placemarkIconType, ImageProvider imageProvider, IconStyle iconStyle);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void forceUpdateMapObjects();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native List<SearchResultItem> getSearchResultsList();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native boolean hasNextPage();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native boolean isValid();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native boolean isVisible();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void obtainAdIcons(boolean z);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void removePlacemarkListener(PlacemarkListener placemarkListener);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void removeSearchResultListener(SearchResultListener searchResultListener);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void resetAssetsProvider();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void resetSort();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void resubmit();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void searchByUri(String str, SearchOptions searchOptions);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native SearchMetadata searchMetadata();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void selectPlacemark(String str);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native String selectedPlacemarkId();

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void setAssetsProvider(AssetsProvider assetsProvider);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void setFilterCollection(FilterCollection filterCollection);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    @Deprecated
    public native void setFilters(List<BusinessFilter> list);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void setInsets(int i, int i2, int i3, int i4);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void setPolylinePosition(PolylinePosition polylinePosition);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void setSearchManager(SearchManager searchManager);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void setSortByDistance(Geometry geometry);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void setVisible(boolean z);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void submitQuery(String str, Geometry geometry, SearchOptions searchOptions);

    @Override // com.yandex.mapkit.search.search_layer.SearchLayer
    public native void submitQuery(String str, SearchOptions searchOptions);

    public SearchLayerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
