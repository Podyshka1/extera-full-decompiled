package org.chromium.net.impl;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticBUOutline0;
import androidx.webkit.WebMessageCompat$$ExternalSyntheticBUOutline0;
import j$.time.Duration;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.url._UrlKt;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.CronetException;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.InlineExecutionProhibitedException;
import org.chromium.net.ThreadStatsUid;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;
import org.chromium.net.impl.CronetLogger;
import org.chromium.net.impl.JavaUrlRequest;
import org.chromium.net.impl.JavaUrlRequestUtils;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class JavaUrlRequest extends ExperimentalUrlRequest {
    private static final String TAG = "JavaUrlRequest";
    private final boolean mAllowDirectExecutor;
    private final AsyncUrlRequestCallback mCallbackAsync;
    private final int mCronetEngineId;
    private String mCurrentUrl;
    private HttpURLConnection mCurrentUrlConnection;
    private final JavaCronetEngine mEngine;
    private final Executor mExecutor;
    private boolean mFinalUserCallbackThrew;
    private final String mInitialMethod;
    private final CronetLogger mLogger;
    private final long mNetworkHandle;
    private int mNonfinalUserCallbackExceptionCount;
    private OutputStreamDataSink mOutputStreamDataSink;
    private String mPendingRedirectUrl;
    private int mReadCount;
    private ReadableByteChannel mResponseChannel;
    private final VersionSafeCallbacks$UploadDataProviderWrapper mUploadDataProvider;
    private final Executor mUploadExecutor;
    private UrlResponseInfoImpl mUrlResponseInfo;
    private final String mUserAgent;
    private final Map<String, String> mRequestHeaders = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    private final List<String> mUrlChain = new ArrayList();
    private final AtomicInteger mState = new AtomicInteger(0);
    private final AtomicBoolean mUploadProviderClosed = new AtomicBoolean(false);
    private volatile int mAdditionalStatusDetails = -1;

    public static final class SerializingExecutor implements Executor {
        private boolean mRunning;
        private final Executor mUnderlyingExecutor;
        private final Runnable mRunTasks = new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.runTasks();
            }
        };
        private final ArrayDeque<Runnable> mTaskQueue = new ArrayDeque<>();

        public SerializingExecutor(Executor executor) {
            this.mUnderlyingExecutor = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            synchronized (this.mTaskQueue) {
                this.mTaskQueue.addLast(runnable);
                try {
                    this.mUnderlyingExecutor.execute(this.mRunTasks);
                } catch (RejectedExecutionException unused) {
                    this.mTaskQueue.removeLast();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void runTasks() {
            synchronized (this.mTaskQueue) {
                try {
                    if (this.mRunning) {
                        return;
                    }
                    Runnable runnablePollFirst = this.mTaskQueue.pollFirst();
                    this.mRunning = runnablePollFirst != null;
                    while (runnablePollFirst != null) {
                        try {
                            runnablePollFirst.run();
                            synchronized (this.mTaskQueue) {
                                runnablePollFirst = this.mTaskQueue.pollFirst();
                                this.mRunning = runnablePollFirst != null;
                            }
                        } catch (Throwable th) {
                            synchronized (this.mTaskQueue) {
                                this.mRunning = false;
                                try {
                                    this.mUnderlyingExecutor.execute(this.mRunTasks);
                                } catch (RejectedExecutionException unused) {
                                }
                                throw th;
                            }
                        }
                    }
                } finally {
                }
            }
        }
    }

    public JavaUrlRequest(JavaCronetEngine javaCronetEngine, UrlRequest.Callback callback, final Executor executor, Executor executor2, String str, String str2, boolean z, boolean z2, int i, final boolean z3, final int i2, long j, String str3, ArrayList<Map.Entry<String, String>> arrayList, UploadDataProvider uploadDataProvider, Executor executor3) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#JavaUrlRequest");
        try {
            Objects.requireNonNull(str, "URL is required");
            Objects.requireNonNull(callback, "Listener is required");
            Objects.requireNonNull(executor, "Executor is required");
            Objects.requireNonNull(executor2, "userExecutor is required");
            this.mAllowDirectExecutor = z;
            this.mCallbackAsync = new AsyncUrlRequestCallback(callback, executor2);
            final int threadStatsTag = z2 ? i : TrafficStats.getThreadStatsTag();
            this.mExecutor = new SerializingExecutor(new Executor() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda2
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    executor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            JavaUrlRequest.$r8$lambda$8Jo97Oa6sMq63KSfyXfVRlvw9I0(i, z, i, runnable);
                        }
                    });
                }
            });
            this.mEngine = javaCronetEngine;
            this.mCronetEngineId = javaCronetEngine.getCronetEngineId();
            this.mLogger = javaCronetEngine.getCronetLogger();
            this.mCurrentUrl = str;
            this.mUserAgent = str2;
            this.mNetworkHandle = j;
            this.mInitialMethod = checkedHttpMethod(str3);
            setHeaders(arrayList);
            this.mUploadDataProvider = checkedUploadDataProvider(uploadDataProvider);
            this.mUploadExecutor = (executor3 == null || z) ? executor3 : new JavaUrlRequestUtils.DirectPreventingExecutor(executor3);
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped == null) {
                throw th;
            }
            try {
                scopedSysTraceEventScoped.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$8Jo97Oa6sMq63KSfyXfVRlvw9I0(int i, boolean z, int i2, Runnable runnable) {
        int threadStatsTag = TrafficStats.getThreadStatsTag();
        TrafficStats.setThreadStatsTag(i);
        if (z) {
            ThreadStatsUid.set(i2);
        }
        try {
            runnable.run();
        } finally {
            if (z) {
                ThreadStatsUid.clear();
            }
            TrafficStats.setThreadStatsTag(threadStatsTag);
        }
    }

    private static String checkedHttpMethod(String str) {
        Objects.requireNonNull(str, "Method is required.");
        if ("OPTIONS".equalsIgnoreCase(str) || "GET".equalsIgnoreCase(str) || "HEAD".equalsIgnoreCase(str) || "POST".equalsIgnoreCase(str) || "PUT".equalsIgnoreCase(str) || "DELETE".equalsIgnoreCase(str) || "TRACE".equalsIgnoreCase(str) || "PATCH".equalsIgnoreCase(str)) {
            return str;
        }
        f$$ExternalSyntheticBUOutline1.m212m("Invalid http method ".concat(str));
        return null;
    }

    private void setHeaders(ArrayList<Map.Entry<String, String>> arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Map.Entry<String, String> entry = arrayList.get(i);
            i++;
            Map.Entry<String, String> entry2 = entry;
            if (!isValidHeaderName(entry2.getKey()) || entry2.getValue().contains("\r\n")) {
                Buffer$$ExternalSyntheticBUOutline4.m919m("Invalid header with headername: ", entry2.getKey());
                return;
            }
            this.mRequestHeaders.put(entry2.getKey(), entry2.getValue());
        }
    }

    private static boolean isValidHeaderName(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != ',' && cCharAt != '/' && cCharAt != '{' && cCharAt != '}') {
                switch (cCharAt) {
                    case '\'':
                    case '(':
                    case ')':
                        break;
                    default:
                        switch (cCharAt) {
                            case ':':
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                            case '?':
                            case '@':
                                break;
                            default:
                                switch (cCharAt) {
                                    case '[':
                                    case '\\':
                                    case ']':
                                        break;
                                    default:
                                        if (!Character.isISOControl(cCharAt) && !Character.isWhitespace(cCharAt)) {
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            return false;
        }
        return true;
    }

    private VersionSafeCallbacks$UploadDataProviderWrapper checkedUploadDataProvider(UploadDataProvider uploadDataProvider) {
        if (uploadDataProvider == null) {
            return null;
        }
        if (!this.mRequestHeaders.containsKey("Content-Type")) {
            f$$ExternalSyntheticBUOutline1.m212m("Requests with upload data must have a Content-Type.");
            return null;
        }
        return new VersionSafeCallbacks$UploadDataProviderWrapper(uploadDataProvider);
    }

    public final class OutputStreamDataSink extends JavaUploadDataSinkBase {
        private WritableByteChannel mOutputChannel;
        private final AtomicBoolean mOutputChannelClosed;
        private final HttpURLConnection mUrlConnection;
        private OutputStream mUrlConnectionOutputStream;

        public OutputStreamDataSink(Executor executor, Executor executor2, HttpURLConnection httpURLConnection, VersionSafeCallbacks$UploadDataProviderWrapper versionSafeCallbacks$UploadDataProviderWrapper) {
            super(executor, executor2, versionSafeCallbacks$UploadDataProviderWrapper);
            this.mOutputChannelClosed = new AtomicBoolean(false);
            this.mUrlConnection = httpURLConnection;
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public void initializeRead() throws IOException {
            if (this.mOutputChannel == null) {
                JavaUrlRequest.this.mAdditionalStatusDetails = 10;
                this.mUrlConnection.setDoOutput(true);
                this.mUrlConnection.connect();
                JavaUrlRequest.this.mAdditionalStatusDetails = 12;
                OutputStream outputStream = this.mUrlConnection.getOutputStream();
                this.mUrlConnectionOutputStream = outputStream;
                this.mOutputChannel = Channels.newChannel(outputStream);
            }
        }

        public void closeOutputChannel() throws IOException {
            if (this.mOutputChannel == null || !this.mOutputChannelClosed.compareAndSet(false, true)) {
                return;
            }
            this.mOutputChannel.close();
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public void finish() throws IOException {
            closeOutputChannel();
            JavaUrlRequest.this.fireGetHeaders();
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public void initializeStart(long j) {
            HttpURLConnection httpURLConnection = this.mUrlConnection;
            if (j > 0) {
                httpURLConnection.setFixedLengthStreamingMode(j);
            } else {
                httpURLConnection.setChunkedStreamingMode(8192);
            }
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public int processSuccessfulRead(ByteBuffer byteBuffer) throws IOException {
            int iWrite = 0;
            while (byteBuffer.hasRemaining()) {
                iWrite += this.mOutputChannel.write(byteBuffer);
            }
            this.mUrlConnectionOutputStream.flush();
            return iWrite;
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public Runnable getErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
            return JavaUrlRequest.this.errorSetting(checkedRunnable);
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public Runnable getUploadErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
            return JavaUrlRequest.this.uploadErrorSetting(checkedRunnable);
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public void processUploadError(Throwable th) {
            JavaUrlRequest.this.enterUploadErrorState(th);
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void start() {
        this.mAdditionalStatusDetails = 10;
        this.mEngine.incrementActiveRequestCount();
        transitionStates(0, 1, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$start$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$2() {
        this.mUrlChain.add(this.mCurrentUrl);
        fireOpenConnection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterErrorState(CronetException cronetException) {
        if (setTerminalState(6)) {
            fireDisconnect();
            fireCloseUploadDataProvider();
            this.mCallbackAsync.onFailed(this.mUrlResponseInfo, cronetException);
        }
    }

    private boolean setTerminalState(int i) {
        int i2;
        do {
            i2 = this.mState.get();
            if (i2 == 0) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Can't enter error state before start");
                return false;
            }
            if (i2 == 6 || i2 == 7 || i2 == 8) {
                return false;
            }
        } while (!this.mState.compareAndSet(i2, i));
        return true;
    }

    private void enterUserErrorState(Throwable th) {
        executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$enterUserErrorState$3();
            }
        }, "enterUserErrorState");
        enterErrorState(new CallbackExceptionImpl("Exception received from UrlRequest.Callback", th));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enterUserErrorState$3() {
        this.mNonfinalUserCallbackExceptionCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterUploadErrorState(Throwable th) {
        enterErrorState(new CallbackExceptionImpl("Exception received from UploadDataProvider", th));
    }

    private void enterCronetErrorState(Throwable th) {
        enterErrorState(new CronetExceptionImpl("System error", th));
    }

    private void transitionStates(int i, int i2, Runnable runnable) {
        if (!this.mState.compareAndSet(i, i2)) {
            int i3 = this.mState.get();
            if (i3 == 8 || i3 == 6) {
                return;
            }
            WebMessageCompat$$ExternalSyntheticBUOutline0.m202m("Invalid state transition - expected ", JavaUrlRequestUtils.stateToString(i), " but was ", JavaUrlRequestUtils.stateToString(i3));
            return;
        }
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#transitionStates " + JavaUrlRequestUtils.stateToString(i) + " -> " + JavaUrlRequestUtils.stateToString(i2));
        try {
            runnable.run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void followRedirect() {
        transitionStates(3, 1, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest.1
            @Override // java.lang.Runnable
            public void run() {
                JavaUrlRequest javaUrlRequest = JavaUrlRequest.this;
                javaUrlRequest.mCurrentUrl = javaUrlRequest.mPendingRedirectUrl;
                JavaUrlRequest.this.mPendingRedirectUrl = null;
                JavaUrlRequest.this.fireOpenConnection();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireGetHeaders() {
        this.mAdditionalStatusDetails = 13;
        executeOnExecutor(errorSetting(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda10
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws IOException {
                this.f$0.lambda$fireGetHeaders$4();
            }
        }), "fireGetHeaders");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireGetHeaders$4() throws IOException {
        List<String> list;
        if (this.mCurrentUrlConnection == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        String headerField = "http/1.1";
        int i = 0;
        while (true) {
            String headerFieldKey = this.mCurrentUrlConnection.getHeaderFieldKey(i);
            if (headerFieldKey == null) {
                break;
            }
            if ("X-Android-Selected-Transport".equalsIgnoreCase(headerFieldKey)) {
                headerField = this.mCurrentUrlConnection.getHeaderField(i);
            }
            if (!headerFieldKey.startsWith("X-Android")) {
                arrayList.add(new AbstractMap.SimpleEntry(headerFieldKey, this.mCurrentUrlConnection.getHeaderField(i)));
            }
            i++;
        }
        int responseCode = this.mCurrentUrlConnection.getResponseCode();
        UrlResponseInfoImpl urlResponseInfoImpl = new UrlResponseInfoImpl(new ArrayList(this.mUrlChain), responseCode, this.mCurrentUrlConnection.getResponseMessage(), Collections.unmodifiableList(arrayList), false, headerField, _UrlKt.FRAGMENT_ENCODE_SET, 0L);
        if (responseCode >= 300 && responseCode < 400 && (list = urlResponseInfoImpl.getAllHeaders().get("location")) != null) {
            fireRedirectReceived(list.get(0), urlResponseInfoImpl);
            return;
        }
        this.mUrlResponseInfo = urlResponseInfoImpl;
        fireCloseUploadDataProvider();
        HttpURLConnection httpURLConnection = this.mCurrentUrlConnection;
        if (responseCode >= 400) {
            InputStream errorStream = httpURLConnection.getErrorStream();
            this.mResponseChannel = errorStream == null ? null : InputStreamChannel.wrap(errorStream);
            this.mCallbackAsync.onResponseStarted();
        } else {
            this.mResponseChannel = InputStreamChannel.wrap(httpURLConnection.getInputStream());
            this.mCallbackAsync.onResponseStarted();
        }
    }

    private void fireCloseUploadDataProvider() {
        if (this.mUploadDataProvider == null || !this.mUploadProviderClosed.compareAndSet(false, true)) {
            return;
        }
        try {
            Executor executor = this.mUploadExecutor;
            final VersionSafeCallbacks$UploadDataProviderWrapper versionSafeCallbacks$UploadDataProviderWrapper = this.mUploadDataProvider;
            Objects.requireNonNull(versionSafeCallbacks$UploadDataProviderWrapper);
            executor.execute(uploadErrorSetting(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda0
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() {
                    versionSafeCallbacks$UploadDataProviderWrapper.close();
                }
            }));
        } catch (RejectedExecutionException e) {
            Log.e(TAG, "Exception when closing uploadDataProvider", e);
        }
    }

    private void fireRedirectReceived(final String str, final UrlResponseInfo urlResponseInfo) {
        transitionStates(1, 2, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fireRedirectReceived$6(str, urlResponseInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireRedirectReceived$6(String str, final UrlResponseInfo urlResponseInfo) {
        String string = URI.create(this.mCurrentUrl).resolve(str).toString();
        this.mPendingRedirectUrl = string;
        this.mUrlChain.add(string);
        transitionStates(2, 3, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fireRedirectReceived$5(urlResponseInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireRedirectReceived$5(UrlResponseInfo urlResponseInfo) {
        this.mCallbackAsync.onRedirectReceived(urlResponseInfo, this.mPendingRedirectUrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireOpenConnection() {
        executeOnExecutor(errorSetting(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda4
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws IOException {
                this.f$0.lambda$fireOpenConnection$7();
            }
        }), "fireOpenConnection");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireOpenConnection$7() throws IOException {
        if (this.mState.get() == 8) {
            return;
        }
        URL url = new URL(this.mCurrentUrl);
        HttpURLConnection httpURLConnection = this.mCurrentUrlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.mCurrentUrlConnection = null;
        }
        long j = this.mNetworkHandle;
        if (j == -1) {
            this.mCurrentUrlConnection = (HttpURLConnection) url.openConnection();
        } else {
            Network networkFromHandle = getNetworkFromHandle(j);
            if (networkFromHandle == null) {
                throw new NetworkExceptionImpl("Network bound to request not found", 9, -4);
            }
            this.mCurrentUrlConnection = (HttpURLConnection) networkFromHandle.openConnection(url);
        }
        this.mCurrentUrlConnection.setInstanceFollowRedirects(false);
        if (!this.mRequestHeaders.containsKey("User-Agent")) {
            this.mRequestHeaders.put("User-Agent", this.mUserAgent);
        }
        for (Map.Entry<String, String> entry : this.mRequestHeaders.entrySet()) {
            this.mCurrentUrlConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        this.mCurrentUrlConnection.setRequestMethod(this.mInitialMethod);
        VersionSafeCallbacks$UploadDataProviderWrapper versionSafeCallbacks$UploadDataProviderWrapper = this.mUploadDataProvider;
        if (versionSafeCallbacks$UploadDataProviderWrapper != null) {
            OutputStreamDataSink outputStreamDataSink = new OutputStreamDataSink(this.mUploadExecutor, this.mExecutor, this.mCurrentUrlConnection, versionSafeCallbacks$UploadDataProviderWrapper);
            this.mOutputStreamDataSink = outputStreamDataSink;
            outputStreamDataSink.start(this.mUrlChain.size() == 1);
        } else {
            this.mAdditionalStatusDetails = 10;
            this.mCurrentUrlConnection.connect();
            fireGetHeaders();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable errorSetting(final JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        return new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$errorSetting$8(checkedRunnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$errorSetting$8(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            checkedRunnable.run();
        } catch (Throwable th) {
            enterCronetErrorState(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable userErrorSetting(final JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        return new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$userErrorSetting$9(checkedRunnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$userErrorSetting$9(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            checkedRunnable.run();
        } catch (Throwable th) {
            enterUserErrorState(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable uploadErrorSetting(final JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        return new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uploadErrorSetting$10(checkedRunnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadErrorSetting$10(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            checkedRunnable.run();
        } catch (Throwable th) {
            enterUploadErrorState(th);
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void read(final ByteBuffer byteBuffer) {
        Preconditions.checkDirect(byteBuffer);
        Preconditions.checkHasRemaining(byteBuffer);
        final JavaUrlRequestUtils.CheckedRunnable checkedRunnable = new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda6
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws IOException {
                this.f$0.lambda$read$11(byteBuffer);
            }
        };
        transitionStates(4, 5, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$read$12(checkedRunnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$read$11(ByteBuffer byteBuffer) throws IOException {
        int i;
        ReadableByteChannel readableByteChannel = this.mResponseChannel;
        if (readableByteChannel != null) {
            this.mReadCount++;
            i = readableByteChannel.read(byteBuffer);
        } else {
            i = -1;
        }
        processReadResult(i, byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$read$12(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        executeOnExecutor(errorSetting(checkedRunnable), "read");
    }

    private void processReadResult(int i, ByteBuffer byteBuffer) throws IOException {
        if (i != -1) {
            this.mCallbackAsync.onReadCompleted(this.mUrlResponseInfo, byteBuffer);
            return;
        }
        ReadableByteChannel readableByteChannel = this.mResponseChannel;
        if (readableByteChannel != null) {
            readableByteChannel.close();
        }
        if (this.mState.compareAndSet(5, 7)) {
            fireDisconnect();
            this.mCallbackAsync.onSucceeded(this.mUrlResponseInfo);
        }
    }

    private void fireDisconnect() {
        executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fireDisconnect$13();
            }
        }, "fireDisconnect");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireDisconnect$13() {
        OutputStreamDataSink outputStreamDataSink = this.mOutputStreamDataSink;
        if (outputStreamDataSink != null) {
            try {
                outputStreamDataSink.closeOutputChannel();
            } catch (IOException e) {
                Log.e(TAG, "Exception when closing OutputChannel", e);
            }
        }
        HttpURLConnection httpURLConnection = this.mCurrentUrlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.mCurrentUrlConnection = null;
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void cancel() {
        int andSet = this.mState.getAndSet(8);
        if (andSet == 1 || andSet == 2 || andSet == 3 || andSet == 4 || andSet == 5) {
            fireDisconnect();
            fireCloseUploadDataProvider();
            this.mCallbackAsync.onCanceled(this.mUrlResponseInfo);
        }
    }

    public static long estimateHeadersSizeInBytesList(Map<String, List<String>> map) {
        long length = 0;
        if (map == null) {
            return 0L;
        }
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                length += (long) key.length();
            }
            if (entry.getValue() != null) {
                for (String str : entry.getValue()) {
                    if (str != null) {
                        length += (long) str.length();
                    }
                }
            }
        }
        return length;
    }

    public static long estimateHeadersSizeInBytes(Map<String, String> map) {
        long length = 0;
        if (map == null) {
            return 0L;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                length += (long) key.length();
            }
            String value = entry.getValue();
            if (value != null) {
                length += (long) value.length();
            }
        }
        return length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long parseContentLengthString(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public final class AsyncUrlRequestCallback {
        final VersionSafeCallbacks$UrlRequestCallback mCallback;
        final Executor mFallbackExecutor;
        final Executor mUserExecutor;

        public AsyncUrlRequestCallback(UrlRequest.Callback callback, Executor executor) {
            this.mCallback = new VersionSafeCallbacks$UrlRequestCallback(callback);
            if (JavaUrlRequest.this.mAllowDirectExecutor) {
                this.mUserExecutor = executor;
                this.mFallbackExecutor = null;
            } else {
                this.mUserExecutor = new JavaUrlRequestUtils.DirectPreventingExecutor(executor);
                this.mFallbackExecutor = executor;
            }
        }

        public void execute(JavaUrlRequestUtils.CheckedRunnable checkedRunnable, String str) {
            try {
                executeOnUserExecutor(JavaUrlRequest.this.userErrorSetting(checkedRunnable), str);
            } catch (RejectedExecutionException e) {
                JavaUrlRequest.this.enterErrorState(new CronetExceptionImpl("Exception posting task to executor", e));
            }
        }

        public void onRedirectReceived(final UrlResponseInfo urlResponseInfo, final String str) {
            execute(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() {
                    this.f$0.lambda$onRedirectReceived$1(urlResponseInfo, str);
                }
            }, "onRedirectReceived");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRedirectReceived$1(UrlResponseInfo urlResponseInfo, String str) {
            this.mCallback.onRedirectReceived(JavaUrlRequest.this, urlResponseInfo, str);
        }

        public void onResponseStarted() {
            execute(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() {
                    this.f$0.lambda$onResponseStarted$2();
                }
            }, "onResponseStarted");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResponseStarted$2() {
            if (JavaUrlRequest.this.mState.compareAndSet(1, 4)) {
                VersionSafeCallbacks$UrlRequestCallback versionSafeCallbacks$UrlRequestCallback = this.mCallback;
                JavaUrlRequest javaUrlRequest = JavaUrlRequest.this;
                versionSafeCallbacks$UrlRequestCallback.onResponseStarted(javaUrlRequest, javaUrlRequest.mUrlResponseInfo);
            }
        }

        public void onReadCompleted(final UrlResponseInfo urlResponseInfo, final ByteBuffer byteBuffer) {
            execute(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() {
                    this.f$0.lambda$onReadCompleted$3(urlResponseInfo, byteBuffer);
                }
            }, "onReadCompleted");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReadCompleted$3(UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
            if (JavaUrlRequest.this.mState.compareAndSet(5, 4)) {
                this.mCallback.onReadCompleted(JavaUrlRequest.this, urlResponseInfo, byteBuffer);
            }
        }

        private CronetLogger.CronetTrafficInfo buildCronetTrafficInfo() {
            Map<String, List<String>> allHeaders;
            String negotiatedProtocol;
            boolean zWasCached;
            int i;
            long jEstimateHeadersSizeInBytes;
            long j;
            long jEstimateHeadersSizeInBytesList;
            CronetLogger.CronetTrafficInfo.RequestTerminalState requestTerminalState;
            if (JavaUrlRequest.this.mUrlResponseInfo != null) {
                allHeaders = JavaUrlRequest.this.mUrlResponseInfo.getAllHeaders();
                negotiatedProtocol = JavaUrlRequest.this.mUrlResponseInfo.getNegotiatedProtocol();
                int httpStatusCode = JavaUrlRequest.this.mUrlResponseInfo.getHttpStatusCode();
                zWasCached = JavaUrlRequest.this.mUrlResponseInfo.wasCached();
                i = httpStatusCode;
            } else {
                allHeaders = Collections.EMPTY_MAP;
                negotiatedProtocol = _UrlKt.FRAGMENT_ENCODE_SET;
                zWasCached = false;
                i = 0;
            }
            String str = negotiatedProtocol;
            long contentLengthString = -1;
            long j2 = 0;
            if (zWasCached) {
                jEstimateHeadersSizeInBytes = 0;
                j = 0;
            } else {
                jEstimateHeadersSizeInBytes = JavaUrlRequest.estimateHeadersSizeInBytes(JavaUrlRequest.this.mRequestHeaders);
                j = 0;
                j2 = -1;
            }
            if (zWasCached) {
                contentLengthString = j;
                jEstimateHeadersSizeInBytesList = contentLengthString;
            } else {
                jEstimateHeadersSizeInBytesList = JavaUrlRequest.estimateHeadersSizeInBytesList(allHeaders);
                if (allHeaders.containsKey("Content-Length")) {
                    contentLengthString = JavaUrlRequest.parseContentLengthString(allHeaders.get("Content-Length").get(0));
                }
            }
            Duration durationOfSeconds = Duration.ofSeconds(j);
            Duration durationOfSeconds2 = Duration.ofSeconds(j);
            int i2 = JavaUrlRequest.this.mState.get();
            if (i2 == 6) {
                requestTerminalState = CronetLogger.CronetTrafficInfo.RequestTerminalState.ERROR;
            } else if (i2 == 7) {
                requestTerminalState = CronetLogger.CronetTrafficInfo.RequestTerminalState.SUCCEEDED;
            } else if (i2 == 8) {
                requestTerminalState = CronetLogger.CronetTrafficInfo.RequestTerminalState.CANCELLED;
            } else {
                ExifInterface$$ExternalSyntheticBUOutline0.m148m("Internal Cronet error: attempted to report metrics but current state (", i2, ") is not a done state!");
                return null;
            }
            return new CronetLogger.CronetTrafficInfo(jEstimateHeadersSizeInBytes, j2, jEstimateHeadersSizeInBytesList, contentLengthString, i, durationOfSeconds, durationOfSeconds2, str, false, false, requestTerminalState, JavaUrlRequest.this.mNonfinalUserCallbackExceptionCount, JavaUrlRequest.this.mReadCount, JavaUrlRequest.this.mOutputStreamDataSink != null ? JavaUrlRequest.this.mOutputStreamDataSink.getReadCount() : 0, false, JavaUrlRequest.this.mFinalUserCallbackThrew, Process.myUid(), 0, 0, 0, CronetLogger.CronetTrafficInfo.RequestFailureReason.UNKNOWN, false, ImplVersion.getCronetVersion(), CronetLogger.CronetSource.CRONET_SOURCE_FALLBACK, -1L, -1L, -1L, -1L);
        }

        private void maybeReportMetrics() {
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            JavaUrlRequest.this.executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$maybeReportMetrics$4();
                }
            }, "maybeReportMetrics");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$maybeReportMetrics$4() {
            try {
                JavaUrlRequest.this.mLogger.logCronetTrafficInfo(JavaUrlRequest.this.mCronetEngineId, buildCronetTrafficInfo());
            } catch (RuntimeException e) {
                Log.i(JavaUrlRequest.TAG, "Error while trying to log CronetTrafficInfo: ", e);
            }
        }

        public void onCanceled(final UrlResponseInfo urlResponseInfo) {
            JavaUrlRequest.this.closeResponseChannel();
            executeOnUserExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCanceled$5(urlResponseInfo);
                }
            }, "onCanceled");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCanceled$5(UrlResponseInfo urlResponseInfo) {
            try {
                this.mCallback.onCanceled(JavaUrlRequest.this, urlResponseInfo);
            } catch (Exception e) {
                JavaUrlRequest.this.onFinalCallbackException("onCanceled", e);
            }
            maybeReportMetrics();
            JavaUrlRequest.this.mEngine.decrementActiveRequestCount();
        }

        public void onSucceeded(final UrlResponseInfo urlResponseInfo) {
            executeOnUserExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSucceeded$6(urlResponseInfo);
                }
            }, "onSucceeded");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSucceeded$6(UrlResponseInfo urlResponseInfo) {
            try {
                this.mCallback.onSucceeded(JavaUrlRequest.this, urlResponseInfo);
            } catch (Exception e) {
                JavaUrlRequest.this.onFinalCallbackException("onSucceded", e);
            }
            maybeReportMetrics();
            JavaUrlRequest.this.mEngine.decrementActiveRequestCount();
        }

        public void onFailed(final UrlResponseInfo urlResponseInfo, final CronetException cronetException) {
            JavaUrlRequest.this.closeResponseChannel();
            Runnable runnable = new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFailed$7(urlResponseInfo, cronetException);
                }
            };
            try {
                executeOnUserExecutor(runnable, "onFailed");
            } catch (InlineExecutionProhibitedException unused) {
                if (this.mFallbackExecutor != null) {
                    executeOnFallbackExecutor(runnable, "onFailed");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFailed$7(UrlResponseInfo urlResponseInfo, CronetException cronetException) {
            try {
                this.mCallback.onFailed(JavaUrlRequest.this, urlResponseInfo, cronetException);
            } catch (Exception e) {
                JavaUrlRequest.this.onFinalCallbackException("onFailed", e);
            }
            maybeReportMetrics();
            JavaUrlRequest.this.mEngine.decrementActiveRequestCount();
        }

        public void executeOnUserExecutor(final Runnable runnable, final String str) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnUserExecutor " + str);
            try {
                this.mUserExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        JavaUrlRequest.AsyncUrlRequestCallback.m4909$r8$lambda$D3Lg1jcdUAIZEKduVfKuga6A4E(str, runnable);
                    }
                });
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$D3Lg1jcdUAIZEKduVfK-uga6A4E, reason: not valid java name */
        public static /* synthetic */ void m4909$r8$lambda$D3Lg1jcdUAIZEKduVfKuga6A4E(String str, Runnable runnable) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnUserExecutor " + str + " running callback");
            try {
                runnable.run();
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        public void executeOnFallbackExecutor(final Runnable runnable, final String str) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnFallbackExecutor " + str);
            try {
                this.mFallbackExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        JavaUrlRequest.AsyncUrlRequestCallback.$r8$lambda$_9B4GRLfAWjHu6e_D7q3tew4R6c(str, runnable);
                    }
                });
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        public static /* synthetic */ void $r8$lambda$_9B4GRLfAWjHu6e_D7q3tew4R6c(String str, Runnable runnable) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnFallbackExecutor  " + str + " running callback");
            try {
                runnable.run();
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeResponseChannel() {
        executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$closeResponseChannel$14();
            }
        }, "closeResponseChannel");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeResponseChannel$14() {
        ReadableByteChannel readableByteChannel = this.mResponseChannel;
        if (readableByteChannel != null) {
            try {
                readableByteChannel.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.mResponseChannel = null;
        }
    }

    private Network getNetworkFromHandle(long j) {
        for (Network network : ((ConnectivityManager) this.mEngine.getContext().getSystemService("connectivity")).getAllNetworks()) {
            if (network.getNetworkHandle() == j) {
                return network;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFinalCallbackException(String str, Exception exc) {
        Log.e(TAG, "Exception in " + str + " method", exc);
        this.mFinalUserCallbackThrew = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeOnExecutor(final Runnable runnable, final String str) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#executeOnExecutor " + str);
        try {
            this.mExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    JavaUrlRequest.$r8$lambda$NQYCbe0U94j06X1DTQBiU1HE4R4(str, runnable);
                }
            });
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static /* synthetic */ void $r8$lambda$NQYCbe0U94j06X1DTQBiU1HE4R4(String str, Runnable runnable) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#executeOnExecutor " + str + " running callback");
        try {
            runnable.run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
