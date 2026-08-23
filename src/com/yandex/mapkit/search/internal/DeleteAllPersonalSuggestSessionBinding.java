package com.yandex.mapkit.search.internal;

import com.yandex.mapkit.search.DeleteAllPersonalSuggestSession;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class DeleteAllPersonalSuggestSessionBinding implements DeleteAllPersonalSuggestSession {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.search.DeleteAllPersonalSuggestSession
    public native void cancel();

    @Override // com.yandex.mapkit.search.DeleteAllPersonalSuggestSession
    public native void retry(DeleteAllPersonalSuggestSession.PersonalSuggestListener personalSuggestListener);

    public DeleteAllPersonalSuggestSessionBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
