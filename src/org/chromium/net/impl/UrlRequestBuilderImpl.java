package org.chromium.net.impl;

import android.util.Log;
import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import okhttp3.internal.url._UrlKt;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes5.dex */
public class UrlRequestBuilderImpl extends ExperimentalUrlRequest.Builder {
    private static final String TAG = "UrlRequestBuilderImpl";
    private boolean mAllowDirectExecutor;
    private final UrlRequest.Callback mCallback;
    private final CronetEngineBase mCronetEngine;
    private ByteBuffer mDictionary;
    private byte[] mDictionarySha256Hash;
    private boolean mDisableCache;
    private boolean mDisableConnectionMigration;
    private final Executor mExecutor;
    private String mMethod;
    private Collection<Object> mRequestAnnotations;
    private RequestFinishedInfo.Listener mRequestFinishedListener;
    private int mTrafficStatsTag;
    private boolean mTrafficStatsTagSet;
    private int mTrafficStatsUid;
    private boolean mTrafficStatsUidSet;
    private UploadDataProvider mUploadDataProvider;
    private Executor mUploadDataProviderExecutor;
    private final String mUrl;
    private final ArrayList<Map.Entry<String, String>> mRequestHeaders = new ArrayList<>();
    private int mPriority = 3;
    private String mDictionaryId = _UrlKt.FRAGMENT_ENCODE_SET;
    private long mNetworkHandle = -1;
    private int mIdempotency = 0;

    public UrlRequestBuilderImpl(String str, UrlRequest.Callback callback, Executor executor, CronetEngineBase cronetEngineBase) {
        Objects.requireNonNull(str, "URL is required.");
        this.mUrl = str;
        Objects.requireNonNull(callback, "Callback is required.");
        this.mCallback = callback;
        Objects.requireNonNull(executor, "Executor is required.");
        this.mExecutor = executor;
        Objects.requireNonNull(cronetEngineBase, "CronetEngine is required.");
        this.mCronetEngine = cronetEngineBase;
    }

    @Override // org.chromium.net.UrlRequest.Builder
    public ExperimentalUrlRequest.Builder setHttpMethod(String str) {
        Objects.requireNonNull(str, "Method is required.");
        this.mMethod = str;
        return this;
    }

    @Override // org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl addHeader(String str, String str2) {
        Objects.requireNonNull(str, "Invalid header name.");
        Objects.requireNonNull(str2, "Invalid header value.");
        if ("Accept-Encoding".equalsIgnoreCase(str)) {
            String str3 = TAG;
            if (Log.isLoggable(str3, 3)) {
                Log.d(str3, "It's not necessary to set Accept-Encoding on requests - cronet will do this automatically for you, and setting it yourself has no effect. See https://crbug.com/581399 for details.", new Exception());
            }
            return this;
        }
        this.mRequestHeaders.add(new AbstractMap.SimpleEntry(str, str2));
        return this;
    }

    @Override // org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl setUploadDataProvider(UploadDataProvider uploadDataProvider, Executor executor) {
        Objects.requireNonNull(uploadDataProvider, "Invalid UploadDataProvider.");
        this.mUploadDataProvider = uploadDataProvider;
        Objects.requireNonNull(executor, "Invalid UploadDataProvider Executor.");
        this.mUploadDataProviderExecutor = executor;
        if (this.mMethod == null) {
            this.mMethod = "POST";
        }
        return this;
    }

    @Override // org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl setTrafficStatsTag(int i) {
        this.mTrafficStatsTagSet = true;
        this.mTrafficStatsTag = i;
        return this;
    }

    @Override // org.chromium.net.UrlRequest.Builder
    public ExperimentalUrlRequest build() {
        CronetEngineBase cronetEngineBase = this.mCronetEngine;
        String str = this.mUrl;
        UrlRequest.Callback callback = this.mCallback;
        Executor executor = this.mExecutor;
        int i = this.mPriority;
        Collection<Object> collection = this.mRequestAnnotations;
        boolean z = this.mDisableCache;
        boolean z2 = this.mDisableConnectionMigration;
        boolean z3 = this.mAllowDirectExecutor;
        boolean z4 = this.mTrafficStatsTagSet;
        int i2 = this.mTrafficStatsTag;
        boolean z5 = this.mTrafficStatsUidSet;
        int i3 = this.mTrafficStatsUid;
        RequestFinishedInfo.Listener listener = this.mRequestFinishedListener;
        int i4 = this.mIdempotency;
        long j = this.mNetworkHandle;
        String str2 = this.mMethod;
        if (str2 == null) {
            str2 = "GET";
        }
        return cronetEngineBase.createRequest(str, callback, executor, i, collection, z, z2, z3, z4, i2, z5, i3, listener, i4, j, str2, this.mRequestHeaders, this.mUploadDataProvider, this.mUploadDataProviderExecutor, this.mDictionarySha256Hash, this.mDictionary, this.mDictionaryId);
    }
}
