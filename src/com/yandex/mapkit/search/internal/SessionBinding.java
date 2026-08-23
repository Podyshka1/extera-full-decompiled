package com.yandex.mapkit.search.internal;

import com.yandex.mapkit.geometry.Geometry;
import com.yandex.mapkit.search.BusinessFilter;
import com.yandex.mapkit.search.SearchOptions;
import com.yandex.mapkit.search.Session;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SessionBinding implements Session {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.search.Session
    public native void cancel();

    @Override // com.yandex.mapkit.search.Session
    public native void fetchNextPage(Session.SearchListener searchListener);

    @Override // com.yandex.mapkit.search.Session
    public native boolean hasNextPage();

    @Override // com.yandex.mapkit.search.Session
    public native void resetSort();

    @Override // com.yandex.mapkit.search.Session
    public native void resubmit(Session.SearchListener searchListener);

    @Override // com.yandex.mapkit.search.Session
    public native void retry(Session.SearchListener searchListener);

    @Override // com.yandex.mapkit.search.Session
    @Deprecated
    public native void setFilters(List<BusinessFilter> list);

    @Override // com.yandex.mapkit.search.Session
    public native void setSearchArea(Geometry geometry);

    @Override // com.yandex.mapkit.search.Session
    public native void setSearchOptions(SearchOptions searchOptions);

    @Override // com.yandex.mapkit.search.Session
    public native void setSortByDistance(Geometry geometry);

    public SessionBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
