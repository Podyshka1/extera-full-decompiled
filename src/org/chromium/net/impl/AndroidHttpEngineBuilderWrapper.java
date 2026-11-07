package org.chromium.net.impl;

import android.net.http.ConnectionMigrationOptions;
import android.net.http.DnsOptions;
import android.net.http.HttpEngine;
import android.net.http.QuicOptions;
import j$.time.Duration;
import j$.time.TimeConversions;
import okio.Buffer$$ExternalSyntheticBUOutline2;
import org.chromium.net.ExperimentalCronetEngine;
import org.chromium.net.ICronetEngineBuilder;
import org.chromium.net.telemetry.ExperimentalOptions;
import org.chromium.net.telemetry.OptionalBoolean;

/* JADX INFO: loaded from: classes5.dex */
class AndroidHttpEngineBuilderWrapper extends ICronetEngineBuilder {
    private final HttpEngine.Builder mBackend;

    public AndroidHttpEngineBuilderWrapper(HttpEngine.Builder builder) {
        this.mBackend = builder;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setExperimentalOptions(String str) {
        ExperimentalOptions experimentalOptions = new ExperimentalOptions(str);
        this.mBackend.setConnectionMigrationOptions(parseConnectionMigrationOptions(experimentalOptions));
        this.mBackend.setDnsOptions(parseDnsOptions(experimentalOptions));
        this.mBackend.setQuicOptions(parseQuicOptions(experimentalOptions));
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ExperimentalCronetEngine build() {
        return new AndroidHttpEngineWrapper(this.mBackend.build());
    }

    public static ConnectionMigrationOptions parseConnectionMigrationOptions(ExperimentalOptions experimentalOptions) {
        ConnectionMigrationOptions.Builder builderM941m = AbstractC2447xbc6daaad.m941m();
        builderM941m.setDefaultNetworkMigration(optionalBooleanToMigrationOptionState(experimentalOptions.getMigrateSessionsOnNetworkChangeV2Option()));
        builderM941m.setPathDegradationMigration(optionalBooleanToMigrationOptionState(experimentalOptions.getAllowPortMigration()));
        OptionalBoolean migrateSessionsEarlyV2 = experimentalOptions.getMigrateSessionsEarlyV2();
        builderM941m.setAllowNonDefaultNetworkUsage(optionalBooleanToMigrationOptionState(migrateSessionsEarlyV2));
        OptionalBoolean optionalBoolean = OptionalBoolean.TRUE;
        if (migrateSessionsEarlyV2 == optionalBoolean) {
            builderM941m.setPathDegradationMigration(optionalBooleanToMigrationOptionState(optionalBoolean));
        }
        return builderM941m.build();
    }

    public static DnsOptions parseDnsOptions(ExperimentalOptions experimentalOptions) {
        DnsOptions.StaleDnsOptions.Builder builderM938m = AbstractC2444xbc6daaaa.m938m();
        int staleDnsDelayMillisOption = experimentalOptions.getStaleDnsDelayMillisOption();
        if (staleDnsDelayMillisOption != -1) {
            builderM938m.setFreshLookupTimeout(TimeConversions.convert(Duration.ofMillis(staleDnsDelayMillisOption)));
        }
        int staleDnsMaxExpiredTimeMillisOption = experimentalOptions.getStaleDnsMaxExpiredTimeMillisOption();
        if (staleDnsMaxExpiredTimeMillisOption != -1) {
            builderM938m.setMaxExpiredDelay(TimeConversions.convert(Duration.ofMillis(staleDnsMaxExpiredTimeMillisOption)));
        }
        builderM938m.setAllowCrossNetworkUsage(optionalBooleanToMigrationOptionState(experimentalOptions.getStaleDnsAllowOtherNetworkOption())).setUseStaleOnNameNotResolved(optionalBooleanToMigrationOptionState(experimentalOptions.getStaleDnsUseStaleOnNameNotResolvedOption()));
        DnsOptions.Builder builderM939m = AbstractC2445xbc6daaab.m939m();
        builderM939m.setUseHttpStackDnsResolver(optionalBooleanToMigrationOptionState(experimentalOptions.getAsyncDnsEnableOption())).setStaleDns(optionalBooleanToMigrationOptionState(experimentalOptions.getStaleDnsEnableOption())).setStaleDnsOptions(builderM938m.build()).setPreestablishConnectionsToStaleDnsResults(optionalBooleanToMigrationOptionState(experimentalOptions.getRaceStaleDnsOnConnection())).setPersistHostCache(optionalBooleanToMigrationOptionState(experimentalOptions.getStaleDnsPersistToDiskOption()));
        int staleDnsPersistDelayMillisOption = experimentalOptions.getStaleDnsPersistDelayMillisOption();
        if (staleDnsPersistDelayMillisOption != -1) {
            builderM939m.setPersistHostCachePeriod(TimeConversions.convert(Duration.ofMillis(staleDnsPersistDelayMillisOption)));
        }
        return builderM939m.build();
    }

    public static QuicOptions parseQuicOptions(ExperimentalOptions experimentalOptions) {
        QuicOptions.Builder builderM940m = AbstractC2446xbc6daaac.m940m();
        if (experimentalOptions.getHostWhitelist() != null) {
            for (String str : experimentalOptions.getHostWhitelist().split(",")) {
                builderM940m.addAllowedQuicHost(str);
            }
        }
        int maxServerConfigsStoredInPropertiesOption = experimentalOptions.getMaxServerConfigsStoredInPropertiesOption();
        if (maxServerConfigsStoredInPropertiesOption != -1) {
            builderM940m.setInMemoryServerConfigsCacheSize(maxServerConfigsStoredInPropertiesOption);
        }
        String userAgentId = experimentalOptions.getUserAgentId();
        if (userAgentId != null) {
            builderM940m.setHandshakeUserAgent(userAgentId);
        }
        int idleConnectionTimeoutSecondsOption = experimentalOptions.getIdleConnectionTimeoutSecondsOption();
        if (idleConnectionTimeoutSecondsOption != -1) {
            builderM940m.setIdleConnectionTimeout(TimeConversions.convert(Duration.ofSeconds(idleConnectionTimeoutSecondsOption)));
        }
        return builderM940m.build();
    }

    /* JADX INFO: renamed from: org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$1 */
    public static /* synthetic */ class C24481 {
        static final /* synthetic */ int[] $SwitchMap$org$chromium$net$telemetry$OptionalBoolean;

        static {
            int[] iArr = new int[OptionalBoolean.values().length];
            $SwitchMap$org$chromium$net$telemetry$OptionalBoolean = iArr;
            try {
                iArr[OptionalBoolean.TRUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$chromium$net$telemetry$OptionalBoolean[OptionalBoolean.FALSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$chromium$net$telemetry$OptionalBoolean[OptionalBoolean.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static int optionalBooleanToMigrationOptionState(OptionalBoolean optionalBoolean) {
        int i = C24481.$SwitchMap$org$chromium$net$telemetry$OptionalBoolean[optionalBoolean.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                if (i == 3) {
                    return 0;
                }
                Buffer$$ExternalSyntheticBUOutline2.m917m("Invalid OptionalBoolean value: ".concat(String.valueOf(optionalBoolean)));
                return 0;
            }
        }
        return i2;
    }
}
