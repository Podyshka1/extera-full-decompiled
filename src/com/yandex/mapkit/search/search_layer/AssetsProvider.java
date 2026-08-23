package com.yandex.mapkit.search.search_layer;

import com.yandex.mapkit.map.IconStyle;
import com.yandex.runtime.image.ImageProvider;

/* JADX INFO: loaded from: classes5.dex */
public interface AssetsProvider {
    boolean canProvideLabels(SearchResultItem searchResultItem);

    IconStyle iconStyle(SearchResultItem searchResultItem, int i);

    ImageProvider image(SearchResultItem searchResultItem, int i);

    Size size(SearchResultItem searchResultItem, int i);
}
