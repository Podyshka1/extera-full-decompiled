package androidx.tracing;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class Trace {
    public static final Trace INSTANCE = new Trace();
    private static Method asyncTraceBeginMethod;
    private static Method asyncTraceEndMethod;
    private static Method isTagEnabledMethod;
    private static Method traceCounterMethod;
    private static long traceTagApp;

    private Trace() {
    }

    public static final boolean isEnabled() {
        if (Build.VERSION.SDK_INT >= 29) {
            return TraceApi29Impl.INSTANCE.isEnabled();
        }
        return INSTANCE.isEnabledFallback();
    }

    public static final void beginSection(String label) {
        Intrinsics.checkNotNullParameter(label, "label");
        android.os.Trace.beginSection(INSTANCE.truncatedTraceSectionLabel(label));
    }

    public static final void endSection() {
        android.os.Trace.endSection();
    }

    public static final void beginAsyncSection(String methodName, int i) throws Throwable {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.INSTANCE.beginAsyncSection(INSTANCE.truncatedTraceSectionLabel(methodName), i);
        } else {
            Trace trace = INSTANCE;
            trace.beginAsyncSectionFallback(trace.truncatedTraceSectionLabel(methodName), i);
        }
    }

    public static final void endAsyncSection(String methodName, int i) throws Throwable {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.INSTANCE.endAsyncSection(INSTANCE.truncatedTraceSectionLabel(methodName), i);
        } else {
            Trace trace = INSTANCE;
            trace.endAsyncSectionFallback(trace.truncatedTraceSectionLabel(methodName), i);
        }
    }

    public static final void setCounter(String counterName, int i) throws Throwable {
        Intrinsics.checkNotNullParameter(counterName, "counterName");
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.INSTANCE.setCounter(INSTANCE.truncatedTraceSectionLabel(counterName), i);
        } else {
            Trace trace = INSTANCE;
            trace.setCounterFallback(trace.truncatedTraceSectionLabel(counterName), i);
        }
    }

    private final boolean isEnabledFallback() throws Throwable {
        try {
            if (isTagEnabledMethod == null) {
                traceTagApp = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                isTagEnabledMethod = android.os.Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            Method method = isTagEnabledMethod;
            if (method == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            Object objInvoke = method.invoke(null, Long.valueOf(traceTagApp));
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
            return ((Boolean) objInvoke).booleanValue();
        } catch (Exception e) {
            handleException("isTagEnabled", e);
            return false;
        }
    }

    private final void beginAsyncSectionFallback(String str, int i) throws Throwable {
        try {
            if (asyncTraceBeginMethod == null) {
                asyncTraceBeginMethod = android.os.Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            }
            Method method = asyncTraceBeginMethod;
            if (method == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            method.invoke(null, Long.valueOf(traceTagApp), str, Integer.valueOf(i));
        } catch (Exception e) {
            handleException("asyncTraceBegin", e);
        }
    }

    private final void endAsyncSectionFallback(String str, int i) throws Throwable {
        try {
            if (asyncTraceEndMethod == null) {
                asyncTraceEndMethod = android.os.Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            }
            Method method = asyncTraceEndMethod;
            if (method == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            method.invoke(null, Long.valueOf(traceTagApp), str, Integer.valueOf(i));
        } catch (Exception e) {
            handleException("asyncTraceEnd", e);
        }
    }

    private final void setCounterFallback(String str, int i) throws Throwable {
        try {
            if (traceCounterMethod == null) {
                traceCounterMethod = android.os.Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
            }
            Method method = traceCounterMethod;
            if (method == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            method.invoke(null, Long.valueOf(traceTagApp), str, Integer.valueOf(i));
        } catch (Exception e) {
            handleException("traceCounter", e);
        }
    }

    private final void handleException(String str, Exception exc) throws Throwable {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = ((InvocationTargetException) exc).getCause();
            if (cause instanceof RuntimeException) {
                throw cause;
            }
            throw new RuntimeException(cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    private final String truncatedTraceSectionLabel(String str) {
        String str2 = str.length() <= 127 ? str : null;
        if (str2 != null) {
            return str2;
        }
        String strSubstring = str.substring(0, 127);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }
}
