package com.google.firebase.sessions.settings;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.sessions.settings.SettingsProvider;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class LocalOverrideSettings implements SettingsProvider {
    private static final Companion Companion = new Companion(null);
    private final Bundle metadata;

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Object updateSettings(Continuation continuation) {
        return SettingsProvider.DefaultImpls.updateSettings(this, continuation);
    }

    public LocalOverrideSettings(Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Bundle bundle = appContext.getPackageManager().getApplicationInfo(appContext.getPackageName(), 128).metaData;
        this.metadata = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Boolean getSessionEnabled() {
        if (this.metadata.containsKey("firebase_sessions_enabled")) {
            return Boolean.valueOf(this.metadata.getBoolean("firebase_sessions_enabled"));
        }
        return null;
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    /* JADX INFO: renamed from: getSessionRestartTimeout-FghU774, reason: not valid java name */
    public Duration mo3568getSessionRestartTimeoutFghU774() {
        if (this.metadata.containsKey("firebase_sessions_sessions_restart_timeout")) {
            return Duration.m3627boximpl(DurationKt.toDuration(this.metadata.getInt("firebase_sessions_sessions_restart_timeout"), DurationUnit.SECONDS));
        }
        return null;
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Double getSamplingRate() {
        if (this.metadata.containsKey("firebase_sessions_sampling_rate")) {
            return Double.valueOf(this.metadata.getDouble("firebase_sessions_sampling_rate"));
        }
        return null;
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
