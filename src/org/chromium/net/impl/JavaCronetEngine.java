package org.chromium.net.impl;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UrlRequest;
import org.chromium.net.impl.CronetLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class JavaCronetEngine extends CronetEngineBase {
    private static final String TAG = "JavaCronetEngine";
    private final Context mContext;
    private final int mCronetEngineId;
    private final ExecutorService mExecutorService;
    private final CronetLogger mLogger;
    private final String mUserAgent;
    private final AtomicInteger mActiveRequestCount = new AtomicInteger();
    private long mNetworkHandle = -1;

    @Override // org.chromium.net.CronetEngine
    public /* bridge */ /* synthetic */ UrlRequest.Builder newUrlRequestBuilder(String str, UrlRequest.Callback callback, Executor executor) {
        return super.newUrlRequestBuilder(str, callback, executor);
    }

    public JavaCronetEngine(CronetEngineBuilderImpl cronetEngineBuilderImpl) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("JavaCronetEngine#JavaCronetEngine");
        try {
            Context context = cronetEngineBuilderImpl.getContext();
            this.mContext = context;
            int iHashCode = hashCode();
            this.mCronetEngineId = iHashCode;
            this.mUserAgent = cronetEngineBuilderImpl.getUserAgent();
            this.mExecutorService = new ThreadPoolExecutor(10, 10, 50L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: org.chromium.net.impl.JavaCronetEngine.1
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(final Runnable runnable) {
                    return Executors.defaultThreadFactory().newThread(new Runnable(this) { // from class: org.chromium.net.impl.JavaCronetEngine.1.1
                        final /* synthetic */ ThreadFactoryC25971 this$1;

                        {
                            this.this$1 = this;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            Thread.currentThread().setName("JavaCronetEngine");
                            Process.setThreadPriority(0);
                            runnable.run();
                        }
                    });
                }
            });
            CronetLogger.CronetSource cronetSource = CronetLogger.CronetSource.CRONET_SOURCE_FALLBACK;
            CronetLogger cronetLoggerCreateLogger = CronetLoggerFactory.createLogger(context, cronetSource);
            this.mLogger = cronetLoggerCreateLogger;
            try {
                cronetLoggerCreateLogger.logCronetEngineCreation(iHashCode, cronetEngineBuilderImpl.toLoggerInfo(), buildCronetVersion(), cronetSource);
            } catch (RuntimeException e) {
                Log.e(TAG, "Error while trying to log JavaCronetEngine creation: ", e);
            }
            Log.w(TAG, "using the fallback Cronet Engine implementation. Performance will suffer and many HTTP client features, including caching, will not work.");
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } finally {
        }
    }

    public void incrementActiveRequestCount() {
        this.mActiveRequestCount.incrementAndGet();
    }

    public void decrementActiveRequestCount() {
        this.mActiveRequestCount.decrementAndGet();
    }

    public int getCronetEngineId() {
        return this.mCronetEngineId;
    }

    public CronetLogger getCronetLogger() {
        return this.mLogger;
    }

    public Context getContext() {
        return this.mContext;
    }

    @Override // org.chromium.net.impl.CronetEngineBase
    public ExperimentalUrlRequest createRequest(String str, UrlRequest.Callback callback, Executor executor, int i, Collection<Object> collection, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, RequestFinishedInfo.Listener listener, int i4, long j, String str2, ArrayList<Map.Entry<String, String>> arrayList, UploadDataProvider uploadDataProvider, Executor executor2, byte[] bArr, ByteBuffer byteBuffer, String str3) {
        if (j != -1) {
            this.mNetworkHandle = j;
        }
        return new JavaUrlRequest(this, callback, this.mExecutorService, executor, str, this.mUserAgent, z3, z4, i2, z5, i3, this.mNetworkHandle, str2, arrayList, uploadDataProvider, executor2);
    }

    public String getVersionString() {
        return "CronetHttpURLConnection/" + ImplVersion.getCronetVersionWithLastChange();
    }

    private CronetLogger.CronetVersion buildCronetVersion() {
        return new CronetLogger.CronetVersion(getVersionString().split("/")[1].split("@")[0]);
    }
}
