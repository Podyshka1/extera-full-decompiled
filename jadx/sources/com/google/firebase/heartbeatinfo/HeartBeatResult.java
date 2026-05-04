package com.google.firebase.heartbeatinfo;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HeartBeatResult {
    public abstract List getUsedDates();

    public abstract String getUserAgent();

    public static HeartBeatResult create(String str, List list) {
        return new AutoValue_HeartBeatResult(str, list);
    }
}
