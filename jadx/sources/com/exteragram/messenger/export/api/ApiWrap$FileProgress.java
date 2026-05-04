package com.exteragram.messenger.export.api;

import com.android.tools.p007r8.RecordTag;
import com.exteragram.messenger.p008ai.p009ui.AbstractC1011x1d8a54ff;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiWrap$FileProgress extends RecordTag {
    private final long ready;
    private final long total;

    private /* synthetic */ boolean $record$equals(Object obj) {
        if (!(obj instanceof ApiWrap$FileProgress)) {
            return false;
        }
        ApiWrap$FileProgress apiWrap$FileProgress = (ApiWrap$FileProgress) obj;
        return this.ready == apiWrap$FileProgress.ready && this.total == apiWrap$FileProgress.total;
    }

    private /* synthetic */ Object[] $record$getFieldsAsObjects() {
        return new Object[]{Long.valueOf(this.ready), Long.valueOf(this.total)};
    }

    public ApiWrap$FileProgress(long j, long j2) {
        this.ready = j;
        this.total = j2;
    }

    public final boolean equals(Object obj) {
        return $record$equals(obj);
    }

    public final int hashCode() {
        return ApiWrap$FileProgress$$ExternalSyntheticRecord0.m235m(this.ready, this.total);
    }

    public long ready() {
        return this.ready;
    }

    public final String toString() {
        return AbstractC1011x1d8a54ff.m224m($record$getFieldsAsObjects(), ApiWrap$FileProgress.class, "ready;total");
    }

    public long total() {
        return this.total;
    }
}
