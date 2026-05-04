package com.android.p003dx.merge;

import com.android.dex.ClassDef;
import com.android.dex.Dex;
import com.android.dex.DexException;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
final class SortableType {
    public static final Comparator<SortableType> NULLS_LAST_ORDER = new Comparator<SortableType>() { // from class: com.android.dx.merge.SortableType.1
        @Override // java.util.Comparator
        public int compare(SortableType sortableType, SortableType sortableType2) {
            int typeIndex;
            int typeIndex2;
            if (sortableType == sortableType2) {
                return 0;
            }
            if (sortableType2 == null) {
                return -1;
            }
            if (sortableType == null) {
                return 1;
            }
            if (sortableType.depth != sortableType2.depth) {
                typeIndex = sortableType.depth;
                typeIndex2 = sortableType2.depth;
            } else {
                typeIndex = sortableType.getTypeIndex();
                typeIndex2 = sortableType2.getTypeIndex();
            }
            return typeIndex - typeIndex2;
        }
    };
    private final ClassDef classDef;
    private int depth = -1;
    private final Dex dex;
    private final IndexMap indexMap;

    public SortableType(Dex dex, IndexMap indexMap, ClassDef classDef) {
        this.dex = dex;
        this.indexMap = indexMap;
        this.classDef = classDef;
    }

    public Dex getDex() {
        return this.dex;
    }

    public IndexMap getIndexMap() {
        return this.indexMap;
    }

    public ClassDef getClassDef() {
        return this.classDef;
    }

    public int getTypeIndex() {
        return this.classDef.getTypeIndex();
    }

    public boolean tryAssignDepth(SortableType[] sortableTypeArr) {
        int iMax;
        if (this.classDef.getSupertypeIndex() == -1) {
            iMax = 0;
        } else {
            if (this.classDef.getSupertypeIndex() == this.classDef.getTypeIndex()) {
                throw new DexException("Class with type index " + this.classDef.getTypeIndex() + " extends itself");
            }
            SortableType sortableType = sortableTypeArr[this.classDef.getSupertypeIndex()];
            if (sortableType == null) {
                iMax = 1;
            } else {
                iMax = sortableType.depth;
                if (iMax == -1) {
                    return false;
                }
            }
        }
        for (short s : this.classDef.getInterfaces()) {
            SortableType sortableType2 = sortableTypeArr[s];
            if (sortableType2 == null) {
                iMax = Math.max(iMax, 1);
            } else {
                int i = sortableType2.depth;
                if (i == -1) {
                    return false;
                }
                iMax = Math.max(iMax, i);
            }
        }
        this.depth = iMax + 1;
        return true;
    }

    public boolean isDepthAssigned() {
        return this.depth != -1;
    }
}
