package okhttp3.internal.connection;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Tags;
import okhttp3.internal.TagsKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticBUOutline1;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.url._UrlKt;
import okio.AsyncTimeout;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.Timeout;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000É\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005*\u0001\u0019\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0002uvB\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0018\u001a\u00020;H\u0016J'\u0010<\u001a\u0004\u0018\u0001H=\"\b\b\u0000\u0010=*\u00020\u001e2\f\u0010>\u001a\b\u0012\u0004\u0012\u0002H=0?H\u0016¢\u0006\u0002\u0010@J%\u0010<\u001a\u0004\u0018\u0001H=\"\u0004\b\u0000\u0010=2\u000e\u0010>\u001a\n\u0012\u0006\b\u0001\u0012\u0002H=0AH\u0016¢\u0006\u0002\u0010BJ3\u0010<\u001a\u0002H=\"\b\b\u0000\u0010=*\u00020\u001e2\f\u0010>\u001a\b\u0012\u0004\u0012\u0002H=0?2\f\u0010C\u001a\b\u0012\u0004\u0012\u0002H=0DH\u0016¢\u0006\u0002\u0010EJ3\u0010<\u001a\u0002H=\"\b\b\u0000\u0010=*\u00020\u001e2\f\u0010>\u001a\b\u0012\u0004\u0012\u0002H=0A2\f\u0010C\u001a\b\u0012\u0004\u0012\u0002H=0DH\u0016¢\u0006\u0002\u0010FJ\b\u0010G\u001a\u00020\u0001H\u0016J\b\u0010H\u001a\u00020\u0007H\u0016J\b\u0010I\u001a\u00020JH\u0016J\b\u0010K\u001a\u00020\tH\u0016J\b\u0010L\u001a\u00020MH\u0016J\u0010\u0010N\u001a\u00020J2\u0006\u0010O\u001a\u00020PH\u0016J\b\u0010Q\u001a\u00020\tH\u0016J\b\u0010R\u001a\u00020JH\u0002J\r\u0010S\u001a\u00020MH\u0000¢\u0006\u0002\bTJ\u001e\u0010U\u001a\u00020J2\u0006\u0010H\u001a\u00020\u00072\u0006\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020XJ\u0015\u0010Y\u001a\u00020'2\u0006\u0010W\u001a\u00020XH\u0000¢\u0006\u0002\bZJ\u000e\u0010[\u001a\u00020J2\u0006\u0010#\u001a\u00020\"JI\u0010\\\u001a\u0004\u0018\u00010]2\u0006\u00101\u001a\u00020'2\b\b\u0002\u0010^\u001a\u00020\t2\b\b\u0002\u0010_\u001a\u00020\t2\b\b\u0002\u0010`\u001a\u00020\t2\b\b\u0002\u0010a\u001a\u00020\t2\b\u0010b\u001a\u0004\u0018\u00010]H\u0000¢\u0006\u0002\bcJ\u0019\u0010d\u001a\u0004\u0018\u00010]2\b\u0010b\u001a\u0004\u0018\u00010]H\u0000¢\u0006\u0002\beJ\u0014\u0010f\u001a\u0004\u0018\u00010]2\b\u0010b\u001a\u0004\u0018\u00010]H\u0002J\u000f\u0010g\u001a\u0004\u0018\u00010hH\u0000¢\u0006\u0002\biJ\u0014\u0010j\u001a\u0004\u0018\u00010]2\b\u0010k\u001a\u0004\u0018\u00010]H\u0002J\u0006\u0010&\u001a\u00020JJ\u0006\u0010l\u001a\u00020JJ\u0015\u0010m\u001a\u00020J2\u0006\u0010n\u001a\u00020\tH\u0000¢\u0006\u0002\boJ\u0006\u0010p\u001a\u00020\tJ\b\u0010q\u001a\u00020rH\u0002J\r\u0010s\u001a\u00020rH\u0000¢\u0006\u0002\btR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010#\u001a\u0004\u0018\u00010\"2\b\u0010!\u001a\u0004\u0018\u00010\"@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u000e\u0010&\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010(\u001a\u0004\u0018\u00010'2\b\u0010!\u001a\u0004\u0018\u00010'@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u000e\u0010+\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020403X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u001c\u00107\u001a\u0010\u0012\f\u0012\n :*\u0004\u0018\u0001090908X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006w"}, d2 = {"Lokhttp3/internal/connection/RealCall;", "Lokhttp3/Call;", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/concurrent/Lockable;", "client", "Lokhttp3/OkHttpClient;", "originalRequest", "Lokhttp3/Request;", "forWebSocket", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V", "getClient", "()Lokhttp3/OkHttpClient;", "getOriginalRequest", "()Lokhttp3/Request;", "getForWebSocket", "()Z", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "eventListener", "Lokhttp3/EventListener;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "timeout", "okhttp3/internal/connection/RealCall$timeout$1", "Lokhttp3/internal/connection/RealCall$timeout$1;", "executed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "callStackTrace", _UrlKt.FRAGMENT_ENCODE_SET, "exchangeFinder", "Lokhttp3/internal/connection/ExchangeFinder;", "value", "Lokhttp3/internal/connection/RealConnection;", "connection", "getConnection", "()Lokhttp3/internal/connection/RealConnection;", "timeoutEarlyExit", "Lokhttp3/internal/connection/Exchange;", "interceptorScopedExchange", "getInterceptorScopedExchange$okhttp", "()Lokhttp3/internal/connection/Exchange;", "requestBodyOpen", "responseBodyOpen", "socketSinkOpen", "socketSourceOpen", "expectMoreExchanges", "canceled", "exchange", "plansToCancel", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lokhttp3/internal/connection/RoutePlanner$Plan;", "getPlansToCancel$okhttp", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "tags", "Ljava/util/concurrent/atomic/AtomicReference;", "Lokhttp3/internal/Tags;", "kotlin.jvm.PlatformType", "Lokio/Timeout;", "tag", "T", "type", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "Ljava/lang/Class;", "(Ljava/lang/Class;)Ljava/lang/Object;", "computeIfAbsent", "Lkotlin/Function0;", "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "(Ljava/lang/Class;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "clone", PluginsConstants.REQUEST, "cancel", _UrlKt.FRAGMENT_ENCODE_SET, "isCanceled", "execute", "Lokhttp3/Response;", "enqueue", "responseCallback", "Lokhttp3/Callback;", "isExecuted", "callStart", "getResponseWithInterceptorChain", "getResponseWithInterceptorChain$okhttp", "enterNetworkInterceptorExchange", "newRoutePlanner", "chain", "Lokhttp3/internal/http/RealInterceptorChain;", "initExchange", "initExchange$okhttp", "acquireConnectionNoEvents", "messageDone", "Ljava/io/IOException;", "requestDone", "responseDone", "socketSourceDone", "socketSinkDone", "e", "messageDone$okhttp", "noMoreExchanges", "noMoreExchanges$okhttp", "callDone", "releaseConnectionNoEvents", "Ljava/net/Socket;", "releaseConnectionNoEvents$okhttp", "timeoutExit", "cause", "upgradeToSocket", "exitNetworkInterceptorExchange", "closeExchange", "exitNetworkInterceptorExchange$okhttp", "retryAfterFailure", "toLoggableString", _UrlKt.FRAGMENT_ENCODE_SET, "redactedUrl", "redactedUrl$okhttp", "AsyncCall", "CallReference", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,612:1\n1#2:613\n63#3:614\n63#3:615\n63#3:616\n55#3,4:617\n63#3:621\n63#3:622\n49#3,4:623\n49#3,4:627\n63#3:631\n55#3,4:632\n63#3:643\n63#3:644\n360#4,7:636\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n*L\n257#1:614\n292#1:615\n303#1:616\n313#1:617,4\n340#1:621\n373#1:622\n401#1:623,4\n405#1:627,4\n407#1:631\n438#1:632,4\n479#1:643\n495#1:644\n441#1:636,7\n*E\n"})
public final class RealCall implements Call, Cloneable, Lockable {
    private Object callStackTrace;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private RealConnection connection;
    private final RealConnectionPool connectionPool;
    private final EventListener eventListener;
    private volatile Exchange exchange;
    private ExchangeFinder exchangeFinder;
    private final AtomicBoolean executed;
    private boolean expectMoreExchanges;
    private final boolean forWebSocket;
    private Exchange interceptorScopedExchange;
    private final Request originalRequest;
    private final CopyOnWriteArrayList<RoutePlanner.Plan> plansToCancel;
    private boolean requestBodyOpen;
    private boolean responseBodyOpen;
    private boolean socketSinkOpen;
    private boolean socketSourceOpen;
    private final AtomicReference<Tags> tags;
    private final C24271 timeout;
    private boolean timeoutEarlyExit;

    private final IOException callDone(IOException e) {
        Socket socketReleaseConnectionNoEvents$okhttp;
        boolean z = _UtilJvmKt.assertionsEnabled;
        if (z && Thread.holdsLock(this)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m909m(Thread.currentThread().getName(), " MUST NOT hold lock on ", this);
            return null;
        }
        RealConnection realConnection = this.connection;
        if (realConnection != null) {
            if (z && Thread.holdsLock(realConnection)) {
                _UtilJvmKt$$ExternalSyntheticBUOutline1.m909m(Thread.currentThread().getName(), " MUST NOT hold lock on ", realConnection);
                return null;
            }
            synchronized (realConnection) {
                socketReleaseConnectionNoEvents$okhttp = releaseConnectionNoEvents$okhttp();
            }
            if (this.connection == null) {
                if (socketReleaseConnectionNoEvents$okhttp != null) {
                    _UtilJvmKt.closeQuietly(socketReleaseConnectionNoEvents$okhttp);
                }
                this.eventListener.connectionReleased(this, realConnection);
                realConnection.getConnectionListener().connectionReleased(realConnection, this);
                if (socketReleaseConnectionNoEvents$okhttp != null) {
                    realConnection.getConnectionListener().connectionClosed(realConnection);
                }
            } else if (socketReleaseConnectionNoEvents$okhttp != null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
                return null;
            }
        }
        IOException iOExceptionTimeoutExit = timeoutExit(e);
        EventListener eventListener = this.eventListener;
        if (e != null) {
            eventListener.callFailed(this, iOExceptionTimeoutExit);
            return iOExceptionTimeoutExit;
        }
        eventListener.callEnd(this);
        return iOExceptionTimeoutExit;
    }

    public final void acquireConnectionNoEvents(RealConnection connection) {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(connection)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m909m(Thread.currentThread().getName(), " MUST hold lock on ", connection);
        } else if (this.connection != null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
        } else {
            this.connection = connection;
            connection.getCalls().add(new CallReference(this, this.callStackTrace));
        }
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [okhttp3.internal.connection.RealCall$timeout$1, okio.Timeout] */
    public RealCall(OkHttpClient okHttpClient, Request request, boolean z) {
        this.client = okHttpClient;
        this.originalRequest = request;
        this.forWebSocket = z;
        this.connectionPool = okHttpClient.connectionPool().getDelegate();
        this.eventListener = okHttpClient.eventListenerFactory().create(this);
        ?? r5 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall.timeout.1
            @Override // okio.AsyncTimeout
            public void timedOut() {
                RealCall.this.cancel();
            }
        };
        r5.timeout(okHttpClient.callTimeoutMillis(), TimeUnit.MILLISECONDS);
        this.timeout = r5;
        this.executed = new AtomicBoolean();
        this.expectMoreExchanges = true;
        this.plansToCancel = new CopyOnWriteArrayList<>();
        this.tags = new AtomicReference<>(request.getTags());
    }

    public final void exitNetworkInterceptorExchange$okhttp(boolean closeExchange) {
        Exchange exchange;
        synchronized (this) {
            if (!this.expectMoreExchanges) {
                throw new IllegalStateException("released");
            }
            Unit unit = Unit.INSTANCE;
        }
        if (closeExchange && (exchange = this.exchange) != null) {
            exchange.detachWithViolence();
        }
        this.interceptorScopedExchange = null;
    }

    public final Exchange initExchange$okhttp(RealInterceptorChain chain) throws IOException {
        synchronized (this) {
            if (!this.expectMoreExchanges) {
                throw new IllegalStateException("released");
            }
            if (this.responseBodyOpen || this.requestBodyOpen || this.socketSourceOpen || this.socketSinkOpen) {
                throw new IllegalStateException("Check failed.");
            }
            Unit unit = Unit.INSTANCE;
        }
        ExchangeFinder exchangeFinder = this.exchangeFinder;
        Exchange exchange = new Exchange(this, this.eventListener, exchangeFinder, exchangeFinder.find().newCodec$okhttp(this.client, chain));
        this.interceptorScopedExchange = exchange;
        this.exchange = exchange;
        synchronized (this) {
            this.requestBodyOpen = true;
            this.responseBodyOpen = true;
        }
        if (!this.canceled) {
            return exchange;
        }
        Model$$ExternalSyntheticBUOutline0.m1054m("Canceled");
        return null;
    }

    public final IOException noMoreExchanges$okhttp(IOException e) {
        boolean z;
        synchronized (this) {
            try {
                z = false;
                if (this.expectMoreExchanges) {
                    this.expectMoreExchanges = false;
                    if (!this.requestBodyOpen && !this.responseBodyOpen && !this.socketSinkOpen && !this.socketSourceOpen) {
                        z = true;
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z ? callDone(e) : e;
    }

    public final OkHttpClient getClient() {
        return this.client;
    }

    public final Request getOriginalRequest() {
        return this.originalRequest;
    }

    public final boolean getForWebSocket() {
        return this.forWebSocket;
    }

    /* JADX INFO: renamed from: getEventListener$okhttp, reason: from getter */
    public final EventListener getEventListener() {
        return this.eventListener;
    }

    public final RealConnection getConnection() {
        return this.connection;
    }

    /* JADX INFO: renamed from: getInterceptorScopedExchange$okhttp, reason: from getter */
    public final Exchange getInterceptorScopedExchange() {
        return this.interceptorScopedExchange;
    }

    public final CopyOnWriteArrayList<RoutePlanner.Plan> getPlansToCancel$okhttp() {
        return this.plansToCancel;
    }

    @Override // okhttp3.Call
    public Timeout timeout() {
        return this.timeout;
    }

    @Override // okhttp3.Call
    public <T> T tag(KClass<T> type) {
        return (T) JvmClassMappingKt.getJavaClass((KClass) type).cast(this.tags.get().get(type));
    }

    @Override // okhttp3.Call
    public <T> T tag(Class<? extends T> type) {
        return (T) tag(JvmClassMappingKt.getKotlinClass(type));
    }

    @Override // okhttp3.Call
    public <T> T tag(KClass<T> type, Function0<? extends T> computeIfAbsent) {
        return (T) TagsKt.computeIfAbsent(this.tags, type, computeIfAbsent);
    }

    @Override // okhttp3.Call
    public <T> T tag(Class<T> type, Function0<? extends T> computeIfAbsent) {
        return (T) TagsKt.computeIfAbsent(this.tags, JvmClassMappingKt.getKotlinClass(type), computeIfAbsent);
    }

    @Override // okhttp3.Call
    public Call clone() {
        return new RealCall(this.client, this.originalRequest, this.forWebSocket);
    }

    @Override // okhttp3.Call
    public Request request() {
        return this.originalRequest;
    }

    @Override // okhttp3.Call
    public void cancel() {
        if (this.canceled) {
            return;
        }
        this.canceled = true;
        Exchange exchange = this.exchange;
        if (exchange != null) {
            exchange.cancel();
        }
        Iterator<RoutePlanner.Plan> it = this.plansToCancel.iterator();
        while (it.hasNext()) {
            it.next().mo4815cancel();
        }
        this.eventListener.canceled(this);
    }

    @Override // okhttp3.Call
    /* JADX INFO: renamed from: isCanceled, reason: from getter */
    public boolean getCanceled() {
        return this.canceled;
    }

    @Override // okhttp3.Call
    public Response execute() {
        if (!this.executed.compareAndSet(false, true)) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Already Executed");
            return null;
        }
        enter();
        callStart();
        try {
            this.client.dispatcher().executed$okhttp(this);
            return getResponseWithInterceptorChain$okhttp();
        } finally {
            this.client.dispatcher().finished$okhttp(this);
        }
    }

    @Override // okhttp3.Call
    public void enqueue(Callback responseCallback) {
        if (!this.executed.compareAndSet(false, true)) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Already Executed");
        } else {
            callStart();
            this.client.dispatcher().enqueue$okhttp(new AsyncCall(responseCallback));
        }
    }

    @Override // okhttp3.Call
    public boolean isExecuted() {
        return this.executed.get();
    }

    private final void callStart() {
        this.callStackTrace = Platform.INSTANCE.get().getStackTraceForCloseable("response.body().close()");
        this.eventListener.callStart(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Response getResponseWithInterceptorChain$okhttp() {
        ArrayList arrayList = new ArrayList();
        CollectionsKt.addAll(arrayList, this.client.interceptors());
        arrayList.add(new RetryAndFollowUpInterceptor(this.client));
        arrayList.add(new BridgeInterceptor(this.client.cookieJar()));
        arrayList.add(new CacheInterceptor(this.client.cache()));
        arrayList.add(ConnectInterceptor.INSTANCE);
        if (!this.forWebSocket) {
            CollectionsKt.addAll(arrayList, this.client.networkInterceptors());
        }
        arrayList.add(CallServerInterceptor.INSTANCE);
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this, arrayList, 0, null, this.originalRequest, this.client.connectTimeoutMillis(), this.client.readTimeoutMillis(), this.client.writeTimeoutMillis());
        boolean z = false;
        try {
            try {
                Response responseProceed = realInterceptorChain.proceed(this.originalRequest);
                if (getCanceled()) {
                    _UtilCommonKt.closeQuietly(responseProceed);
                    throw new IOException("Canceled");
                }
                noMoreExchanges$okhttp(null);
                return responseProceed;
            } catch (IOException e) {
                z = true;
                throw noMoreExchanges$okhttp(e);
            }
        } catch (Throwable th) {
            if (!z) {
            }
            throw th;
        }
        if (!z) {
            noMoreExchanges$okhttp(null);
        }
        throw th;
    }

    public final void enterNetworkInterceptorExchange(Request request, boolean newRoutePlanner, RealInterceptorChain chain) {
        if (this.interceptorScopedExchange == null) {
            synchronized (this) {
                if (this.responseBodyOpen) {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                }
                if (this.requestBodyOpen || this.socketSourceOpen || this.socketSinkOpen) {
                    throw new IllegalStateException("Check failed.");
                }
                Unit unit = Unit.INSTANCE;
            }
            if (newRoutePlanner) {
                RealRoutePlanner realRoutePlanner = new RealRoutePlanner(this.client.getTaskRunner(), this.connectionPool, this.client.readTimeoutMillis(), this.client.writeTimeoutMillis(), chain.getConnectTimeoutMillis$okhttp(), chain.getReadTimeoutMillis(), this.client.pingIntervalMillis(), this.client.retryOnConnectionFailure(), this.client.getFastFallback(), this.client.address(request.url()), this.client.getRouteDatabase(), this, request);
                this.exchangeFinder = this.client.getFastFallback() ? new FastFallbackExchangeFinder(realRoutePlanner, this.client.getTaskRunner()) : new SequentialExchangeFinder(realRoutePlanner);
                return;
            }
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
    }

    public static /* synthetic */ IOException messageDone$okhttp$default(RealCall realCall, Exchange exchange, boolean z, boolean z2, boolean z3, boolean z4, IOException iOException, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        if ((i & 8) != 0) {
            z3 = false;
        }
        if ((i & 16) != 0) {
            z4 = false;
        }
        return realCall.messageDone$okhttp(exchange, z, z2, z3, z4, iOException);
    }

    public final IOException messageDone$okhttp(Exchange exchange, boolean requestDone, boolean responseDone, boolean socketSourceDone, boolean socketSinkDone, IOException e) {
        boolean z;
        boolean z2;
        if (Intrinsics.areEqual(exchange, this.exchange)) {
            synchronized (this) {
                z = false;
                if (requestDone) {
                    try {
                        if (!this.requestBodyOpen) {
                            if ((responseDone || !this.responseBodyOpen) && ((!socketSinkDone || !this.socketSinkOpen) && (!socketSourceDone || !this.socketSourceOpen))) {
                                z2 = false;
                            }
                            Unit unit = Unit.INSTANCE;
                        }
                        if (requestDone) {
                            this.requestBodyOpen = false;
                        }
                        if (responseDone) {
                            this.responseBodyOpen = false;
                        }
                        if (socketSinkDone) {
                            this.socketSinkOpen = false;
                        }
                        if (socketSourceDone) {
                            this.socketSourceOpen = false;
                        }
                        boolean z3 = (this.requestBodyOpen || this.responseBodyOpen || this.socketSinkOpen || this.socketSourceOpen) ? false : true;
                        if (z3 && !this.expectMoreExchanges) {
                            z = true;
                        }
                        boolean z4 = z3;
                        z2 = z;
                        z = z4;
                        Unit unit2 = Unit.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                } else if (responseDone) {
                    z2 = false;
                    Unit unit22 = Unit.INSTANCE;
                } else {
                    z2 = false;
                    Unit unit222 = Unit.INSTANCE;
                }
            }
            if (z) {
                this.exchange = null;
                RealConnection realConnection = this.connection;
                if (realConnection != null) {
                    realConnection.incrementSuccessCount$okhttp();
                }
            }
            if (z2) {
                return callDone(e);
            }
        }
        return e;
    }

    public final Socket releaseConnectionNoEvents$okhttp() {
        RealConnection realConnection = this.connection;
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(realConnection)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m909m(Thread.currentThread().getName(), " MUST hold lock on ", realConnection);
            return null;
        }
        List<Reference<RealCall>> calls = realConnection.getCalls();
        Iterator<Reference<RealCall>> it = calls.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (Intrinsics.areEqual(it.next().get(), this)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
            return null;
        }
        calls.remove(i);
        this.connection = null;
        if (calls.isEmpty()) {
            realConnection.setIdleAtNs(System.nanoTime());
            if (this.connectionPool.connectionBecameIdle(realConnection)) {
                return realConnection.getJavaNetSocket();
            }
        }
        return null;
    }

    private final IOException timeoutExit(IOException cause) {
        if (this.timeoutEarlyExit || !exit()) {
            return cause;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (cause != null) {
            interruptedIOException.initCause(cause);
        }
        return interruptedIOException;
    }

    public final void timeoutEarlyExit() {
        if (this.timeoutEarlyExit) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
        } else {
            this.timeoutEarlyExit = true;
            exit();
        }
    }

    public final void upgradeToSocket() {
        timeoutEarlyExit();
        synchronized (this) {
            if (this.exchange == null) {
                throw new IllegalStateException("Check failed.");
            }
            if (this.socketSinkOpen || this.socketSourceOpen) {
                throw new IllegalStateException("Check failed.");
            }
            if (this.requestBodyOpen) {
                throw new IllegalStateException("Check failed.");
            }
            if (!this.responseBodyOpen) {
                throw new IllegalStateException("Check failed.");
            }
            this.responseBodyOpen = false;
            this.socketSinkOpen = true;
            this.socketSourceOpen = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean retryAfterFailure() {
        Exchange exchange = this.exchange;
        if (exchange == null || !exchange.getHasFailure()) {
            return false;
        }
        RoutePlanner routePlanner = this.exchangeFinder.getRoutePlanner();
        Exchange exchange2 = this.exchange;
        return routePlanner.hasNext(exchange2 != null ? exchange2.getConnection$okhttp() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String toLoggableString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getCanceled() ? "canceled " : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append(this.forWebSocket ? "web socket" : "call");
        sb.append(" to ");
        sb.append(redactedUrl$okhttp());
        return sb.toString();
    }

    public final String redactedUrl$okhttp() {
        return this.originalRequest.url().redact();
    }

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u00060\u0000R\u00020\u000eJ\u000e\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0019\u0010\u001d\u001a\u00020\f2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0000¢\u0006\u0002\b J\b\u0010!\u001a\u00020\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\""}, d2 = {"Lokhttp3/internal/connection/RealCall$AsyncCall;", "Ljava/lang/Runnable;", "responseCallback", "Lokhttp3/Callback;", "<init>", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/Callback;)V", "value", "Ljava/util/concurrent/atomic/AtomicInteger;", "callsPerHost", "getCallsPerHost", "()Ljava/util/concurrent/atomic/AtomicInteger;", "reuseCallsPerHostFrom", _UrlKt.FRAGMENT_ENCODE_SET, "other", "Lokhttp3/internal/connection/RealCall;", "host", _UrlKt.FRAGMENT_ENCODE_SET, "getHost", "()Ljava/lang/String;", PluginsConstants.REQUEST, "Lokhttp3/Request;", "getRequest", "()Lokhttp3/Request;", "call", "getCall", "()Lokhttp3/internal/connection/RealCall;", "executeOn", "executorService", "Ljava/util/concurrent/ExecutorService;", "failRejected", "e", "Ljava/util/concurrent/RejectedExecutionException;", "failRejected$okhttp", "run", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall$AsyncCall\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,612:1\n227#2,9:613\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall$AsyncCall\n*L\n570#1:613,9\n*E\n"})
    public final class AsyncCall implements Runnable {
        private volatile AtomicInteger callsPerHost = new AtomicInteger(0);
        private final Callback responseCallback;

        public AsyncCall(Callback callback) {
            this.responseCallback = callback;
        }

        public final AtomicInteger getCallsPerHost() {
            return this.callsPerHost;
        }

        public final void reuseCallsPerHostFrom(AsyncCall other) {
            this.callsPerHost = other.callsPerHost;
        }

        public final String getHost() {
            return RealCall.this.getOriginalRequest().url().host();
        }

        public final Request getRequest() {
            return RealCall.this.getOriginalRequest();
        }

        /* JADX INFO: renamed from: getCall, reason: from getter */
        public final RealCall getThis$0() {
            return RealCall.this;
        }

        public final void executeOn(ExecutorService executorService) {
            _UtilJvmKt.assertLockNotHeld(RealCall.this.getClient().dispatcher());
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e) {
                    failRejected$okhttp(e);
                    RealCall.this.getClient().dispatcher().finished$okhttp(this);
                }
            } catch (Throwable th) {
                RealCall.this.getClient().dispatcher().finished$okhttp(this);
                throw th;
            }
        }

        public static /* synthetic */ void failRejected$okhttp$default(AsyncCall asyncCall, RejectedExecutionException rejectedExecutionException, int i, Object obj) {
            if ((i & 1) != 0) {
                rejectedExecutionException = null;
            }
            asyncCall.failRejected$okhttp(rejectedExecutionException);
        }

        public final void failRejected$okhttp(RejectedExecutionException e) {
            InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
            interruptedIOException.initCause(e);
            RealCall.this.noMoreExchanges$okhttp(interruptedIOException);
            this.responseCallback.onFailure(RealCall.this, interruptedIOException);
        }

        @Override // java.lang.Runnable
        public void run() {
            OkHttpClient client;
            String str = "OkHttp " + RealCall.this.redactedUrl$okhttp();
            RealCall realCall = RealCall.this;
            Thread threadCurrentThread = Thread.currentThread();
            String name = threadCurrentThread.getName();
            threadCurrentThread.setName(str);
            try {
                realCall.timeout.enter();
                boolean z = false;
                try {
                    try {
                        try {
                            this.responseCallback.onResponse(realCall, realCall.getResponseWithInterceptorChain$okhttp());
                            client = realCall.getClient();
                        } catch (IOException e) {
                            e = e;
                            z = true;
                            if (z) {
                                Platform.INSTANCE.get().log("Callback failure for " + realCall.toLoggableString(), 4, e);
                            } else {
                                this.responseCallback.onFailure(realCall, e);
                            }
                            client = realCall.getClient();
                        } catch (Throwable th) {
                            th = th;
                            z = true;
                            realCall.cancel();
                            if (!z) {
                                IOException iOException = new IOException("canceled due to " + th);
                                iOException.initCause(th);
                                this.responseCallback.onFailure(realCall, iOException);
                            }
                            if (!(th instanceof InterruptedException)) {
                                throw th;
                            }
                            Thread.currentThread().interrupt();
                            client = realCall.getClient();
                        }
                    } catch (Throwable th2) {
                        realCall.getClient().dispatcher().finished$okhttp(this);
                        throw th2;
                    }
                } catch (IOException e2) {
                    e = e2;
                } catch (Throwable th3) {
                    th = th3;
                }
                client.dispatcher().finished$okhttp(this);
            } finally {
                threadCurrentThread.setName(name);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/connection/RealCall$CallReference;", "Ljava/lang/ref/WeakReference;", "Lokhttp3/internal/connection/RealCall;", "referent", "callStackTrace", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/internal/connection/RealCall;Ljava/lang/Object;)V", "getCallStackTrace", "()Ljava/lang/Object;", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class CallReference extends WeakReference<RealCall> {
        private final Object callStackTrace;

        public CallReference(RealCall realCall, Object obj) {
            super(realCall);
            this.callStackTrace = obj;
        }

        public final Object getCallStackTrace() {
            return this.callStackTrace;
        }
    }
}
