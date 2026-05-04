package com.yandex.runtime.sensors.internal.wifi;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class WifiPointInfo implements Serializable {
    private String bssid;
    private int level;
    private String ssid;
    private long timestampMilliseconds;

    public WifiPointInfo(String str, String str2, int i, long j) {
        this.bssid = str;
        this.ssid = str2;
        this.level = i;
        this.timestampMilliseconds = j;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.bssid = archive.add(this.bssid, false);
        this.ssid = archive.add(this.ssid, false);
        this.level = archive.add(this.level);
        this.timestampMilliseconds = archive.add(this.timestampMilliseconds);
    }
}
