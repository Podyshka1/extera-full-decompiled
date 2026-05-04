package kotlinx.serialization.json.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.text.StringsKt;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class ArrayPoolsKt {
    private static final int MAX_CHARS_IN_POOL;

    static {
        Object objM3604constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            objM3604constructorimpl = Result.m3604constructorimpl(property != null ? StringsKt.toIntOrNull(property) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
        }
        Integer num = (Integer) (Result.m3608isFailureimpl(objM3604constructorimpl) ? null : objM3604constructorimpl);
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : TLObject.FLAG_21;
    }
}
