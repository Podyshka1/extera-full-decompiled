package com.google.firebase.heartbeatinfo;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class AutoValue_HeartBeatResult extends HeartBeatResult {
    private final List usedDates;
    private final String userAgent;

    AutoValue_HeartBeatResult(String str, List list) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.userAgent = str;
        if (list == null) {
            throw new NullPointerException("Null usedDates");
        }
        this.usedDates = list;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public String getUserAgent() {
        return this.userAgent;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public List getUsedDates() {
        return this.usedDates;
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.userAgent + ", usedDates=" + this.usedDates + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof HeartBeatResult) {
            HeartBeatResult heartBeatResult = (HeartBeatResult) obj;
            if (this.userAgent.equals(heartBeatResult.getUserAgent()) && this.usedDates.equals(heartBeatResult.getUsedDates())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.userAgent.hashCode() ^ 1000003) * 1000003) ^ this.usedDates.hashCode();
    }
}
