package com.android.dx.rop.cst;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.util.Hex;
import com.android.dx.util.MutabilityControl;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class StdConstantPool extends MutabilityControl implements ConstantPool {
    private final Constant[] entries;

    public StdConstantPool(int i) {
        super(i > 1);
        if (i < 1) {
            f$$ExternalSyntheticBUOutline1.m178m("size < 1");
            throw null;
        }
        this.entries = new Constant[i];
    }

    @Override // com.android.dx.rop.cst.ConstantPool
    public int size() {
        return this.entries.length;
    }

    @Override // com.android.dx.rop.cst.ConstantPool
    public Constant getOrNull(int i) {
        try {
            return this.entries[i];
        } catch (IndexOutOfBoundsException unused) {
            return throwInvalid(i);
        }
    }

    @Override // com.android.dx.rop.cst.ConstantPool
    public Constant get0Ok(int i) {
        if (i == 0) {
            return null;
        }
        return get(i);
    }

    @Override // com.android.dx.rop.cst.ConstantPool
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

    @Override // com.android.dx.rop.cst.ConstantPool
    public Constant[] getEntries() {
        return this.entries;
    }

    public void set(int i, Constant constant) {
        int i2;
        Constant constant2;
        throwIfImmutable();
        boolean z = constant != null && constant.isCategory2();
        if (i < 1) {
            f$$ExternalSyntheticBUOutline1.m178m("n < 1");
            return;
        }
        if (z) {
            Constant[] constantArr = this.entries;
            if (i == constantArr.length - 1) {
                f$$ExternalSyntheticBUOutline1.m178m("(n == size - 1) && cst.isCategory2()");
                return;
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
        throw new ExceptionWithContext("invalid constant pool index " + Hex.u2(i));
    }
}
