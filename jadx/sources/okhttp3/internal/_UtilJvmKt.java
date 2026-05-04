package okhttp3.internal;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import okhttp3.Call;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.http2.Header;
import okio.Buffer;
import okio.BufferedSource;
import okio.Source;
import p022j$.util.DesugarCollections;
import p022j$.util.DesugarTimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class _UtilJvmKt {
    public static final TimeZone UTC;
    public static final boolean assertionsEnabled;
    public static final String okHttpName;

    /* JADX INFO: Access modifiers changed from: private */
    public static final EventListener asFactory$lambda$0(EventListener eventListener, Call it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return eventListener;
    }

    static {
        TimeZone timeZone = DesugarTimeZone.getTimeZone("GMT");
        Intrinsics.checkNotNull(timeZone);
        UTC = timeZone;
        assertionsEnabled = false;
        String name = OkHttpClient.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        okHttpName = StringsKt.removeSuffix(StringsKt.removePrefix(name, "okhttp3."), "Client");
    }

    public static final ThreadFactory threadFactory(final String name, final boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new ThreadFactory() { // from class: okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return _UtilJvmKt.threadFactory$lambda$0(name, z, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread threadFactory$lambda$0(String str, boolean z, Runnable runnable) {
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(z);
        return thread;
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return toHostHeader(httpUrl, z);
    }

    public static final String toHostHeader(HttpUrl httpUrl, boolean z) {
        String strHost;
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (StringsKt.contains$default((CharSequence) httpUrl.host(), (CharSequence) ":", false, 2, (Object) null)) {
            strHost = '[' + httpUrl.host() + ']';
        } else {
            strHost = httpUrl.host();
        }
        if (!z && httpUrl.port() == HttpUrl.Companion.defaultPort(httpUrl.scheme())) {
            return strHost;
        }
        return strHost + ':' + httpUrl.port();
    }

    public static final String format(String format, Object... args) {
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
        String str = String.format(locale, format, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public static final Charset readBomAsCharset(BufferedSource bufferedSource, Charset charset) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(charset, "default");
        int iSelect = bufferedSource.select(_UtilCommonKt.getUNICODE_BOMS());
        if (iSelect == -1) {
            return charset;
        }
        if (iSelect == 0) {
            return Charsets.UTF_8;
        }
        if (iSelect == 1) {
            return Charsets.UTF_16BE;
        }
        if (iSelect == 2) {
            return Charsets.INSTANCE.UTF32_LE();
        }
        if (iSelect == 3) {
            return Charsets.UTF_16LE;
        }
        if (iSelect == 4) {
            return Charsets.INSTANCE.UTF32_BE();
        }
        throw new AssertionError();
    }

    public static final int checkDuration(String name, long j, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j < 0) {
            throw new IllegalStateException((name + " < 0").toString());
        }
        long millis = unit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException((name + " too large").toString());
        }
        if (millis != 0 || j <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException((name + " too small").toString());
    }

    /* JADX INFO: renamed from: checkDuration-HG0u8IE, reason: not valid java name */
    public static final int m3881checkDurationHG0u8IE(String name, long j) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (Duration.m3648isNegativeimpl(j)) {
            throw new IllegalStateException((name + " < 0").toString());
        }
        long jM3635getInWholeMillisecondsimpl = Duration.m3635getInWholeMillisecondsimpl(j);
        if (jM3635getInWholeMillisecondsimpl > 2147483647L) {
            throw new IllegalArgumentException((name + " too large").toString());
        }
        if (jM3635getInWholeMillisecondsimpl != 0 || !Duration.m3649isPositiveimpl(j)) {
            return (int) jM3635getInWholeMillisecondsimpl;
        }
        throw new IllegalArgumentException((name + " too small").toString());
    }

    public static final Headers toHeaders(List<Header> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.addLenient$okhttp(header.component1().utf8(), header.component2().utf8());
        }
        return builder.build();
    }

    public static final List<Header> toHeaderList(Headers headers) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        IntRange intRangeUntil = RangesKt.until(0, headers.size());
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator it = intRangeUntil.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            arrayList.add(new Header(headers.name(iNextInt), headers.value(iNextInt)));
        }
        return arrayList;
    }

    public static final boolean canReuseConnectionFor(HttpUrl httpUrl, HttpUrl other) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return Intrinsics.areEqual(httpUrl.host(), other.host()) && httpUrl.port() == other.port() && Intrinsics.areEqual(httpUrl.scheme(), other.scheme());
    }

    public static final EventListener.Factory asFactory(final EventListener eventListener) {
        Intrinsics.checkNotNullParameter(eventListener, "<this>");
        return new EventListener.Factory() { // from class: okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0
            @Override // okhttp3.EventListener.Factory
            public final EventListener create(Call call) {
                return _UtilJvmKt.asFactory$lambda$0(eventListener, call);
            }
        };
    }

    public static final boolean skipAll(Source source, int i, TimeUnit timeUnit) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = source.timeout().hasDeadline() ? source.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        source.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, 8192L) != -1) {
                buffer.clear();
            }
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
                return true;
            }
            source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return true;
        } catch (InterruptedIOException unused) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
                return false;
            }
            source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return false;
        } catch (Throwable th) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
    }

    public static final void skipAll(BufferedSource bufferedSource) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        while (!bufferedSource.exhausted()) {
            bufferedSource.skip(bufferedSource.getBuffer().size());
        }
    }

    public static final boolean discard(Source source, int i, TimeUnit timeUnit) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        try {
            return skipAll(source, i, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final boolean isHealthy(Socket socket, BufferedSource source) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !source.exhausted();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final void threadName(String name, Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        Thread threadCurrentThread = Thread.currentThread();
        String name2 = threadCurrentThread.getName();
        threadCurrentThread.setName(name);
        try {
            block.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            threadCurrentThread.setName(name2);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final long headersContentLength(Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        String str = response.headers().get("Content-Length");
        if (str != null) {
            return _UtilCommonKt.toLongOrDefault(str, -1L);
        }
        return -1L;
    }

    public static final <T> List<T> unmodifiable(List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<T> listUnmodifiableList = DesugarCollections.unmodifiableList(list);
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        return listUnmodifiableList;
    }

    public static final <T> Set<T> unmodifiable(Set<? extends T> set) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Set<T> setUnmodifiableSet = DesugarCollections.unmodifiableSet(set);
        Intrinsics.checkNotNullExpressionValue(setUnmodifiableSet, "unmodifiableSet(...)");
        return setUnmodifiableSet;
    }

    public static final <K, V> Map<K, V> unmodifiable(Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Map<K, V> mapUnmodifiableMap = DesugarCollections.unmodifiableMap(map);
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(...)");
        return mapUnmodifiableMap;
    }

    public static final <T> List<T> toImmutableList(List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        if (list.size() == 1) {
            List<T> listSingletonList = Collections.singletonList(list.get(0));
            Intrinsics.checkNotNullExpressionValue(listSingletonList, "singletonList(...)");
            return listSingletonList;
        }
        Object[] array = list.toArray();
        Intrinsics.checkNotNullExpressionValue(array, "toArray(...)");
        List<T> listUnmodifiableList = DesugarCollections.unmodifiableList(ArraysKt.asList(array));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        Intrinsics.checkNotNull(listUnmodifiableList, "null cannot be cast to non-null type kotlin.collections.List<T of okhttp3.internal._UtilJvmKt.toImmutableList>");
        return listUnmodifiableList;
    }

    @SafeVarargs
    public static final <T> List<T> immutableListOf(T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return toImmutableList(elements);
    }

    public static final <T> List<T> toImmutableList(T[] tArr) {
        if (tArr == null || tArr.length == 0) {
            return CollectionsKt.emptyList();
        }
        if (tArr.length == 1) {
            List<T> listSingletonList = Collections.singletonList(tArr[0]);
            Intrinsics.checkNotNullExpressionValue(listSingletonList, "singletonList(...)");
            return listSingletonList;
        }
        List<T> listUnmodifiableList = DesugarCollections.unmodifiableList(ArraysKt.asList((Object[]) tArr.clone()));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        return listUnmodifiableList;
    }

    public static final void closeQuietly(Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (!Intrinsics.areEqual(e2.getMessage(), "bio == null")) {
                throw e2;
            }
        } catch (Exception unused) {
        }
    }

    public static final void closeQuietly(ServerSocket serverSocket) {
        Intrinsics.checkNotNullParameter(serverSocket, "<this>");
        try {
            serverSocket.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final String toHexString(long j) {
        String hexString = Long.toHexString(j);
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(...)");
        return hexString;
    }

    public static final String toHexString(int i) {
        String hexString = Integer.toHexString(i);
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(...)");
        return hexString;
    }

    public static final <T> T readFieldOrNull(Object instance, Class<T> fieldType, String fieldName) {
        T tCast;
        Object fieldOrNull;
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(fieldType, "fieldType");
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        Class<?> superclass = instance.getClass();
        while (true) {
            tCast = null;
            if (!Intrinsics.areEqual(superclass, Object.class)) {
                try {
                    Field declaredField = superclass.getDeclaredField(fieldName);
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(instance);
                    if (!fieldType.isInstance(obj)) {
                        break;
                    }
                    tCast = fieldType.cast(obj);
                    break;
                } catch (NoSuchFieldException unused) {
                    superclass = superclass.getSuperclass();
                    Intrinsics.checkNotNullExpressionValue(superclass, "getSuperclass(...)");
                }
            } else {
                if (Intrinsics.areEqual(fieldName, "delegate") || (fieldOrNull = readFieldOrNull(instance, Object.class, "delegate")) == null) {
                    return null;
                }
                return (T) readFieldOrNull(fieldOrNull, fieldType, fieldName);
            }
        }
        return tCast;
    }

    public static final void assertLockNotHeld(Dispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(dispatcher, "<this>");
        if (assertionsEnabled && Thread.holdsLock(dispatcher)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + dispatcher);
        }
    }
}
