package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;

/* JADX INFO: loaded from: classes4.dex */
public final class ProtoId implements Comparable {
    private final Dex dex;
    private final int parametersOffset;
    private final int returnTypeIndex;
    private final int shortyIndex;

    public ProtoId(Dex dex, int i, int i2, int i3) {
        this.dex = dex;
        this.shortyIndex = i;
        this.returnTypeIndex = i2;
        this.parametersOffset = i3;
    }

    @Override // java.lang.Comparable
    public int compareTo(ProtoId protoId) {
        int i = this.returnTypeIndex;
        int i2 = protoId.returnTypeIndex;
        if (i != i2) {
            return Unsigned.compare(i, i2);
        }
        return Unsigned.compare(this.parametersOffset, protoId.parametersOffset);
    }

    public int getShortyIndex() {
        return this.shortyIndex;
    }

    public int getReturnTypeIndex() {
        return this.returnTypeIndex;
    }

    public int getParametersOffset() {
        return this.parametersOffset;
    }

    public void writeTo(Dex.Section section) {
        section.writeInt(this.shortyIndex);
        section.writeInt(this.returnTypeIndex);
        section.writeInt(this.parametersOffset);
    }

    public String toString() {
        if (this.dex == null) {
            return this.shortyIndex + " " + this.returnTypeIndex + " " + this.parametersOffset;
        }
        return ((String) this.dex.strings().get(this.shortyIndex)) + ": " + ((String) this.dex.typeNames().get(this.returnTypeIndex)) + " " + this.dex.readTypeList(this.parametersOffset);
    }
}
