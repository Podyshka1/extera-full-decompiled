package com.exteragram.messenger.export.api;

import com.android.tools.p007r8.RecordTag;
import com.exteragram.messenger.p008ai.p009ui.AbstractC1011x1d8a54ff;
import org.telegram.messenger.NotificationBadge;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiWrap$UserpicsInfo extends RecordTag {
    private final int count;

    private /* synthetic */ boolean $record$equals(Object obj) {
        return (obj instanceof ApiWrap$UserpicsInfo) && this.count == ((ApiWrap$UserpicsInfo) obj).count;
    }

    private /* synthetic */ Object[] $record$getFieldsAsObjects() {
        return new Object[]{Integer.valueOf(this.count)};
    }

    public ApiWrap$UserpicsInfo(int i) {
        this.count = i;
    }

    public int count() {
        return this.count;
    }

    public final boolean equals(Object obj) {
        return $record$equals(obj);
    }

    public final int hashCode() {
        return ApiWrap$UserpicsInfo$$ExternalSyntheticRecord0.m240m(this.count);
    }

    public final String toString() {
        return AbstractC1011x1d8a54ff.m224m($record$getFieldsAsObjects(), ApiWrap$UserpicsInfo.class, NotificationBadge.NewHtcHomeBadger.COUNT);
    }
}
