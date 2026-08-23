package com.android.dx;

import com.android.dx.rop.type.StdTypeList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class TypeList {
    final StdTypeList ropTypes;
    final TypeId<?>[] types;

    public TypeList(TypeId<?>[] typeIdArr) {
        this.types = (TypeId[]) typeIdArr.clone();
        this.ropTypes = new StdTypeList(typeIdArr.length);
        for (int i = 0; i < typeIdArr.length; i++) {
            this.ropTypes.set(i, typeIdArr[i].ropType);
        }
    }

    public List<TypeId<?>> asList() {
        return Collections.unmodifiableList(Arrays.asList(this.types));
    }

    public boolean equals(Object obj) {
        return (obj instanceof TypeList) && Arrays.equals(((TypeList) obj).types, this.types);
    }

    public int hashCode() {
        return Arrays.hashCode(this.types);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.types.length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(this.types[i]);
        }
        return sb.toString();
    }
}
