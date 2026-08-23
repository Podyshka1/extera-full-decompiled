package com.yandex.mapkit.search;

import com.yandex.mapkit.geometry.Geometry;
import com.yandex.runtime.Error;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Session {

    public interface SearchListener {
        void onSearchError(Error error);

        void onSearchResponse(Response response);
    }

    void cancel();

    void fetchNextPage(SearchListener searchListener);

    boolean hasNextPage();

    void resetSort();

    void resubmit(SearchListener searchListener);

    void retry(SearchListener searchListener);

    @Deprecated
    void setFilters(List<BusinessFilter> list);

    void setSearchArea(Geometry geometry);

    void setSearchOptions(SearchOptions searchOptions);

    void setSortByDistance(Geometry geometry);
}
