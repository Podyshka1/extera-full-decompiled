package com.yandex.mapkit.offline_cache;

import com.yandex.runtime.Error;

/* JADX INFO: loaded from: classes5.dex */
public interface DataMoveListener {
    void onDataMoveCompleted();

    void onDataMoveError(Error error);

    void onDataMoveProgress(int i);
}
