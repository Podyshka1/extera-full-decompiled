package com.yandex.maps.recording.internal;

import com.yandex.maps.recording.ReportCollector;
import com.yandex.maps.recording.ReportData;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ReportCollectorBinding implements ReportCollector {
    private final NativeObject nativeObject;

    @Override // com.yandex.maps.recording.ReportCollector
    public native boolean isValid();

    @Override // com.yandex.maps.recording.ReportCollector
    public native List<ReportData> reports();

    public ReportCollectorBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
