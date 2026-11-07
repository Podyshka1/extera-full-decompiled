package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataItem;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdd extends DataBufferRef {
    private final int zza;

    public zzdd(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zza = i2;
    }

    public final DataItem getDataItem() {
        return new zzdk(this.mDataHolder, this.mDataRow, this.zza);
    }

    public final String toString() {
        return "DataEventRef{ type=" + (getInteger("event_type") == 1 ? "changed" : getInteger("event_type") == 2 ? "deleted" : "unknown") + ", dataitem=" + getDataItem().toString() + " }";
    }
}
