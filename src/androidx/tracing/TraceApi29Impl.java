package androidx.tracing;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\fR\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0006¨\u0006\u0011"}, d2 = {"Landroidx/tracing/TraceApi29Impl;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "beginAsyncSection", _UrlKt.FRAGMENT_ENCODE_SET, "methodName", _UrlKt.FRAGMENT_ENCODE_SET, "cookie", _UrlKt.FRAGMENT_ENCODE_SET, "endAsyncSection", "setCounter", "counterName", "counterValue", "tracing"}, m862k = 1, mv = {2, 0, 0}, xi = 48)
public final class TraceApi29Impl {
    public static final TraceApi29Impl INSTANCE = new TraceApi29Impl();

    private TraceApi29Impl() {
    }

    public final boolean isEnabled() {
        return android.os.Trace.isEnabled();
    }

    public final void beginAsyncSection(String methodName, int cookie) {
        android.os.Trace.beginAsyncSection(methodName, cookie);
    }

    public final void endAsyncSection(String methodName, int cookie) {
        android.os.Trace.endAsyncSection(methodName, cookie);
    }

    public final void setCounter(String counterName, int counterValue) {
        android.os.Trace.setCounter(counterName, counterValue);
    }
}
