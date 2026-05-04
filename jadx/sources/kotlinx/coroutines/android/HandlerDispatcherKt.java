package kotlinx.coroutines.android;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.lang.reflect.InvocationTargetException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class HandlerDispatcherKt {
    public static final HandlerDispatcher Main;
    private static volatile Choreographer choreographer;

    public static final Handler asHandler(Looper looper, boolean z) throws IllegalAccessException, InvocationTargetException {
        if (z) {
            if (Build.VERSION.SDK_INT >= 28) {
                Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
                Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type android.os.Handler");
                return (Handler) objInvoke;
            }
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        return new Handler(looper);
    }

    static {
        Object objM3604constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(new HandlerContext(asHandler(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
        }
        Main = (HandlerDispatcher) (Result.m3608isFailureimpl(objM3604constructorimpl) ? null : objM3604constructorimpl);
    }
}
