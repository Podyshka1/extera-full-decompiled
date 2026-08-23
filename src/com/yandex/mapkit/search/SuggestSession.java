package com.yandex.mapkit.search;

import com.yandex.mapkit.geometry.BoundingBox;
import com.yandex.runtime.Error;

/* JADX INFO: loaded from: classes5.dex */
public interface SuggestSession {

    public interface SuggestListener {
        void onError(Error error);

        void onResponse(SuggestResponse suggestResponse);
    }

    void reset();

    void suggest(String str, BoundingBox boundingBox, SuggestOptions suggestOptions, SuggestListener suggestListener);
}
