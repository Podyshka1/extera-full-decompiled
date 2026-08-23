package com.android.p003dx.p004cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeBearer;
import com.android.p003dx.util.MutabilityControl;
import com.android.p003dx.util.ToHuman;

/* JADX INFO: loaded from: classes4.dex */
public abstract class LocalsArray extends MutabilityControl implements ToHuman {
    public abstract void annotate(ExceptionWithContext exceptionWithContext);

    public abstract LocalsArray copy();

    public abstract TypeBearer get(int i);

    public abstract TypeBearer getCategory1(int i);

    public abstract TypeBearer getCategory2(int i);

    public abstract int getMaxLocals();

    public abstract TypeBearer getOrNull(int i);

    protected abstract OneLocalsArray getPrimary();

    public abstract void invalidate(int i);

    public abstract void makeInitialized(Type type);

    public abstract LocalsArray merge(LocalsArray localsArray);

    public abstract LocalsArraySet mergeWithSubroutineCaller(LocalsArray localsArray, int i);

    public abstract void set(int i, TypeBearer typeBearer);

    public abstract void set(RegisterSpec registerSpec);

    protected LocalsArray(boolean z) {
        super(z);
    }
}
