package okhttp3.internal.connection;

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
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
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
import okio.Timeout;

/* JADX INFO: loaded from: classes.dex */
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
    private final C26601 timeout;
    private boolean timeoutEarlyExit;

    private final IOException callDone(IOException iOException) {
        Socket socketReleaseConnectionNoEvents$okhttp;
        boolean z = _UtilJvmKt.assertionsEnabled;
        if (z && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        RealConnection realConnection = this.connection;
        if (realConnection != null) {
            if (z && Thread.holdsLock(realConnection)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + realConnection);
            }
            synchronized (realConnection) {
                socketReleaseConnectionNoEvents$okhttp = releaseConnectionNoEvents$okhttp();
            }
            if (this.connection == null) {
                if (socketReleaseConnectionNoEvents$okhttp != null) {
                    _UtilJvmKt.closeQuietly(socketReleaseConnectionNoEvents$okhttp);
                }
                this.eventListener.connectionReleased(this, realConnection);
                realConnection.getConnectionListener$okhttp().connectionReleased(realConnection, this);
                if (socketReleaseConnectionNoEvents$okhttp != null) {
                    realConnection.getConnectionListener$okhttp().connectionClosed(realConnection);
                }
            } else if (socketReleaseConnectionNoEvents$okhttp != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        IOException iOExceptionTimeoutExit = timeoutExit(iOException);
        if (iOException != null) {
            EventListener eventListener = this.eventListener;
            Intrinsics.checkNotNull(iOExceptionTimeoutExit);
            eventListener.callFailed(this, iOExceptionTimeoutExit);
            return iOExceptionTimeoutExit;
        }
        this.eventListener.callEnd(this);
        return iOExceptionTimeoutExit;
    }

    public final void acquireConnectionNoEvents(RealConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
        }
        if (this.connection != null) {
            throw new IllegalStateException("Check failed.");
        }
        this.connection = connection;
        connection.getCalls().add(new CallReference(this, this.callStackTrace));
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [okhttp3.internal.connection.RealCall$timeout$1, okio.Timeout] */
    public RealCall(OkHttpClient client, Request originalRequest, boolean z) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.client = client;
        this.originalRequest = originalRequest;
        this.forWebSocket = z;
        this.connectionPool = client.connectionPool().getDelegate$okhttp();
        this.eventListener = client.eventListenerFactory().create(this);
        ?? r5 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall.timeout.1
            @Override // okio.AsyncTimeout
            protected void timedOut() {
                RealCall.this.cancel();
            }
        };
        r5.timeout(client.callTimeoutMillis(), TimeUnit.MILLISECONDS);
        this.timeout = r5;
        this.executed = new AtomicBoolean();
        this.expectMoreExchanges = true;
        this.plansToCancel = new CopyOnWriteArrayList<>();
        this.tags = new AtomicReference<>(originalRequest.getTags$okhttp());
    }

    public final void exitNetworkInterceptorExchange$okhttp(boolean z) {
        Exchange exchange;
        synchronized (this) {
            if (!this.expectMoreExchanges) {
                throw new IllegalStateException("released");
            }
            Unit unit = Unit.INSTANCE;
        }
        if (z && (exchange = this.exchange) != null) {
            exchange.detachWithViolence();
        }
        this.interceptorScopedExchange = null;
    }

    public final Exchange initExchange$okhttp(RealInterceptorChain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
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
        Intrinsics.checkNotNull(exchangeFinder);
        Exchange exchange = new Exchange(this, this.eventListener, exchangeFinder, exchangeFinder.find().newCodec$okhttp(this.client, chain));
        this.interceptorScopedExchange = exchange;
        this.exchange = exchange;
        synchronized (this) {
            this.requestBodyOpen = true;
            this.responseBodyOpen = true;
        }
        if (this.canceled) {
            throw new IOException("Canceled");
        }
        return exchange;
    }

    public final IOException noMoreExchanges$okhttp(IOException iOException) {
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
        return z ? callDone(iOException) : iOException;
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

    public final EventListener getEventListener$okhttp() {
        return this.eventListener;
    }

    public final RealConnection getConnection() {
        return this.connection;
    }

    public final Exchange getInterceptorScopedExchange$okhttp() {
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
    public <T> T tag(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) JvmClassMappingKt.getJavaClass(type).cast(this.tags.get().get(type));
    }

    @Override // okhttp3.Call
    public <T> T tag(Class<? extends T> type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) tag(JvmClassMappingKt.getKotlinClass(type));
    }

    @Override // okhttp3.Call
    public <T> T tag(KClass type, Function0<? extends T> computeIfAbsent) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(computeIfAbsent, "computeIfAbsent");
        return (T) TagsKt.computeIfAbsent(this.tags, type, computeIfAbsent);
    }

    @Override // okhttp3.Call
    public <T> T tag(Class<T> type, Function0<? extends T> computeIfAbsent) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(computeIfAbsent, "computeIfAbsent");
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
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            it.next().mo3882cancel();
        }
        this.eventListener.canceled(this);
    }

    @Override // okhttp3.Call
    public boolean isCanceled() {
        return this.canceled;
    }

    @Override // okhttp3.Call
    public Response execute() {
        if (!this.executed.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
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
        Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
        if (!this.executed.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
        }
        callStart();
        this.client.dispatcher().enqueue$okhttp(new AsyncCall(this, responseCallback));
    }

    @Override // okhttp3.Call
    public boolean isExecuted() {
        return this.executed.get();
    }

    private final void callStart() {
        this.callStackTrace = Platform.Companion.get().getStackTraceForCloseable("response.body().close()");
        this.eventListener.callStart(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
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
        boolean z = false;
        try {
            try {
                Response responseProceed = new RealInterceptorChain(this, arrayList, 0, null, this.originalRequest, this.client.connectTimeoutMillis(), this.client.readTimeoutMillis(), this.client.writeTimeoutMillis()).proceed(this.originalRequest);
                if (isCanceled()) {
                    _UtilCommonKt.closeQuietly(responseProceed);
                    throw new IOException("Canceled");
                }
                noMoreExchanges$okhttp(null);
                return responseProceed;
            } catch (IOException e) {
                z = true;
                IOException iOExceptionNoMoreExchanges$okhttp = noMoreExchanges$okhttp(e);
                Intrinsics.checkNotNull(iOExceptionNoMoreExchanges$okhttp, "null cannot be cast to non-null type kotlin.Throwable");
                throw iOExceptionNoMoreExchanges$okhttp;
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

    public final void enterNetworkInterceptorExchange(Request request, boolean z, RealInterceptorChain chain) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(chain, "chain");
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
            if (z) {
                RealRoutePlanner realRoutePlanner = new RealRoutePlanner(this.client.getTaskRunner$okhttp(), this.connectionPool, this.client.readTimeoutMillis(), this.client.writeTimeoutMillis(), chain.getConnectTimeoutMillis$okhttp(), chain.getReadTimeoutMillis$okhttp(), this.client.pingIntervalMillis(), this.client.retryOnConnectionFailure(), this.client.fastFallback(), this.client.address(request.url()), this.client.getRouteDatabase$okhttp(), this, request);
                this.exchangeFinder = this.client.fastFallback() ? new FastFallbackExchangeFinder(realRoutePlanner, this.client.getTaskRunner$okhttp()) : new SequentialExchangeFinder(realRoutePlanner);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
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

    public final IOException messageDone$okhttp(Exchange exchange, boolean z, boolean z2, boolean z3, boolean z4, IOException iOException) {
        boolean z5;
        boolean z6;
        Intrinsics.checkNotNullParameter(exchange, "exchange");
        if (Intrinsics.areEqual(exchange, this.exchange)) {
            synchronized (this) {
                z5 = false;
                if (z) {
                    try {
                        if (!this.requestBodyOpen) {
                            if ((z2 || !this.responseBodyOpen) && ((!z4 || !this.socketSinkOpen) && (!z3 || !this.socketSourceOpen))) {
                                z6 = false;
                            }
                            Unit unit = Unit.INSTANCE;
                        }
                        if (z) {
                            this.requestBodyOpen = false;
                        }
                        if (z2) {
                            this.responseBodyOpen = false;
                        }
                        if (z4) {
                            this.socketSinkOpen = false;
                        }
                        if (z3) {
                            this.socketSourceOpen = false;
                        }
                        boolean z7 = (this.requestBodyOpen || this.responseBodyOpen || this.socketSinkOpen || this.socketSourceOpen) ? false : true;
                        if (z7 && !this.expectMoreExchanges) {
                            z5 = true;
                        }
                        boolean z8 = z7;
                        z6 = z5;
                        z5 = z8;
                        Unit unit2 = Unit.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                } else if (z2) {
                    z6 = false;
                    Unit unit22 = Unit.INSTANCE;
                } else {
                    z6 = false;
                    Unit unit222 = Unit.INSTANCE;
                }
            }
            if (z5) {
                this.exchange = null;
                RealConnection realConnection = this.connection;
                if (realConnection != null) {
                    realConnection.incrementSuccessCount$okhttp();
                }
            }
            if (z6) {
                return callDone(iOException);
            }
        }
        return iOException;
    }

    public final Socket releaseConnectionNoEvents$okhttp() {
        RealConnection realConnection = this.connection;
        Intrinsics.checkNotNull(realConnection);
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + realConnection);
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
            throw new IllegalStateException("Check failed.");
        }
        calls.remove(i);
        this.connection = null;
        if (calls.isEmpty()) {
            realConnection.setIdleAtNs(System.nanoTime());
            if (this.connectionPool.connectionBecameIdle(realConnection)) {
                return realConnection.socket();
            }
        }
        return null;
    }

    private final IOException timeoutExit(IOException iOException) {
        if (this.timeoutEarlyExit || !exit()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final void timeoutEarlyExit() {
        if (this.timeoutEarlyExit) {
            throw new IllegalStateException("Check failed.");
        }
        this.timeoutEarlyExit = true;
        exit();
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
        if (exchange == null || !exchange.getHasFailure$okhttp()) {
            return false;
        }
        ExchangeFinder exchangeFinder = this.exchangeFinder;
        Intrinsics.checkNotNull(exchangeFinder);
        RoutePlanner routePlanner = exchangeFinder.getRoutePlanner();
        Exchange exchange2 = this.exchange;
        return routePlanner.hasNext(exchange2 != null ? exchange2.getConnection$okhttp() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String toLoggableString() {
        StringBuilder sb = new StringBuilder();
        sb.append(isCanceled() ? "canceled " : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append(this.forWebSocket ? "web socket" : "call");
        sb.append(" to ");
        sb.append(redactedUrl$okhttp());
        return sb.toString();
    }

    public final String redactedUrl$okhttp() {
        return this.originalRequest.url().redact();
    }

    public final class AsyncCall implements Runnable {
        private volatile AtomicInteger callsPerHost;
        private final Callback responseCallback;
        final /* synthetic */ RealCall this$0;

        public AsyncCall(RealCall realCall, Callback responseCallback) {
            Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
            this.this$0 = realCall;
            this.responseCallback = responseCallback;
            this.callsPerHost = new AtomicInteger(0);
        }

        public final AtomicInteger getCallsPerHost() {
            return this.callsPerHost;
        }

        public final void reuseCallsPerHostFrom(AsyncCall other) {
            Intrinsics.checkNotNullParameter(other, "other");
            this.callsPerHost = other.callsPerHost;
        }

        public final String getHost() {
            return this.this$0.getOriginalRequest().url().host();
        }

        public final Request getRequest() {
            return this.this$0.getOriginalRequest();
        }

        public final RealCall getCall() {
            return this.this$0;
        }

        public final void executeOn(ExecutorService executorService) {
            Intrinsics.checkNotNullParameter(executorService, "executorService");
            _UtilJvmKt.assertLockNotHeld(this.this$0.getClient().dispatcher());
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e) {
                    failRejected$okhttp(e);
                    this.this$0.getClient().dispatcher().finished$okhttp(this);
                }
            } catch (Throwable th) {
                this.this$0.getClient().dispatcher().finished$okhttp(this);
                throw th;
            }
        }

        public static /* synthetic */ void failRejected$okhttp$default(AsyncCall asyncCall, RejectedExecutionException rejectedExecutionException, int i, Object obj) {
            if ((i & 1) != 0) {
                rejectedExecutionException = null;
            }
            asyncCall.failRejected$okhttp(rejectedExecutionException);
        }

        public final void failRejected$okhttp(RejectedExecutionException rejectedExecutionException) {
            InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
            interruptedIOException.initCause(rejectedExecutionException);
            this.this$0.noMoreExchanges$okhttp(interruptedIOException);
            this.responseCallback.onFailure(this.this$0, interruptedIOException);
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            Throwable th;
            IOException e;
            OkHttpClient client;
            String str = "OkHttp " + this.this$0.redactedUrl$okhttp();
            RealCall realCall = this.this$0;
            Thread threadCurrentThread = Thread.currentThread();
            String name = threadCurrentThread.getName();
            threadCurrentThread.setName(str);
            try {
                realCall.timeout.enter();
                try {
                    try {
                        z = true;
                        try {
                            this.responseCallback.onResponse(realCall, realCall.getResponseWithInterceptorChain$okhttp());
                            client = realCall.getClient();
                        } catch (IOException e2) {
                            e = e2;
                            if (z) {
                                Platform.Companion.get().log("Callback failure for " + realCall.toLoggableString(), 4, e);
                            } else {
                                this.responseCallback.onFailure(realCall, e);
                            }
                            client = realCall.getClient();
                        } catch (Throwable th2) {
                            th = th2;
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
                    } catch (Throwable th3) {
                        realCall.getClient().dispatcher().finished$okhttp(this);
                        throw th3;
                    }
                } catch (IOException e3) {
                    z = false;
                    e = e3;
                } catch (Throwable th4) {
                    z = false;
                    th = th4;
                }
                client.dispatcher().finished$okhttp(this);
            } finally {
                threadCurrentThread.setName(name);
            }
        }
    }

    public static final class CallReference extends WeakReference<RealCall> {
        private final Object callStackTrace;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CallReference(RealCall referent, Object obj) {
            super(referent);
            Intrinsics.checkNotNullParameter(referent, "referent");
            this.callStackTrace = obj;
        }

        public final Object getCallStackTrace() {
            return this.callStackTrace;
        }
    }
}
