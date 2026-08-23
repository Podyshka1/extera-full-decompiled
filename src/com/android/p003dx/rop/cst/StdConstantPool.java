package com.android.p003dx.rop.cst;

import com.android.dex.util.ExceptionWithContext;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.MutabilityControl;

/* JADX INFO: loaded from: classes4.dex */
public final class StdConstantPool extends MutabilityControl implements ConstantPool {
    private final Constant[] entries;

    public StdConstantPool(int i) {
        super(i > 1);
        if (i < 1) {
            throw new IllegalArgumentException("size < 1");
        }
        this.entries = new Constant[i];
    }

    @Override // com.android.p003dx.rop.cst.ConstantPool
    public int size() {
        return this.entries.length;
    }

    @Override // com.android.p003dx.rop.cst.ConstantPool
    public Constant getOrNull(int i) {
        try {
            return this.entries[i];
        } catch (IndexOutOfBoundsException unused) {
            return throwInvalid(i);
        }
    }

    @Override // com.android.p003dx.rop.cst.ConstantPool
    public Constant get0Ok(int i) {
        if (i == 0) {
            return null;
        }
        return get(i);
    }

    @Override // com.android.p003dx.rop.cst.ConstantPool
    public Constant get(int i) {
        try {
            Constant constant = this.entries[i];
            if (constant == null) {
                throwInvalid(i);
            }
            return constant;
        } catch (IndexOutOfBoundsException unused) {
            return throwInvalid(i);
        }
    }

    @Override // com.android.p003dx.rop.cst.ConstantPool
    public Constant[] getEntries() {
        return this.entries;
    }

    public void set(int i, Constant constant) {
        int i2;
        Constant constant2;
        throwIfImmutable();
        boolean z = constant != null && constant.isCategory2();
        if (i < 1) {
            throw new IllegalArgumentException("n < 1");
        }
        if (z) {
            Constant[] constantArr = this.entries;
            if (i == constantArr.length - 1) {
                throw new IllegalArgumentException("(n == size - 1) && cst.isCategory2()");
            }
            constantArr[i + 1] = null;
        }
        if (constant != null) {
            Constant[] constantArr2 = this.entries;
            if (constantArr2[i] == null && (constant2 = constantArr2[i - 1]) != null && constant2.isCategory2()) {
                this.entries[i2] = null;
            }
        }
        this.entries[i] = constant;
    }

    private static Constant throwInvalid(int i) {
        throw new ExceptionWithContext("invalid constant pool index " + Hex.m212u2(i));
    }
}
