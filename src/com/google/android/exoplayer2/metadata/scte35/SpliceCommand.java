package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SpliceCommand implements Metadata.Entry {
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "SCTE-35 splice command: type=".concat(getClass().getSimpleName());
    }
}
