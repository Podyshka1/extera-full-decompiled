package com.yandex.mapkit.search.internal;

import com.yandex.mapkit.search.FilterCollection;
import com.yandex.mapkit.search.FilterCollectionBuilder;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class FilterCollectionBuilderBinding implements FilterCollectionBuilder {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.search.FilterCollectionBuilder
    public native void addBooleanFilter(String str);

    @Override // com.yandex.mapkit.search.FilterCollectionBuilder
    public native void addDateFilter(String str, String str2, String str3);

    @Override // com.yandex.mapkit.search.FilterCollectionBuilder
    public native void addEnumFilter(String str, List<String> list);

    @Override // com.yandex.mapkit.search.FilterCollectionBuilder
    public native void addRangeFilter(String str, double d, double d2);

    @Override // com.yandex.mapkit.search.FilterCollectionBuilder
    public native FilterCollection build();

    public FilterCollectionBuilderBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
