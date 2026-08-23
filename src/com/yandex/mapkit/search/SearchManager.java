package com.yandex.mapkit.search;

import com.yandex.mapkit.geometry.Geometry;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.search.Session;

/* JADX INFO: loaded from: classes5.dex */
public interface SearchManager {
    SuggestSession createSuggestSession();

    Session resolveURI(String str, SearchOptions searchOptions, Session.SearchListener searchListener);

    Session searchByURI(String str, SearchOptions searchOptions, Session.SearchListener searchListener);

    Session submit(Point point, Integer num, SearchOptions searchOptions, Session.SearchListener searchListener);

    Session submit(String str, Geometry geometry, SearchOptions searchOptions, Session.SearchListener searchListener);

    Session submit(String str, Polyline polyline, Geometry geometry, SearchOptions searchOptions, Session.SearchListener searchListener);
}
