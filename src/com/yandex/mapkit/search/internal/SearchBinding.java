package com.yandex.mapkit.search.internal;

import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.search.Search;
import com.yandex.mapkit.search.SearchManager;
import com.yandex.mapkit.search.SearchManagerType;
import com.yandex.mapkit.search.search_layer.SearchLayer;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class SearchBinding implements Search {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.search.Search
    public native SearchLayer createSearchLayer(MapWindow mapWindow);

    @Override // com.yandex.mapkit.search.Search
    public native SearchManager createSearchManager(SearchManagerType searchManagerType);

    @Override // com.yandex.mapkit.search.Search
    public native boolean isValid();

    public SearchBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
