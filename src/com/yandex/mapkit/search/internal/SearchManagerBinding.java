package com.yandex.mapkit.search.internal;

import com.yandex.mapkit.geometry.Geometry;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.search.SearchManager;
import com.yandex.mapkit.search.SearchOptions;
import com.yandex.mapkit.search.Session;
import com.yandex.mapkit.search.SuggestSession;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class SearchManagerBinding implements SearchManager {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.search.SearchManager
    public native SuggestSession createSuggestSession();

    @Override // com.yandex.mapkit.search.SearchManager
    public native Session resolveURI(String str, SearchOptions searchOptions, Session.SearchListener searchListener);

    @Override // com.yandex.mapkit.search.SearchManager
    public native Session searchByURI(String str, SearchOptions searchOptions, Session.SearchListener searchListener);

    @Override // com.yandex.mapkit.search.SearchManager
    public native Session submit(Point point, Integer num, SearchOptions searchOptions, Session.SearchListener searchListener);

    @Override // com.yandex.mapkit.search.SearchManager
    public native Session submit(String str, Geometry geometry, SearchOptions searchOptions, Session.SearchListener searchListener);

    @Override // com.yandex.mapkit.search.SearchManager
    public native Session submit(String str, Polyline polyline, Geometry geometry, SearchOptions searchOptions, Session.SearchListener searchListener);

    public SearchManagerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
