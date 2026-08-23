package com.google.android.exoplayer2.offline;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface FilterableManifest<T> {
    T copy(List<StreamKey> list);
}
