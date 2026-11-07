package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SniffFailure;

/* JADX INFO: loaded from: classes4.dex */
public final class AtomSizeTooSmallSniffFailure implements SniffFailure {
    public final long atomSize;
    public final int atomType;
    public final int minimumHeaderSize;

    public AtomSizeTooSmallSniffFailure(int i, long j, int i2) {
        this.atomType = i;
        this.atomSize = j;
        this.minimumHeaderSize = i2;
    }

    public String toString() {
        return "AtomSizeTooSmall{type=" + Util.toFourccString(this.atomType) + ", size=" + this.atomSize + ", minHeaderSize=" + this.minimumHeaderSize + "}";
    }
}
