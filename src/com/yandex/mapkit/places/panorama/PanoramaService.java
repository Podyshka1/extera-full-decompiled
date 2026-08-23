package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.Error;

/* JADX INFO: loaded from: classes5.dex */
public interface PanoramaService {

    public interface SearchListener {
        void onPanoramaSearchError(Error error);

        void onPanoramaSearchResult(String str);
    }

    public interface SearchSession {
        void cancel();

        void retry(SearchListener searchListener);
    }

    SearchSession findNearest(Point point, SearchListener searchListener);
}
