package com.google.firebase.remoteconfig;

import androidx.camera.core.CameraSelector$$ExternalSyntheticBUOutline0;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;

/* JADX INFO: loaded from: classes5.dex */
public class FirebaseRemoteConfigSettings {
    private final long fetchTimeoutInSeconds;
    private final long minimumFetchInterval;

    private FirebaseRemoteConfigSettings(Builder builder) {
        this.fetchTimeoutInSeconds = builder.fetchTimeoutInSeconds;
        this.minimumFetchInterval = builder.minimumFetchInterval;
    }

    public static class Builder {
        private long fetchTimeoutInSeconds = 60;
        private long minimumFetchInterval = ConfigFetchHandler.DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS;

        public Builder setFetchTimeoutInSeconds(long j) {
            if (j < 0) {
                CameraSelector$$ExternalSyntheticBUOutline0.m72m("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", new Object[]{Long.valueOf(j)});
                return null;
            }
            this.fetchTimeoutInSeconds = j;
            return this;
        }

        public Builder setMinimumFetchIntervalInSeconds(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j + " is an invalid argument");
            }
            this.minimumFetchInterval = j;
            return this;
        }

        public FirebaseRemoteConfigSettings build() {
            return new FirebaseRemoteConfigSettings(this);
        }
    }
}
