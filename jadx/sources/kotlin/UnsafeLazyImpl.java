package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class UnsafeLazyImpl implements Lazy, Serializable {
    private Object _value;
    private Function0 initializer;

    public UnsafeLazyImpl(Function0 initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        this.initializer = initializer;
        this._value = UNINITIALIZED_VALUE.INSTANCE;
    }

    @Override // kotlin.Lazy
    public Object getValue() {
        if (this._value == UNINITIALIZED_VALUE.INSTANCE) {
            Function0 function0 = this.initializer;
            Intrinsics.checkNotNull(function0);
            this._value = function0.invoke();
            this.initializer = null;
        }
        return this._value;
    }

    @Override // kotlin.Lazy
    public boolean isInitialized() {
        return this._value != UNINITIALIZED_VALUE.INSTANCE;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
