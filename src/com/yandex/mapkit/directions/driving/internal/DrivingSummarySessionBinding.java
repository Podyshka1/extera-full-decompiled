package com.yandex.mapkit.directions.driving.internal;

import com.yandex.mapkit.directions.driving.DrivingSummarySession;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class DrivingSummarySessionBinding implements DrivingSummarySession {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.directions.driving.DrivingSummarySession
    public native void cancel();

    @Override // com.yandex.mapkit.directions.driving.DrivingSummarySession
    public native void retry(DrivingSummarySession.DrivingSummaryListener drivingSummaryListener);

    public DrivingSummarySessionBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
