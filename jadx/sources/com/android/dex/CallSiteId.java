package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;

/* JADX INFO: loaded from: classes4.dex */
public class CallSiteId implements Comparable {
    private final Dex dex;
    private final int offset;

    public CallSiteId(Dex dex, int i) {
        this.dex = dex;
        this.offset = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(CallSiteId callSiteId) {
        return Unsigned.compare(this.offset, callSiteId.offset);
    }

    public int getCallSiteOffset() {
        return this.offset;
    }

    public void writeTo(Dex.Section section) {
        section.writeInt(this.offset);
    }

    public String toString() {
        Dex dex = this.dex;
        if (dex == null) {
            return String.valueOf(this.offset);
        }
        return ((ProtoId) dex.protoIds().get(this.offset)).toString();
    }
}
