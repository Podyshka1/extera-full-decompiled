package com.yandex.mapkit.search;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface FilterCollectionBuilder {
    void addBooleanFilter(String str);

    void addDateFilter(String str, String str2, String str3);

    void addEnumFilter(String str, List<String> list);

    void addRangeFilter(String str, double d, double d2);

    FilterCollection build();
}
