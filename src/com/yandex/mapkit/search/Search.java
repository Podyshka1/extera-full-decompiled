package com.yandex.mapkit.search;

import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.search.search_layer.SearchLayer;

/* JADX INFO: loaded from: classes5.dex */
public interface Search {
    SearchLayer createSearchLayer(MapWindow mapWindow);

    SearchManager createSearchManager(SearchManagerType searchManagerType);

    boolean isValid();
}
