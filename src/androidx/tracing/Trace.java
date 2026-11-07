package androidx.tracing;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\u0003J\u001f\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0012\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0015\u0010\u0011J\u001f\u0010\u0016\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0016\u0010\u0011J\u001f\u0010\u0017\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0011J\u001f\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0018\u0010\u0011J#\u0010\u001c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00072\n\u0010\u001b\u001a\u00060\u0019j\u0002`\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u0007*\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010%R\u0018\u0010'\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010%R\u001a\u0010)\u001a\u00020\u00048BX\u0082\u0004¢\u0006\f\u0012\u0004\b*\u0010\u0003\u001a\u0004\b)\u0010\u0006¨\u0006+"}, d2 = {"Landroidx/tracing/Trace;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "isEnabled", "()Z", _UrlKt.FRAGMENT_ENCODE_SET, "label", _UrlKt.FRAGMENT_ENCODE_SET, "beginSection", "(Ljava/lang/String;)V", "endSection", "methodName", _UrlKt.FRAGMENT_ENCODE_SET, "cookie", "beginAsyncSection", "(Ljava/lang/String;I)V", "endAsyncSection", "counterName", "counterValue", "setCounter", "beginAsyncSectionFallback", "endAsyncSectionFallback", "setCounterFallback", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "handleException", "(Ljava/lang/String;Ljava/lang/Exception;)V", "truncatedTraceSectionLabel", "(Ljava/lang/String;)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "traceTagApp", "J", "Ljava/lang/reflect/Method;", "isTagEnabledMethod", "Ljava/lang/reflect/Method;", "asyncTraceBeginMethod", "asyncTraceEndMethod", "traceCounterMethod", "isEnabledFallback", "isEnabledFallback$annotations", "tracing"}, m862k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTrace.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Trace.android.kt\nandroidx/tracing/Trace\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,402:1\n1#2:403\n*E\n"})
public final class Trace {
    public static final Trace INSTANCE = new Trace();
    private static Method asyncTraceBeginMethod;
    private static Method asyncTraceEndMethod;
    private static Method isTagEnabledMethod;
    private static Method traceCounterMethod;
    private static long traceTagApp;

    private Trace() {
    }

    @JvmStatic
    public static final boolean isEnabled() {
        if (Build.VERSION.SDK_INT >= 29) {
            return TraceApi29Impl.INSTANCE.isEnabled();
        }
        return INSTANCE.isEnabledFallback();
    }

    @JvmStatic
    public static final void beginSection(String label) {
        android.os.Trace.beginSection(INSTANCE.truncatedTraceSectionLabel(label));
    }

    @JvmStatic
    public static final void endSection() {
        android.os.Trace.endSection();
    }

    @JvmStatic
    public static final void beginAsyncSection(String methodName, int cookie) throws Throwable {
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.INSTANCE.beginAsyncSection(INSTANCE.truncatedTraceSectionLabel(methodName), cookie);
        } else {
            Trace trace = INSTANCE;
            trace.beginAsyncSectionFallback(trace.truncatedTraceSectionLabel(methodName), cookie);
        }
    }

    @JvmStatic
    public static final void endAsyncSection(String methodName, int cookie) throws Throwable {
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.INSTANCE.endAsyncSection(INSTANCE.truncatedTraceSectionLabel(methodName), cookie);
        } else {
            Trace trace = INSTANCE;
            trace.endAsyncSectionFallback(trace.truncatedTraceSectionLabel(methodName), cookie);
        }
    }

    @JvmStatic
    public static final void setCounter(String counterName, int counterValue) throws Throwable {
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.INSTANCE.setCounter(INSTANCE.truncatedTraceSectionLabel(counterName), counterValue);
        } else {
            Trace trace = INSTANCE;
            trace.setCounterFallback(trace.truncatedTraceSectionLabel(counterName), counterValue);
        }
    }

    private final boolean isEnabledFallback() throws Throwable {
        try {
            if (isTagEnabledMethod == null) {
                traceTagApp = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                isTagEnabledMethod = android.os.Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            Method method = isTagEnabledMethod;
            if (method != null) {
                return ((Boolean) method.invoke(null, Long.valueOf(traceTagApp))).booleanValue();
            }
            throw new IllegalArgumentException("Required value was null.");
        } catch (Exception e) {
            handleException("isTagEnabled", e);
            return false;
        }
    }

    private final void beginAsyncSectionFallback(String methodName, int cookie) throws Throwable {
        try {
            if (asyncTraceBeginMethod == null) {
                asyncTraceBeginMethod = android.os.Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            }
            Method method = asyncTraceBeginMethod;
            if (method == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            method.invoke(null, Long.valueOf(traceTagApp), methodName, Integer.valueOf(cookie));
        } catch (Exception e) {
            handleException("asyncTraceBegin", e);
        }
    }

    private final void endAsyncSectionFallback(String methodName, int cookie) throws Throwable {
        try {
            if (asyncTraceEndMethod == null) {
                asyncTraceEndMethod = android.os.Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            }
            Method method = asyncTraceEndMethod;
            if (method == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            method.invoke(null, Long.valueOf(traceTagApp), methodName, Integer.valueOf(cookie));
        } catch (Exception e) {
            handleException("asyncTraceEnd", e);
        }
    }

    private final void setCounterFallback(String counterName, int counterValue) throws Throwable {
        try {
            if (traceCounterMethod == null) {
                traceCounterMethod = android.os.Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
            }
            Method method = traceCounterMethod;
            if (method == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            method.invoke(null, Long.valueOf(traceTagApp), counterName, Integer.valueOf(counterValue));
        } catch (Exception e) {
            handleException("traceCounter", e);
        }
    }

    private final void handleException(String methodName, Exception exception) throws Throwable {
        if (exception instanceof InvocationTargetException) {
            Throwable cause = ((InvocationTargetException) exception).getCause();
            if (cause instanceof RuntimeException) {
                throw cause;
            }
            HttpUrl$$ExternalSyntheticBUOutline0.m899m(cause);
            return;
        }
        Log.v("Trace", "Unable to call " + methodName + " via reflection", exception);
    }

    private final String truncatedTraceSectionLabel(String str) {
        String str2 = str.length() <= 127 ? str : null;
        return str2 == null ? str.substring(0, 127) : str2;
    }
}
