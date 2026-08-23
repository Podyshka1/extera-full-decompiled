package com.yandex.mapkit.search;

/* JADX INFO: loaded from: classes5.dex */
public enum SuggestType {
    UNSPECIFIED(0),
    GEO(1),
    BIZ(2),
    TRANSIT(4);

    public final int value;

    SuggestType(int i) {
        this.value = i;
    }
}
