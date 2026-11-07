package org.chromium.net.telemetry;

import android.os.Process;
import android.util.Log;
import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.impl.CronetLogger;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class CronetLoggerImpl extends CronetLogger {
    private static final String TAG = "CronetLoggerImpl";
    private final RateLimiter mRateLimiter;
    private final AtomicInteger mSamplesRateLimited;

    private static int convertToProtoConnectionCloseSource(int i) {
        if (i != 1) {
            return i != 2 ? 0 : 1;
        }
        return 2;
    }

    public CronetLoggerImpl(int i) {
        this(new RateLimiter(i));
    }

    public CronetLoggerImpl(RateLimiter rateLimiter) {
        this.mSamplesRateLimited = new AtomicInteger();
        this.mRateLimiter = rateLimiter;
    }

    @Override // org.chromium.net.impl.CronetLogger
    public long generateId() {
        long jNextLong = ThreadLocalRandom.current().nextLong(-9223372036854775807L, 9223372036854775805L);
        return jNextLong >= -1 ? jNextLong + 2 : jNextLong;
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetEngineBuilderInitializedInfo(CronetLogger.CronetEngineBuilderInitializedInfo cronetEngineBuilderInitializedInfo) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("CronetLoggerImpl#logCronetEngineBuilderInitializedInfo");
        try {
            long j = cronetEngineBuilderInitializedInfo.cronetInitializationRef;
            int iConvertToProtoCronetEngineBuilderInitializedAuthor = convertToProtoCronetEngineBuilderInitializedAuthor(cronetEngineBuilderInitializedInfo.author);
            int i = cronetEngineBuilderInitializedInfo.engineBuilderCreatedLatencyMillis;
            int iConvertToProtoCronetEngineBuilderInitializedSource = convertToProtoCronetEngineBuilderInitializedSource(cronetEngineBuilderInitializedInfo.source);
            int value = OptionalBoolean.fromBoolean(cronetEngineBuilderInitializedInfo.creationSuccessful).getValue();
            int majorVersion = cronetEngineBuilderInitializedInfo.apiVersion.getMajorVersion();
            int minorVersion = cronetEngineBuilderInitializedInfo.apiVersion.getMinorVersion();
            int buildVersion = cronetEngineBuilderInitializedInfo.apiVersion.getBuildVersion();
            int patchVersion = cronetEngineBuilderInitializedInfo.apiVersion.getPatchVersion();
            CronetLogger.CronetVersion cronetVersion = cronetEngineBuilderInitializedInfo.implVersion;
            int majorVersion2 = cronetVersion == null ? -1 : cronetVersion.getMajorVersion();
            CronetLogger.CronetVersion cronetVersion2 = cronetEngineBuilderInitializedInfo.implVersion;
            int minorVersion2 = cronetVersion2 == null ? -1 : cronetVersion2.getMinorVersion();
            CronetLogger.CronetVersion cronetVersion3 = cronetEngineBuilderInitializedInfo.implVersion;
            int buildVersion2 = cronetVersion3 == null ? -1 : cronetVersion3.getBuildVersion();
            CronetLogger.CronetVersion cronetVersion4 = cronetEngineBuilderInitializedInfo.implVersion;
            CronetStatsLog.write(762, j, iConvertToProtoCronetEngineBuilderInitializedAuthor, i, iConvertToProtoCronetEngineBuilderInitializedSource, value, majorVersion, minorVersion, buildVersion, patchVersion, majorVersion2, minorVersion2, buildVersion2, cronetVersion4 == null ? -1 : cronetVersion4.getPatchVersion(), cronetEngineBuilderInitializedInfo.uid);
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

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetEngineCreation(long j, CronetLogger.CronetEngineBuilderInfo cronetEngineBuilderInfo, CronetLogger.CronetVersion cronetVersion, CronetLogger.CronetSource cronetSource) {
        if (cronetEngineBuilderInfo == null || cronetVersion == null || cronetSource == null) {
            return;
        }
        writeCronetEngineCreation(j, cronetEngineBuilderInfo, cronetVersion, cronetSource);
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetTrafficInfo(long j, CronetLogger.CronetTrafficInfo cronetTrafficInfo) {
        if (cronetTrafficInfo == null) {
            return;
        }
        boolean zTryAcquire = this.mRateLimiter.tryAcquire();
        AtomicInteger atomicInteger = this.mSamplesRateLimited;
        if (!zTryAcquire) {
            atomicInteger.incrementAndGet();
        } else {
            writeCronetTrafficReported(j, cronetTrafficInfo, atomicInteger.getAndSet(0));
        }
    }

    public void writeCronetEngineCreation(long j, CronetLogger.CronetEngineBuilderInfo cronetEngineBuilderInfo, CronetLogger.CronetVersion cronetVersion, CronetLogger.CronetSource cronetSource) {
        try {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("CronetLoggerImpl#writeCronetEngineCreation");
            try {
                ExperimentalOptions experimentalOptions = new ExperimentalOptions(cronetEngineBuilderInfo.getExperimentalOptions());
                CronetStatsLog.write(703, j, cronetVersion.getMajorVersion(), cronetVersion.getMinorVersion(), cronetVersion.getBuildVersion(), cronetVersion.getPatchVersion(), convertToProtoCronetEngineCreatedSource(cronetSource), cronetEngineBuilderInfo.isBrotliEnabled(), cronetEngineBuilderInfo.isHttp2Enabled(), convertToProtoHttpCacheMode(cronetEngineBuilderInfo.getHttpCacheMode()), cronetEngineBuilderInfo.isPublicKeyPinningBypassForLocalTrustAnchorsEnabled(), cronetEngineBuilderInfo.isQuicEnabled(), cronetEngineBuilderInfo.isNetworkQualityEstimatorEnabled(), cronetEngineBuilderInfo.getThreadPriority(), experimentalOptions.getConnectionOptionsOption(), experimentalOptions.getStoreServerConfigsInPropertiesOption().getValue(), experimentalOptions.getMaxServerConfigsStoredInPropertiesOption(), experimentalOptions.getIdleConnectionTimeoutSecondsOption(), experimentalOptions.getGoawaySessionsOnIpChangeOption().getValue(), experimentalOptions.getCloseSessionsOnIpChangeOption().getValue(), experimentalOptions.getMigrateSessionsOnNetworkChangeV2Option().getValue(), experimentalOptions.getMigrateSessionsEarlyV2().getValue(), experimentalOptions.getDisableBidirectionalStreamsOption().getValue(), experimentalOptions.getMaxTimeBeforeCryptoHandshakeSecondsOption(), experimentalOptions.getMaxIdleTimeBeforeCryptoHandshakeSecondsOption(), experimentalOptions.getEnableSocketRecvOptimizationOption().getValue(), experimentalOptions.getAsyncDnsEnableOption().getValue(), experimentalOptions.getStaleDnsEnableOption().getValue(), experimentalOptions.getStaleDnsDelayMillisOption(), experimentalOptions.getStaleDnsMaxExpiredTimeMillisOption(), experimentalOptions.getStaleDnsMaxStaleUsesOption(), experimentalOptions.getStaleDnsAllowOtherNetworkOption().getValue(), experimentalOptions.getStaleDnsPersistToDiskOption().getValue(), experimentalOptions.getStaleDnsPersistDelayMillisOption(), experimentalOptions.getStaleDnsUseStaleOnNameNotResolvedOption().getValue(), experimentalOptions.getDisableIpv6OnWifiOption().getValue(), cronetEngineBuilderInfo.getCronetInitializationRef(), Process.myUid());
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } finally {
            }
        } catch (Exception e) {
            String str = TAG;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, String.format("Failed to log CronetEngine:%s creation: %s", Long.valueOf(j), e.getMessage()));
            }
        }
    }

    public void writeCronetTrafficReported(long j, CronetLogger.CronetTrafficInfo cronetTrafficInfo, int i) {
        try {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("CronetLoggerImpl#writeCronetTrafficReported");
            try {
                CronetStatsLog.write(704, j, SizeBuckets.calcRequestHeadersSizeBucket(cronetTrafficInfo.getRequestHeaderSizeInBytes()), SizeBuckets.calcRequestBodySizeBucket(cronetTrafficInfo.getRequestBodySizeInBytes()), SizeBuckets.calcResponseHeadersSizeBucket(cronetTrafficInfo.getResponseHeaderSizeInBytes()), SizeBuckets.calcResponseBodySizeBucket(cronetTrafficInfo.getResponseBodySizeInBytes()), cronetTrafficInfo.getResponseStatusCode(), Hash.hash(cronetTrafficInfo.getNegotiatedProtocol()), (int) cronetTrafficInfo.getHeadersLatency().toMillis(), (int) cronetTrafficInfo.getTotalLatency().toMillis(), cronetTrafficInfo.wasConnectionMigrationAttempted(), cronetTrafficInfo.didConnectionMigrationSucceed(), i, convertToProtoCronetRequestTerminalState(cronetTrafficInfo.getTerminalState()), cronetTrafficInfo.getNonfinalUserCallbackExceptionCount(), -1L, -1L, cronetTrafficInfo.getReadCount(), cronetTrafficInfo.getOnUploadReadCount(), OptionalBoolean.fromBoolean(Boolean.valueOf(cronetTrafficInfo.getIsBidiStream())).getValue(), OptionalBoolean.fromBoolean(Boolean.valueOf(cronetTrafficInfo.getFinalUserCallbackThrew())).getValue(), cronetTrafficInfo.getUid(), cronetTrafficInfo.getNetworkInternalErrorCode(), cronetTrafficInfo.getQuicErrorCode(), convertToProtoConnectionCloseSource(cronetTrafficInfo.getConnectionCloseSource()), convertToProtoFailureReason(cronetTrafficInfo.getFailureReason()), OptionalBoolean.fromBoolean(Boolean.valueOf(cronetTrafficInfo.getIsSocketReused())).getValue(), cronetTrafficInfo.getCronetVersion(), convertToProtoCronetEngineBuilderInitializedSource(cronetTrafficInfo.getCronetSource()), cronetTrafficInfo.getTimeToEstablishDNSMillis(), cronetTrafficInfo.getTimeToEstablishSSLMillis(), cronetTrafficInfo.getTimeToConnectMillis(), cronetTrafficInfo.getTimeToSendFirstByteMillis());
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } finally {
            }
        } catch (Exception e) {
            this.mSamplesRateLimited.addAndGet(i);
            String str = TAG;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, String.format("Failed to log cronet traffic sample for CronetEngine %s: %s", Long.valueOf(j), e.getMessage()));
            }
        }
    }

    private static int convertToProtoFailureReason(CronetLogger.CronetTrafficInfo.RequestFailureReason requestFailureReason) {
        int i = C26001.f924xa46dc1fd[requestFailureReason.ordinal()];
        if (i != 1) {
            return i != 2 ? 0 : 100;
        }
        return 1;
    }

    private static int convertToProtoCronetEngineBuilderInitializedAuthor(CronetLogger.CronetEngineBuilderInitializedInfo.Author author) {
        int i = C26001.f923xe6156221[author.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                return 0;
            }
        }
        return i2;
    }

    private static int convertToProtoCronetRequestTerminalState(CronetLogger.CronetTrafficInfo.RequestTerminalState requestTerminalState) {
        int i = C26001.f925xc3c85104[requestTerminalState.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    return 0;
                }
            }
        }
        return i2;
    }

    /* JADX INFO: renamed from: org.chromium.net.telemetry.CronetLoggerImpl$1 */
    public static /* synthetic */ class C26001 {

        /* JADX INFO: renamed from: $SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author */
        static final /* synthetic */ int[] f923xe6156221;
        static final /* synthetic */ int[] $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource;

        /* JADX INFO: renamed from: $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason */
        static final /* synthetic */ int[] f924xa46dc1fd;

        /* JADX INFO: renamed from: $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState */
        static final /* synthetic */ int[] f925xc3c85104;

        static {
            int[] iArr = new int[CronetLogger.CronetSource.values().length];
            $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource = iArr;
            try {
                iArr[CronetLogger.CronetSource.CRONET_SOURCE_STATICALLY_LINKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[CronetLogger.CronetSource.CRONET_SOURCE_PLAY_SERVICES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[CronetLogger.CronetSource.CRONET_SOURCE_FALLBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[CronetLogger.CronetSource.CRONET_SOURCE_PLATFORM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[CronetLogger.CronetSource.CRONET_SOURCE_UNSPECIFIED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[CronetLogger.CronetTrafficInfo.RequestTerminalState.values().length];
            f925xc3c85104 = iArr2;
            try {
                iArr2[CronetLogger.CronetTrafficInfo.RequestTerminalState.SUCCEEDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f925xc3c85104[CronetLogger.CronetTrafficInfo.RequestTerminalState.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f925xc3c85104[CronetLogger.CronetTrafficInfo.RequestTerminalState.CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[CronetLogger.CronetEngineBuilderInitializedInfo.Author.values().length];
            f923xe6156221 = iArr3;
            try {
                iArr3[CronetLogger.CronetEngineBuilderInitializedInfo.Author.API.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f923xe6156221[CronetLogger.CronetEngineBuilderInitializedInfo.Author.IMPL.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr4 = new int[CronetLogger.CronetTrafficInfo.RequestFailureReason.values().length];
            f924xa46dc1fd = iArr4;
            try {
                iArr4[CronetLogger.CronetTrafficInfo.RequestFailureReason.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f924xa46dc1fd[CronetLogger.CronetTrafficInfo.RequestFailureReason.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private static int convertToProtoCronetEngineBuilderInitializedSource(CronetLogger.CronetSource cronetSource) {
        int i = C26001.$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[cronetSource.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        return 0;
                    }
                }
            }
        }
        return i2;
    }

    private static int convertToProtoCronetEngineCreatedSource(CronetLogger.CronetSource cronetSource) {
        int i = C26001.$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[cronetSource.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        return 0;
                    }
                }
            }
        }
        return i2;
    }

    private static int convertToProtoHttpCacheMode(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 3;
        }
        if (i == 3) {
            return 4;
        }
        f$$ExternalSyntheticBUOutline1.m215m("Expected httpCacheMode to range from 0 to 3");
        return 0;
    }
}
