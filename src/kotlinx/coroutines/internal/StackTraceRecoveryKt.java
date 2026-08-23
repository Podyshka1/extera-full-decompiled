package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFrames;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
public abstract class StackTraceRecoveryKt {
    private static final StackTraceElement ARTIFICIAL_FRAME = new ArtificialStackFrames().coroutineBoundary();
    private static final String baseContinuationImplClassName;
    private static final String stackTraceRecoveryClassName;

    public static final Throwable recoverStackTrace(Throwable th) {
        return th;
    }

    static {
        Object objM3604constructorimpl;
        Object objM3604constructorimpl2;
        try {
            Result.Companion companion = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3606exceptionOrNullimpl(objM3604constructorimpl) != null) {
            objM3604constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        baseContinuationImplClassName = (String) objM3604constructorimpl;
        try {
            objM3604constructorimpl2 = Result.m3604constructorimpl(StackTraceRecoveryKt.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.Companion;
            objM3604constructorimpl2 = Result.m3604constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m3606exceptionOrNullimpl(objM3604constructorimpl2) != null) {
            objM3604constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        stackTraceRecoveryClassName = (String) objM3604constructorimpl2;
    }
}
