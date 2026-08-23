package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Set;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SchedulerConfig_ConfigValue extends SchedulerConfig.ConfigValue {
    private final long delta;
    private final Set flags;
    private final long maxAllowedDelay;

    private AutoValue_SchedulerConfig_ConfigValue(long j, long j2, Set set) {
        this.delta = j;
        this.maxAllowedDelay = j2;
        this.flags = set;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    long getDelta() {
        return this.delta;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    long getMaxAllowedDelay() {
        return this.maxAllowedDelay;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    Set getFlags() {
        return this.flags;
    }

    public String toString() {
        return "ConfigValue{delta=" + this.delta + ", maxAllowedDelay=" + this.maxAllowedDelay + ", flags=" + this.flags + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SchedulerConfig.ConfigValue) {
            SchedulerConfig.ConfigValue configValue = (SchedulerConfig.ConfigValue) obj;
            if (this.delta == configValue.getDelta() && this.maxAllowedDelay == configValue.getMaxAllowedDelay() && this.flags.equals(configValue.getFlags())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.delta;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.maxAllowedDelay;
        return ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.flags.hashCode();
    }

    static final class Builder extends SchedulerConfig.ConfigValue.Builder {
        private Long delta;
        private Set flags;
        private Long maxAllowedDelay;

        Builder() {
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        public SchedulerConfig.ConfigValue.Builder setDelta(long j) {
            this.delta = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        public SchedulerConfig.ConfigValue.Builder setMaxAllowedDelay(long j) {
            this.maxAllowedDelay = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        public SchedulerConfig.ConfigValue.Builder setFlags(Set set) {
            if (set == null) {
                throw new NullPointerException("Null flags");
            }
            this.flags = set;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        public SchedulerConfig.ConfigValue build() {
            Long l = this.delta;
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            if (l == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET + " delta";
            }
            if (this.maxAllowedDelay == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.flags == null) {
                str = str + " flags";
            }
            if (!str.isEmpty()) {
                throw new IllegalStateException("Missing required properties:" + str);
            }
            return new AutoValue_SchedulerConfig_ConfigValue(this.delta.longValue(), this.maxAllowedDelay.longValue(), this.flags);
        }
    }
}
