package okhttp3.internal;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaStatus;
import j$.util.DesugarTimeZone;
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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
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
import okhttp3.Response$Builder$$ExternalSyntheticBUOutline0;
import okhttp3.internal.http2.Header;
import okhttp3.internal.url._UrlKt;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;
import okio.Buffer;
import okio.BufferedSource;
import okio.Source;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000´\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0016\u0010\b\u001a\u00020\u0005*\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u0007H\u0000\u001a)\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r\"\u00020\u000eH\u0000¢\u0006\u0002\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0011H\u0000\u001a \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0000\u001a\u001f\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\b\u0012\u0004\u0012\u00020 0\u001fH\u0000\u001a\u0012\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001f*\u00020\u001eH\u0000\u001a\u0014\u0010\"\u001a\u00020\u0007*\u00020\t2\u0006\u0010#\u001a\u00020\tH\u0000\u001a\f\u0010$\u001a\u00020%*\u00020&H\u0000\u001a\u001c\u0010'\u001a\u00020\u0007*\u00020(2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u0019H\u0000\u001a\f\u0010'\u001a\u00020**\u00020\u0012H\u0000\u001a\u001c\u0010+\u001a\u00020\u0007*\u00020(2\u0006\u0010,\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u0019H\u0000\u001a\u0014\u0010-\u001a\u00020\u0007*\u00020.2\u0006\u0010/\u001a\u00020\u0012H\u0000\u001a\"\u00100\u001a\u00020*2\u0006\u0010\u0004\u001a\u00020\u00052\f\u00101\u001a\b\u0012\u0004\u0012\u00020*02H\u0080\bø\u0001\u0000\u001a\f\u00103\u001a\u00020\u0017*\u000204H\u0000\u001a\u001f\u00105\u001a\b\u0012\u0004\u0012\u0002H60\u001f\"\u0004\b\u0000\u00106*\b\u0012\u0004\u0012\u0002H60\u001fH\u0080\b\u001a\u001f\u00105\u001a\b\u0012\u0004\u0012\u0002H607\"\u0004\b\u0000\u00106*\b\u0012\u0004\u0012\u0002H607H\u0080\b\u001a1\u00105\u001a\u000e\u0012\u0004\u0012\u0002H9\u0012\u0004\u0012\u0002H:08\"\u0004\b\u0000\u00109\"\u0004\b\u0001\u0010:*\u000e\u0012\u0004\u0012\u0002H9\u0012\u0004\u0012\u0002H:08H\u0080\b\u001a\u001e\u0010;\u001a\b\u0012\u0004\u0012\u0002H60\u001f\"\u0004\b\u0000\u00106*\b\u0012\u0004\u0012\u0002H60\u001fH\u0000\u001a-\u0010<\u001a\b\u0012\u0004\u0012\u0002H60\u001f\"\u0004\b\u0000\u001062\u0012\u0010=\u001a\n\u0012\u0006\b\u0001\u0012\u0002H60\r\"\u0002H6H\u0001¢\u0006\u0002\u0010>\u001a'\u0010;\u001a\b\u0012\u0004\u0012\u0002H60\u001f\"\u0004\b\u0000\u00106*\f\u0012\u0006\b\u0001\u0012\u0002H6\u0018\u00010\rH\u0000¢\u0006\u0002\u0010>\u001a\f\u0010?\u001a\u00020**\u00020.H\u0000\u001a\f\u0010?\u001a\u00020**\u00020@H\u0000\u001a\f\u0010A\u001a\u00020\u0005*\u00020\u0017H\u0000\u001a\f\u0010A\u001a\u00020\u0005*\u00020\u0015H\u0000\u001a3\u0010B\u001a\u0004\u0018\u0001H6\"\u0004\b\u0000\u001062\u0006\u0010C\u001a\u00020\u000e2\f\u0010D\u001a\b\u0012\u0004\u0012\u0002H60E2\u0006\u0010F\u001a\u00020\u0005H\u0000¢\u0006\u0002\u0010G\u001a\f\u0010I\u001a\u00020**\u00020JH\u0000\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010H\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010K\u001a\u00020\u00058\u0000X\u0081\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006L"}, d2 = {"UTC", "Ljava/util/TimeZone;", "threadFactory", "Ljava/util/concurrent/ThreadFactory;", "name", _UrlKt.FRAGMENT_ENCODE_SET, "daemon", _UrlKt.FRAGMENT_ENCODE_SET, "toHostHeader", "Lokhttp3/HttpUrl;", "includeDefaultPort", "format", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "readBomAsCharset", "Ljava/nio/charset/Charset;", "Lokio/BufferedSource;", PluginsConstants.Settings.DEFAULT, "checkDuration", _UrlKt.FRAGMENT_ENCODE_SET, "duration", _UrlKt.FRAGMENT_ENCODE_SET, "unit", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/Duration;", "checkDuration-HG0u8IE", "(Ljava/lang/String;J)I", "toHeaders", "Lokhttp3/Headers;", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/http2/Header;", "toHeaderList", "canReuseConnectionFor", "other", "asFactory", "Lokhttp3/EventListener$Factory;", "Lokhttp3/EventListener;", "skipAll", "Lokio/Source;", "timeUnit", _UrlKt.FRAGMENT_ENCODE_SET, "discard", "timeout", "isHealthy", "Ljava/net/Socket;", "source", "threadName", "block", "Lkotlin/Function0;", "headersContentLength", "Lokhttp3/Response;", "unmodifiable", "T", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "K", "V", "toImmutableList", "immutableListOf", "elements", "([Ljava/lang/Object;)Ljava/util/List;", "closeQuietly", "Ljava/net/ServerSocket;", "toHexString", "readFieldOrNull", "instance", "fieldType", "Ljava/lang/Class;", "fieldName", "(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "assertionsEnabled", "assertLockNotHeld", "Lokhttp3/Dispatcher;", "okHttpName", "okhttp"}, m910k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-UtilJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,355:1\n242#1:361\n242#1:362\n1#2:356\n1563#3:357\n1634#3,3:358\n*S KotlinDebug\n*F\n+ 1 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n260#1:361\n272#1:362\n131#1:357\n131#1:358,3\n*E\n"})
public final class _UtilJvmKt {

