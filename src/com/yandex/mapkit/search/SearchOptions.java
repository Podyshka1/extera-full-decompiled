package com.yandex.mapkit.search;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class SearchOptions implements Serializable {
    private boolean disableSpellingCorrection;
    private FilterCollection filters;
    private boolean geometry;
    private String origin;
    private Integer resultPageSize;
    private int searchTypes;
    private int snippets;
    private Point userPosition;

    public SearchOptions(int i, Integer num, int i2, Point point, String str, boolean z, boolean z2, FilterCollection filterCollection) {
        this.searchTypes = SearchType.NONE.value;
        this.resultPageSize = null;
        int i3 = Snippet.NONE.value;
        this.searchTypes = i;
        this.resultPageSize = num;
        this.snippets = i2;
        this.userPosition = point;
        this.origin = str;
        this.geometry = z;
        this.disableSpellingCorrection = z2;
        this.filters = filterCollection;
    }

    public SearchOptions() {
        this.searchTypes = SearchType.NONE.value;
        this.resultPageSize = null;
        this.snippets = Snippet.NONE.value;
        this.userPosition = null;
        this.origin = null;
        this.geometry = false;
        this.disableSpellingCorrection = false;
        this.filters = null;
    }

    public int getSearchTypes() {
        return this.searchTypes;
    }

    public SearchOptions setSearchTypes(int i) {
        this.searchTypes = i;
        return this;
    }

    public Integer getResultPageSize() {
        return this.resultPageSize;
    }

    public SearchOptions setResultPageSize(Integer num) {
        this.resultPageSize = num;
        return this;
    }

    public int getSnippets() {
        return this.snippets;
    }

    public SearchOptions setSnippets(int i) {
        this.snippets = i;
        return this;
    }

    public Point getUserPosition() {
        return this.userPosition;
    }

    public SearchOptions setUserPosition(Point point) {
        this.userPosition = point;
        return this;
    }

    public String getOrigin() {
        return this.origin;
    }

    public SearchOptions setOrigin(String str) {
        this.origin = str;
        return this;
    }

    public boolean getGeometry() {
        return this.geometry;
    }

    public SearchOptions setGeometry(boolean z) {
        this.geometry = z;
        return this;
    }

    public boolean getDisableSpellingCorrection() {
        return this.disableSpellingCorrection;
    }

    public SearchOptions setDisableSpellingCorrection(boolean z) {
        this.disableSpellingCorrection = z;
        return this;
    }

    public FilterCollection getFilters() {
        return this.filters;
    }

    public SearchOptions setFilters(FilterCollection filterCollection) {
        this.filters = filterCollection;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.searchTypes = archive.add(Integer.valueOf(this.searchTypes), false).intValue();
        this.resultPageSize = archive.add(this.resultPageSize, true);
        this.snippets = archive.add(Integer.valueOf(this.snippets), false).intValue();
        this.userPosition = (Point) archive.add(this.userPosition, true, (Class<Point>) Point.class);
        this.origin = archive.add(this.origin, true);
        this.geometry = archive.add(this.geometry);
        this.disableSpellingCorrection = archive.add(this.disableSpellingCorrection);
        this.filters = (FilterCollection) archive.add(this.filters, true, (Class<FilterCollection>) FilterCollection.class);
    }
}
