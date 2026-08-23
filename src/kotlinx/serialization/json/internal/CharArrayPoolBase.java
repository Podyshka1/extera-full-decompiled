package kotlinx.serialization.json.internal;

import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class CharArrayPoolBase {
    private final ArrayDeque arrays = new ArrayDeque();
    private int charsTotal;

    protected final char[] take(int i) {
        char[] cArr;
        synchronized (this) {
            cArr = (char[]) this.arrays.removeLastOrNull();
            if (cArr != null) {
                this.charsTotal -= cArr.length;
            } else {
                cArr = null;
            }
        }
        return cArr == null ? new char[i] : cArr;
    }

    protected final void releaseImpl(char[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        synchronized (this) {
            try {
                if (this.charsTotal + array.length < ArrayPoolsKt.MAX_CHARS_IN_POOL) {
                    this.charsTotal += array.length;
                    this.arrays.addLast(array);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