    @JvmField
    public static final TimeZone UTC = DesugarTimeZone.getTimeZone("GMT");

    @JvmField
    public static final boolean assertionsEnabled = false;

    @JvmField
    public static final String okHttpName = StringsKt.removeSuffix(StringsKt.removePrefix(OkHttpClient.class.getName(), (CharSequence) "okhttp3."), (CharSequence) "Client");

    public static EventListener $r8$lambda$K99WxJwzokotbMqA93v0Qgw0Pe0(EventListener eventListener, Call call) {
        return eventListener;
    }

    public static final ThreadFactory threadFactory(final String str, final boolean z) {
        return new ThreadFactory() { // from class: okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return _UtilJvmKt.m5334$r8$lambda$_J6QpgacuLmRBBtfmidf27cGU(str, z, runnable);
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$-_J-6QpgacuLmRBBtfmidf27cGU, reason: not valid java name */
    public static Thread m5334$r8$lambda$_J6QpgacuLmRBBtfmidf27cGU(String str, boolean z, Runnable runnable) {
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
        if (StringsKt.contains$default((CharSequence) httpUrl.host(), (CharSequence) ":", false, 2, (Object) null)) {
            strHost = "[" + httpUrl.host() + ']';
        } else {
            strHost = httpUrl.host();
        }
        if (!z && httpUrl.port() == HttpUrl.INSTANCE.defaultPort(httpUrl.scheme())) {
            return strHost;
        }
        return strHost + ':' + httpUrl.port();
    }

    public static final String format(String str, Object... objArr) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    public static final Charset readBomAsCharset(BufferedSource bufferedSource, Charset charset) {
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
        AsyncTimeout$$ExternalSyntheticBUOutline0.m962m();
        return null;
    }

    public static final int checkDuration(String str, long j, TimeUnit timeUnit) {
        if (j < 0) {
            _UtilJvmKt$$ExternalSyntheticBUOutline0.m956m(str, " < 0");
            return 0;
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            Response$Builder$$ExternalSyntheticBUOutline0.m953m(str, " too large");
            return 0;
        }
        if (millis != 0 || j <= 0) {
            return (int) millis;
        }
        Response$Builder$$ExternalSyntheticBUOutline0.m953m(str, " too small");
        return 0;
    }

    /* JADX INFO: renamed from: checkDuration-HG0u8IE, reason: not valid java name */
    public static final int m5335checkDurationHG0u8IE(String str, long j) {
        if (Duration.m4991isNegativeimpl(j)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline0.m956m(str, " < 0");
            return 0;
        }
        long jM4976getInWholeMillisecondsimpl = Duration.m4976getInWholeMillisecondsimpl(j);
        if (jM4976getInWholeMillisecondsimpl > 2147483647L) {
            Response$Builder$$ExternalSyntheticBUOutline0.m953m(str, " too large");
            return 0;
        }
        if (jM4976getInWholeMillisecondsimpl != 0 || !Duration.m4992isPositiveimpl(j)) {
            return (int) jM4976getInWholeMillisecondsimpl;
        }
        Response$Builder$$ExternalSyntheticBUOutline0.m953m(str, " too small");
        return 0;
    }

    public static final Headers toHeaders(List<Header> list) {
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.addLenient$okhttp(header.getName().utf8(), header.getValue().utf8());
        }
        return builder.build();
    }

    public static final List<Header> toHeaderList(Headers headers) {
        IntRange intRangeUntil = RangesKt.until(0, headers.size());
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            arrayList.add(new Header(headers.name(iNextInt), headers.value(iNextInt)));
        }
        return arrayList;
    }

