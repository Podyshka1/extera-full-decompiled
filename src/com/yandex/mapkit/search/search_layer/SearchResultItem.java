package com.yandex.mapkit.search.search_layer;

import com.yandex.mapkit.GeoObject;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.search.SubtitleItem;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface SearchResultItem {
    List<SubtitleItem> details();

    String getCategoryClass();

    GeoObject getGeoObject();

    String getId();

    String getName();

    Point getPoint();

    boolean hasDetails();

    boolean isClosed();

    boolean isCollection();

    boolean isOffline();
}
