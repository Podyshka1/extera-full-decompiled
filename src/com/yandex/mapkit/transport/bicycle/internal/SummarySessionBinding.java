package com.yandex.mapkit.transport.bicycle.internal;

import com.yandex.mapkit.transport.bicycle.SummarySession;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class SummarySessionBinding implements SummarySession {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.transport.bicycle.SummarySession
    public native void cancel();

    @Override // com.yandex.mapkit.transport.bicycle.SummarySession
    public native void retry(SummarySession.SummaryListener summaryListener);

    public SummarySessionBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
