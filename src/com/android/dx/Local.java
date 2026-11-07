package com.android.dx;

import com.android.dx.rop.code.RegisterSpec;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public final class Local<T> {
    private final Code code;
    private int reg = -1;
    private RegisterSpec spec;
    final TypeId<T> type;

    private Local(Code code, TypeId<T> typeId) {
        this.code = code;
        this.type = typeId;
    }

    public static <T> Local<T> get(Code code, TypeId<T> typeId) {
        return new Local<>(code, typeId);
    }

    public int initialize(int i) {
        this.reg = i;
        this.spec = RegisterSpec.make(i, this.type.ropType);
        return size();
    }

    public int size() {
        return this.type.ropType.getCategory();
    }

    public RegisterSpec spec() {
        if (this.spec == null) {
            this.code.initializeLocals();
            if (this.spec == null) {
                AsyncTimeout$$ExternalSyntheticBUOutline0.m962m();
                return null;
            }
        }
        return this.spec;
    }

    public TypeId getType() {
        return this.type;
    }

    public String toString() {
        return RegisterSpec.PREFIX + this.reg + "(" + this.type + ")";
    }
}
