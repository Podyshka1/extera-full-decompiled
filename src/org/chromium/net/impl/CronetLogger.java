package org.chromium.net.impl;

import j$.time.Duration;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CronetLogger {

    public static final class CronetEngineBuilderInitializedInfo {
        public CronetVersion apiVersion;
        public Author author;
        public Boolean creationSuccessful;
        public long cronetInitializationRef;
        public CronetVersion implVersion;
        public int uid;
        public int engineBuilderCreatedLatencyMillis = -1;
        public CronetSource source = CronetSource.CRONET_SOURCE_UNSPECIFIED;

        public enum Author {
            API,
            IMPL
        }
    }

    public enum CronetSource {
        CRONET_SOURCE_UNSPECIFIED,
        CRONET_SOURCE_STATICALLY_LINKED,
        CRONET_SOURCE_PLAY_SERVICES,
        CRONET_SOURCE_FALLBACK,
        CRONET_SOURCE_PLATFORM,
        CRONET_SOURCE_FAKE
    }

    public abstract long generateId();

    public abstract void logCronetEngineBuilderInitializedInfo(CronetEngineBuilderInitializedInfo cronetEngineBuilderInitializedInfo);

    public abstract void logCronetEngineCreation(long j, CronetEngineBuilderInfo cronetEngineBuilderInfo, CronetVersion cronetVersion, CronetSource cronetSource);

    public abstract void logCronetTrafficInfo(long j, CronetTrafficInfo cronetTrafficInfo);

    public static class CronetEngineBuilderInfo {
        private final boolean mBrotiEnabled;
        private final long mCronetInitializationRef;
        private final String mExperimentalOptions;
        private final boolean mHttp2Enabled;
        private final int mHttpCacheMode;
        private final boolean mNetworkQualityEstimatorEnabled;
        private final boolean mPublicKeyPinningBypassForLocalTrustAnchorsEnabled;
        private final boolean mQuicEnabled;
        private final String mStoragePath;
        private final int mThreadPriority;
        private final String mUserAgent;

        public CronetEngineBuilderInfo(boolean z, String str, String str2, boolean z2, boolean z3, boolean z4, int i, String str3, boolean z5, int i2, long j) {
            this.mPublicKeyPinningBypassForLocalTrustAnchorsEnabled = z;
            this.mUserAgent = str;
            this.mStoragePath = str2;
            this.mQuicEnabled = z2;
            this.mHttp2Enabled = z3;
            this.mBrotiEnabled = z4;
            this.mHttpCacheMode = i;
            this.mExperimentalOptions = str3;
            this.mNetworkQualityEstimatorEnabled = z5;
            this.mThreadPriority = i2;
            this.mCronetInitializationRef = j;
        }

        public boolean isPublicKeyPinningBypassForLocalTrustAnchorsEnabled() {
            return this.mPublicKeyPinningBypassForLocalTrustAnchorsEnabled;
        }

        public boolean isQuicEnabled() {
            return this.mQuicEnabled;
        }

        public boolean isHttp2Enabled() {
            return this.mHttp2Enabled;
        }

        public boolean isBrotliEnabled() {
            return this.mBrotiEnabled;
        }

        public int getHttpCacheMode() {
            return this.mHttpCacheMode;
        }

        public String getExperimentalOptions() {
            return this.mExperimentalOptions;
        }

        public boolean isNetworkQualityEstimatorEnabled() {
            return this.mNetworkQualityEstimatorEnabled;
        }

        public int getThreadPriority() {
            return this.mThreadPriority;
        }

        public long getCronetInitializationRef() {
            return this.mCronetInitializationRef;
        }
    }

    public static class CronetTrafficInfo {
        private final CronetSource mCronetSource;
        private final String mCronetVersion;
        private final boolean mDidConnectionMigrationSucceed;
        private final RequestFailureReason mFailureReason;
        private final boolean mFinalUserCallbackThrew;
        private final Duration mHeadersLatency;
        private final boolean mIsBidiStream;
        private final String mNegotiatedProtocol;
        private final int mNetworkInternalErrorCode;
        private final int mNonfinalUserCallbackExceptionCount;
        private final int mOnUploadReadCount;
        private final int mQuicErrorCode;
        private final int mReadCount;
        private final long mRequestBodySizeInBytes;
        private final long mRequestHeaderSizeInBytes;
        private final long mResponseBodySizeInBytes;
        private final long mResponseHeaderSizeInBytes;
        private final int mResponseStatusCode;
        private final boolean mSocketReused;
        private final int mSource;
        private final RequestTerminalState mTerminalState;
        private final long mTimeToConnectMillis;
        private final long mTimeToEstablishDnsMillis;
        private final long mTimeToEstablishSSLMillis;
        private final long mTimeToSendFirstByteMillis;
        private final Duration mTotalLatency;
        private final int mUid;
        private final boolean mWasConnectionMigrationAttempted;

        public enum RequestFailureReason {
            UNKNOWN,
            NETWORK,
            OTHER
        }

        public enum RequestTerminalState {
            SUCCEEDED,
            ERROR,
            CANCELLED
        }

        public CronetTrafficInfo(long j, long j2, long j3, long j4, int i, Duration duration, Duration duration2, String str, boolean z, boolean z2, RequestTerminalState requestTerminalState, int i2, int i3, int i4, boolean z3, boolean z4, int i5, int i6, int i7, int i8, RequestFailureReason requestFailureReason, boolean z5, String str2, CronetSource cronetSource, long j5, long j6, long j7, long j8) {
            this.mRequestHeaderSizeInBytes = j;
            this.mRequestBodySizeInBytes = j2;
            this.mResponseHeaderSizeInBytes = j3;
            this.mResponseBodySizeInBytes = j4;
            this.mResponseStatusCode = i;
            this.mHeadersLatency = duration;
            this.mTotalLatency = duration2;
            this.mNegotiatedProtocol = str;
            this.mWasConnectionMigrationAttempted = z;
            this.mDidConnectionMigrationSucceed = z2;
            this.mTerminalState = requestTerminalState;
            this.mNonfinalUserCallbackExceptionCount = i2;
            this.mReadCount = i3;
            this.mOnUploadReadCount = i4;
            this.mIsBidiStream = z3;
            this.mFinalUserCallbackThrew = z4;
            this.mUid = i5;
            this.mNetworkInternalErrorCode = i6;
            this.mQuicErrorCode = i7;
            this.mSource = i8;
            this.mFailureReason = requestFailureReason;
            this.mSocketReused = z5;
            this.mCronetVersion = str2;
            this.mCronetSource = cronetSource;
            this.mTimeToEstablishDnsMillis = j5;
            this.mTimeToEstablishSSLMillis = j6;
            this.mTimeToConnectMillis = j7;
            this.mTimeToSendFirstByteMillis = j8;
        }

        public long getRequestHeaderSizeInBytes() {
            return this.mRequestHeaderSizeInBytes;
        }

        public long getRequestBodySizeInBytes() {
            return this.mRequestBodySizeInBytes;
        }

        public long getResponseHeaderSizeInBytes() {
            return this.mResponseHeaderSizeInBytes;
        }

        public long getResponseBodySizeInBytes() {
            return this.mResponseBodySizeInBytes;
        }

        public int getResponseStatusCode() {
            return this.mResponseStatusCode;
        }

        public Duration getHeadersLatency() {
            return this.mHeadersLatency;
        }

        public Duration getTotalLatency() {
            return this.mTotalLatency;
        }

        public String getNegotiatedProtocol() {
            return this.mNegotiatedProtocol;
        }

        public boolean wasConnectionMigrationAttempted() {
            return this.mWasConnectionMigrationAttempted;
        }

        public boolean didConnectionMigrationSucceed() {
            return this.mDidConnectionMigrationSucceed;
        }

        public RequestTerminalState getTerminalState() {
            return this.mTerminalState;
        }

        public int getNonfinalUserCallbackExceptionCount() {
            return this.mNonfinalUserCallbackExceptionCount;
        }

        public int getReadCount() {
            return this.mReadCount;
        }

        public int getOnUploadReadCount() {
            return this.mOnUploadReadCount;
        }

        public boolean getIsBidiStream() {
            return this.mIsBidiStream;
        }

        public boolean getFinalUserCallbackThrew() {
            return this.mFinalUserCallbackThrew;
        }

        public int getUid() {
            return this.mUid;
        }

        public int getNetworkInternalErrorCode() {
            return this.mNetworkInternalErrorCode;
        }

        public int getQuicErrorCode() {
            return this.mQuicErrorCode;
        }

        public int getConnectionCloseSource() {
            return this.mSource;
        }

        public RequestFailureReason getFailureReason() {
            return this.mFailureReason;
        }

        public boolean getIsSocketReused() {
            return this.mSocketReused;
        }

        public String getCronetVersion() {
            return this.mCronetVersion;
        }

        public CronetSource getCronetSource() {
            return this.mCronetSource;
        }

        public long getTimeToEstablishDNSMillis() {
            return this.mTimeToEstablishDnsMillis;
        }

        public long getTimeToEstablishSSLMillis() {
            return this.mTimeToEstablishSSLMillis;
        }

        public long getTimeToConnectMillis() {
            return this.mTimeToConnectMillis;
        }

        public long getTimeToSendFirstByteMillis() {
            return this.mTimeToSendFirstByteMillis;
        }
    }

    public static class CronetVersion {
        private final int mBuildVersion;
        private final int mMajorVersion;
        private final int mMinorVersion;
        private final int mPatchVersion;

        public CronetVersion(String str) {
            String[] strArrSplit = str.split("\\.");
            this.mMajorVersion = Integer.parseInt(strArrSplit[0]);
            this.mMinorVersion = Integer.parseInt(strArrSplit[1]);
            this.mBuildVersion = Integer.parseInt(strArrSplit[2]);
            this.mPatchVersion = Integer.parseInt(strArrSplit[3]);
        }

        public int getMajorVersion() {
            return this.mMajorVersion;
        }

        public int getMinorVersion() {
            return this.mMinorVersion;
        }

        public int getBuildVersion() {
            return this.mBuildVersion;
        }

        public int getPatchVersion() {
            return this.mPatchVersion;
        }

        public String toString() {
            return this.mMajorVersion + "." + this.mMinorVersion + "." + this.mBuildVersion + "." + this.mPatchVersion;
        }
    }
}
