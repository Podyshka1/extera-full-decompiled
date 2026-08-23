package kotlin.jdk7;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import kotlin.ExceptionsKt;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\u001a!\u0010\u0000\u001a\u00060\u0001j\u0002`\u00052\u000e\b\u0004\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0087\u0088\u0004ø\u0001\u0000\u001aO\u0010\t\u001a\u0002H\n\"\u0010\b\u0000\u0010\u000b*\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u0005\"\u0004\b\u0001\u0010\n*\u0002H\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0088\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u000e\u001a \u0010\u000f\u001a\u00020\b*\n\u0018\u00010\u0001j\u0004\u0018\u0001`\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0081\u0080\u0004*\u001a\b\u0007\u0010\u0000\"\u00020\u00012\u00020\u0001B\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"AutoCloseable", "Ljava/lang/AutoCloseable;", "Lkotlin/SinceKotlin;", "version", "2.0", "Lkotlin/AutoCloseable;", "closeAction", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "use", "R", "T", "block", "Lkotlin/Function1;", "(Ljava/lang/AutoCloseable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "closeFinally", "cause", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m754k = 2, mv = {2, 3, 0}, pn = "kotlin", xi = 48)
@JvmName(name = "AutoCloseableKt")
public final class AutoCloseableKt {
    @SinceKotlin(version = "2.0")
    public static /* synthetic */ void AutoCloseable$annotations() {
    }

    @SinceKotlin(version = "2.0")
    @InlineOnly
    private static final AutoCloseable AutoCloseable(final Function0<Unit> function0) {
        return new AutoCloseable() { // from class: kotlin.jdk7.AutoCloseableKt.AutoCloseable.1
            @Override // java.lang.AutoCloseable
            public final void close() {
                function0.invoke();
            }
        };
    }

    @SinceKotlin(version = "1.2")
    @IgnorableReturnValue
    @InlineOnly
    private static final <T extends AutoCloseable, R> R use(T t, Function1<? super T, ? extends R> function1) throws Exception {
        try {
            R rInvoke = function1.invoke(t);
            InlineMarker.finallyStart(1);
            closeFinally(t, null);
            InlineMarker.finallyEnd(1);
            return rInvoke;
        } finally {
        }
    }

    @SinceKotlin(version = "1.2")
    @PublishedApi
    public static final void closeFinally(AutoCloseable autoCloseable, Throwable th) throws Exception {
        if (autoCloseable != null) {
            if (th == null) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(autoCloseable);
                return;
            }
            try {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(autoCloseable);
            } catch (Throwable th2) {
                ExceptionsKt.addSuppressed(th, th2);
            }
        }
    }
}
