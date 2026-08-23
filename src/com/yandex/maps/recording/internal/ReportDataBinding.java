package com.yandex.maps.recording.internal;

import com.yandex.maps.recording.ReportData;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class ReportDataBinding implements ReportData {
    private final NativeObject nativeObject;

    @Override // com.yandex.maps.recording.ReportData
    public native byte[] data();

    @Override // com.yandex.maps.recording.ReportData
    public native long getEndTime();

    @Override // com.yandex.maps.recording.ReportData
    public native long getStartTime();

    public ReportDataBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
