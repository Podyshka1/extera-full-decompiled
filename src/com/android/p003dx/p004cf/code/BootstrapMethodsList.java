package com.android.p003dx.p004cf.code;

import com.android.p003dx.rop.cst.CstMethodHandle;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.util.FixedSizeList;

/* JADX INFO: loaded from: classes4.dex */
public class BootstrapMethodsList extends FixedSizeList {
    public static final BootstrapMethodsList EMPTY = new BootstrapMethodsList(0);

    public BootstrapMethodsList(int i) {
        super(i);
    }

    public Item get(int i) {
        return (Item) get0(i);
    }

    public void set(int i, Item item) {
        if (item == null) {
            throw new NullPointerException("item == null");
        }
        set0(i, item);
    }

    public void set(int i, CstType cstType, CstMethodHandle cstMethodHandle, BootstrapMethodArgumentsList bootstrapMethodArgumentsList) {
        set(i, new Item(cstType, cstMethodHandle, bootstrapMethodArgumentsList));
    }

    public static BootstrapMethodsList concat(BootstrapMethodsList bootstrapMethodsList, BootstrapMethodsList bootstrapMethodsList2) {
        BootstrapMethodsList bootstrapMethodsList3 = EMPTY;
        if (bootstrapMethodsList == bootstrapMethodsList3) {
            return bootstrapMethodsList2;
        }
        if (bootstrapMethodsList2 == bootstrapMethodsList3) {
            return bootstrapMethodsList;
        }
        int size = bootstrapMethodsList.size();
        int size2 = bootstrapMethodsList2.size();
        BootstrapMethodsList bootstrapMethodsList4 = new BootstrapMethodsList(size + size2);
        for (int i = 0; i < size; i++) {
            bootstrapMethodsList4.set(i, bootstrapMethodsList.get(i));
        }
        for (int i2 = 0; i2 < size2; i2++) {
            bootstrapMethodsList4.set(size + i2, bootstrapMethodsList2.get(i2));
        }
        return bootstrapMethodsList4;
    }

    public static class Item {
        private final BootstrapMethodArgumentsList bootstrapMethodArgumentsList;
        private final CstMethodHandle bootstrapMethodHandle;
        private final CstType declaringClass;

        public Item(CstType cstType, CstMethodHandle cstMethodHandle, BootstrapMethodArgumentsList bootstrapMethodArgumentsList) {
            if (cstType == null) {
                throw new NullPointerException("declaringClass == null");
            }
            if (cstMethodHandle == null) {
                throw new NullPointerException("bootstrapMethodHandle == null");
            }
            if (bootstrapMethodArgumentsList == null) {
                throw new NullPointerException("bootstrapMethodArguments == null");
            }
            this.bootstrapMethodHandle = cstMethodHandle;
            this.bootstrapMethodArgumentsList = bootstrapMethodArgumentsList;
            this.declaringClass = cstType;
        }

        public CstMethodHandle getBootstrapMethodHandle() {
            return this.bootstrapMethodHandle;
        }

        public BootstrapMethodArgumentsList getBootstrapMethodArguments() {
            return this.bootstrapMethodArgumentsList;
        }

        public CstType getDeclaringClass() {
            return this.declaringClass;
        }
    }
}
