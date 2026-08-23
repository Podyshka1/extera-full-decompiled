package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;

/* JADX INFO: loaded from: classes4.dex */
public final class MethodId implements Comparable<MethodId> {
    private final int declaringClassIndex;
    private final Dex dex;
    private final int nameIndex;
    private final int protoIndex;

    public MethodId(Dex dex, int i, int i2, int i3) {
        this.dex = dex;
        this.declaringClassIndex = i;
        this.protoIndex = i2;
        this.nameIndex = i3;
    }

    public int getDeclaringClassIndex() {
        return this.declaringClassIndex;
    }

    public int getProtoIndex() {
        return this.protoIndex;
    }

    public int getNameIndex() {
        return this.nameIndex;
    }

    @Override // java.lang.Comparable
    public int compareTo(MethodId methodId) {
        int i = this.declaringClassIndex;
        int i2 = methodId.declaringClassIndex;
        if (i != i2) {
            return Unsigned.compare(i, i2);
        }
        int i3 = this.nameIndex;
        int i4 = methodId.nameIndex;
        if (i3 != i4) {
            return Unsigned.compare(i3, i4);
        }
        return Unsigned.compare(this.protoIndex, methodId.protoIndex);
    }

    public void writeTo(Dex.Section section) {
        section.writeUnsignedShort(this.declaringClassIndex);
        section.writeUnsignedShort(this.protoIndex);
        section.writeInt(this.nameIndex);
    }

    public String toString() {
        if (this.dex == null) {
            return this.declaringClassIndex + " " + this.protoIndex + " " + this.nameIndex;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.dex.typeNames().get(this.declaringClassIndex));
        sb.append(".");
        sb.append(this.dex.strings().get(this.nameIndex));
        Dex dex = this.dex;
        sb.append(dex.readTypeList(dex.protoIds().get(this.protoIndex).getParametersOffset()));
        return sb.toString();
    }
}