    public static final boolean canReuseConnectionFor(HttpUrl httpUrl, HttpUrl httpUrl2) {
        return Intrinsics.areEqual(httpUrl.host(), httpUrl2.host()) && httpUrl.port() == httpUrl2.port() && Intrinsics.areEqual(httpUrl.scheme(), httpUrl2.scheme());
    }

    public static final EventListener.Factory asFactory(final EventListener eventListener) {
        return new EventListener.Factory() { // from class: okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda2
            @Override // okhttp3.EventListener.Factory
            public final EventListener create(Call call) {
                return _UtilJvmKt.$r8$lambda$K99WxJwzokotbMqA93v0Qgw0Pe0(eventListener, call);
            }
        };
    }

    public static final boolean skipAll(Source source, int i, TimeUnit timeUnit) {
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = source.getThis$0().getHasDeadline() ? source.getThis$0().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        source.getThis$0().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, MediaStatus.COMMAND_PLAYBACK_RATE) != -1) {
                buffer.clear();
            }
            if (jDeadlineNanoTime == LongCompanionObject.MAX_VALUE) {
                source.getThis$0().clearDeadline();
                return true;
            }
            source.getThis$0().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return true;
        } catch (InterruptedIOException unused) {
            if (jDeadlineNanoTime == LongCompanionObject.MAX_VALUE) {
                source.getThis$0().clearDeadline();
                return false;
            }
            source.getThis$0().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return false;
        } catch (Throwable th) {
            if (jDeadlineNanoTime == LongCompanionObject.MAX_VALUE) {
                source.getThis$0().clearDeadline();
            } else {
                source.getThis$0().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
    }

    public static final void skipAll(BufferedSource bufferedSource) {
        while (!bufferedSource.exhausted()) {
            bufferedSource.skip(bufferedSource.getBufferField().getSize());
        }
    }

    public static final boolean discard(Source source, int i, TimeUnit timeUnit) {
        try {
            return skipAll(source, i, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final boolean isHealthy(Socket socket, BufferedSource bufferedSource) {
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !bufferedSource.exhausted();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final void threadName(String str, Function0<Unit> function0) {
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(str);
        try {
            function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            threadCurrentThread.setName(name);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final long headersContentLength(Response response) {
        String str = response.headers().get("Content-Length");
        if (str != null) {
            return _UtilCommonKt.toLongOrDefault(str, -1L);
        }
        return -1L;
    }

    public static final <T> List<T> unmodifiable(List<? extends T> list) {
        return Collections.unmodifiableList(list);
    }

    public static final <T> Set<T> unmodifiable(Set<? extends T> set) {
        return Collections.unmodifiableSet(set);
    }

    public static final <K, V> Map<K, V> unmodifiable(Map<K, ? extends V> map) {
        return Collections.unmodifiableMap(map);
    }

    public static final <T> List<T> toImmutableList(List<? extends T> list) {
        return list.isEmpty() ? CollectionsKt.emptyList() : list.size() == 1 ? Collections.singletonList(list.get(0)) : Collections.unmodifiableList(ArraysKt.asList(list.toArray()));
    }

    @SafeVarargs
    public static final <T> List<T> immutableListOf(T... tArr) {
        return toImmutableList(tArr);
    }

    public static final <T> List<T> toImmutableList(T[] tArr) {
        if (tArr == null || tArr.length == 0) {
            return CollectionsKt.emptyList();
        }
        return tArr.length == 1 ? Collections.singletonList(tArr[0]) : Collections.unmodifiableList(ArraysKt.asList((Object[]) tArr.clone()));
    }

    public static final void closeQuietly(Socket socket) {
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
        try {
            serverSocket.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final String toHexString(long j) {
        return Long.toHexString(j);
    }

    public static final String toHexString(int i) {
        return Integer.toHexString(i);
    }

    public static final <T> T readFieldOrNull(Object obj, Class<T> cls, String str) {
        T tCast;
        Object fieldOrNull;
        Class<?> superclass = obj.getClass();
        while (true) {
            tCast = null;
            if (!Intrinsics.areEqual(superclass, Object.class)) {
                try {
                    Field declaredField = superclass.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    Object obj2 = declaredField.get(obj);
                    if (!cls.isInstance(obj2)) {
                        break;
                    }
                    tCast = cls.cast(obj2);
                    break;
                } catch (NoSuchFieldException unused) {
                    superclass = superclass.getSuperclass();
                }
            } else {
                if (Intrinsics.areEqual(str, "delegate") || (fieldOrNull = readFieldOrNull(obj, Object.class, "delegate")) == null) {
                    return null;
                }
                return (T) readFieldOrNull(fieldOrNull, cls, str);
            }
        }
        return tCast;
    }

    public static final void assertLockNotHeld(Dispatcher dispatcher) {
        if (assertionsEnabled && Thread.holdsLock(dispatcher)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m957m(Thread.currentThread().getName(), " MUST NOT hold lock on ", dispatcher);
        }
    }
}
