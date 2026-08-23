package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;

/* JADX INFO: loaded from: classes4.dex */
public final class FieldId implements Comparable {
    private final int declaringClassIndex;
    private final Dex dex;
    private final int nameIndex;
    private final int typeIndex;

    public FieldId(Dex dex, int i, int i2, int i3) {
        this.dex = dex;
        this.declaringClassIndex = i;
        this.typeIndex = i2;
        this.nameIndex = i3;
    }

    public int getDeclaringClassIndex() {
        return this.declaringClassIndex;
    }

    public int getTypeIndex() {
        return this.typeIndex;
    }

    public int getNameIndex() {
        return this.nameIndex;
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldId fieldId) {
        int i = this.declaringClassIndex;
        int i2 = fieldId.declaringClassIndex;
        if (i != i2) {
            return Unsigned.compare(i, i2);
        }
        int i3 = this.nameIndex;
        int i4 = fieldId.nameIndex;
        if (i3 != i4) {
            return Unsigned.compare(i3, i4);
        }
        return Unsigned.compare(this.typeIndex, fieldId.typeIndex);
    }

    public void writeTo(Dex.Section section) {
        section.writeUnsignedShort(this.declaringClassIndex);
        section.writeUnsignedShort(this.typeIndex);
        section.writeInt(this.nameIndex);
    }

    public String toString() {
        if (this.dex == null) {
            return this.declaringClassIndex + " " + this.typeIndex + " " + this.nameIndex;
        }
        return ((String) this.dex.typeNames().get(this.typeIndex)) + "." + ((String) this.dex.strings().get(this.nameIndex));
    }
}
