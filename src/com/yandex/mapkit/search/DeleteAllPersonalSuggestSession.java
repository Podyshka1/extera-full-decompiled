package com.yandex.mapkit.search;

import com.yandex.runtime.Error;

/* JADX INFO: loaded from: classes5.dex */
public interface DeleteAllPersonalSuggestSession {

    public interface PersonalSuggestListener {
        void onPersonalSuggestError(Error error);

        void onPersonalSuggestSuccess();
    }

    void cancel();

    void retry(PersonalSuggestListener personalSuggestListener);
}
