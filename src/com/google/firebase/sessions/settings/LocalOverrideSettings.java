package com.google.firebase.sessions.settings;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.sessions.settings.SettingsProvider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\b\u0001\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/google/firebase/sessions/settings/LocalOverrideSettings;", "Lcom/google/firebase/sessions/settings/SettingsProvider;", "appContext", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "metadata", "Landroid/os/Bundle;", "kotlin.jvm.PlatformType", "Landroid/os/Bundle;", "sessionEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "getSessionEnabled", "()Ljava/lang/Boolean;", "sessionRestartTimeout", "Lkotlin/time/Duration;", "getSessionRestartTimeout-FghU774", "()Lkotlin/time/Duration;", "samplingRate", _UrlKt.FRAGMENT_ENCODE_SET, "getSamplingRate", "()Ljava/lang/Double;", "Companion", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class LocalOverrideSettings implements SettingsProvider {
    private static final Companion Companion = new Companion(null);
    private final Bundle metadata;

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Object updateSettings(Continuation<? super Unit> continuation) {
        return SettingsProvider.DefaultImpls.updateSettings(this, continuation);
    }

    public LocalOverrideSettings(Context context) {
        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
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
    public Duration mo3260getSessionRestartTimeoutFghU774() {
        if (this.metadata.containsKey("firebase_sessions_sessions_restart_timeout")) {
            return Duration.m4646boximpl(DurationKt.toDuration(this.metadata.getInt("firebase_sessions_sessions_restart_timeout"), DurationUnit.SECONDS));
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

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "SESSIONS_ENABLED", _UrlKt.FRAGMENT_ENCODE_SET, "SESSION_RESTART_TIMEOUT", "SAMPLING_RATE", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
