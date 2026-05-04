package com.google.firebase.sessions.settings;

import android.os.Build;
import android.util.Log;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.InstallationId;
import com.google.firebase.sessions.TimeProvider;
import java.util.Map;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteSettings implements SettingsProvider {
    private static final Companion Companion = new Companion(null);
    private static final int defaultCacheDuration;
    private static final Regex sanitizeRegex;
    private final ApplicationInfo appInfo;
    private final CrashlyticsSettingsFetcher configsFetcher;
    private final Mutex fetchInProgress;
    private final FirebaseInstallationsApi firebaseInstallationsApi;
    private final SettingsCache settingsCache;
    private final TimeProvider timeProvider;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.RemoteSettings$updateSettings$1 */
    /* JADX INFO: loaded from: classes5.dex */
    static final class C19121 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C19121(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemoteSettings.this.updateSettings(this);
        }
    }

    public RemoteSettings(TimeProvider timeProvider, FirebaseInstallationsApi firebaseInstallationsApi, ApplicationInfo appInfo, CrashlyticsSettingsFetcher configsFetcher, SettingsCache settingsCache) {
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(firebaseInstallationsApi, "firebaseInstallationsApi");
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(configsFetcher, "configsFetcher");
        Intrinsics.checkNotNullParameter(settingsCache, "settingsCache");
        this.timeProvider = timeProvider;
        this.firebaseInstallationsApi = firebaseInstallationsApi;
        this.appInfo = appInfo;
        this.configsFetcher = configsFetcher;
        this.settingsCache = settingsCache;
        this.fetchInProgress = MutexKt.Mutex$default(false, 1, null);
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Boolean getSessionEnabled() {
        return this.settingsCache.sessionsEnabled();
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    /* JADX INFO: renamed from: getSessionRestartTimeout-FghU774 */
    public Duration mo3568getSessionRestartTimeoutFghU774() {
        Integer numSessionRestartTimeout = this.settingsCache.sessionRestartTimeout();
        if (numSessionRestartTimeout == null) {
            return null;
        }
        Duration.Companion companion = Duration.Companion;
        return Duration.m3627boximpl(DurationKt.toDuration(numSessionRestartTimeout.intValue(), DurationUnit.SECONDS));
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Double getSamplingRate() {
        return this.settingsCache.sessionSamplingRate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bd A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x004e, B:44:0x00af, B:46:0x00bd, B:49:0x00c8, B:36:0x008a, B:38:0x0092, B:41:0x009d), top: B:58:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c8 A[Catch: all -> 0x0052, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x004e, B:44:0x00af, B:46:0x00bd, B:49:0x00c8, B:36:0x008a, B:38:0x0092, B:41:0x009d), top: B:58:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Type inference failed for: r2v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    @Override // com.google.firebase.sessions.settings.SettingsProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object updateSettings(Continuation continuation) throws Throwable {
        C19121 c19121;
        ?? r2;
        Mutex mutex;
        RemoteSettings remoteSettings;
        String fid;
        if (continuation instanceof C19121) {
            c19121 = (C19121) continuation;
            int i = c19121.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c19121.label = i - Integer.MIN_VALUE;
            } else {
                c19121 = new C19121(continuation);
            }
        }
        Object objCreate = c19121.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r4 = c19121.label;
        try {
            if (r4 == 0) {
                ResultKt.throwOnFailure(objCreate);
                if (!this.fetchInProgress.isLocked() && !this.settingsCache.hasCacheExpired()) {
                    return Unit.INSTANCE;
                }
                Mutex mutex2 = this.fetchInProgress;
                c19121.L$0 = this;
                c19121.L$1 = mutex2;
                c19121.label = 1;
                if (mutex2.lock(null, c19121) != coroutine_suspended) {
                    mutex = mutex2;
                    remoteSettings = this;
                }
                return coroutine_suspended;
            }
            if (r4 != 1) {
                if (r4 != 2) {
                    if (r4 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    r2 = (Mutex) c19121.L$0;
                    try {
                        ResultKt.throwOnFailure(objCreate);
                        r2 = r2;
                        Unit unit = Unit.INSTANCE;
                        r2.unlock(null);
                        return Unit.INSTANCE;
                    } catch (Throwable th) {
                        th = th;
                        r2.unlock(null);
                        throw th;
                    }
                }
                mutex = (Mutex) c19121.L$1;
                remoteSettings = (RemoteSettings) c19121.L$0;
                ResultKt.throwOnFailure(objCreate);
                fid = ((InstallationId) objCreate).getFid();
                if (!Intrinsics.areEqual(fid, _UrlKt.FRAGMENT_ENCODE_SET)) {
                    Log.w("FirebaseSessions", "Error getting Firebase Installation ID. Skipping this Session Event.");
                    Unit unit2 = Unit.INSTANCE;
                    mutex.unlock(null);
                    return unit2;
                }
                Pair pairM1081to = TuplesKt.m1081to("X-Crashlytics-Installation-ID", fid);
                Pair pairM1081to2 = TuplesKt.m1081to("X-Crashlytics-Device-Model", remoteSettings.sanitize(Build.MANUFACTURER + Build.MODEL));
                String INCREMENTAL = Build.VERSION.INCREMENTAL;
                Intrinsics.checkNotNullExpressionValue(INCREMENTAL, "INCREMENTAL");
                Pair pairM1081to3 = TuplesKt.m1081to("X-Crashlytics-OS-Build-Version", remoteSettings.sanitize(INCREMENTAL));
                String RELEASE = Build.VERSION.RELEASE;
                Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
                Map mapMapOf = MapsKt.mapOf(pairM1081to, pairM1081to2, pairM1081to3, TuplesKt.m1081to("X-Crashlytics-OS-Display-Version", remoteSettings.sanitize(RELEASE)), TuplesKt.m1081to("X-Crashlytics-API-Client-Version", remoteSettings.appInfo.getSessionSdkVersion()));
                Log.d("FirebaseSessions", "Fetching settings from server.");
                CrashlyticsSettingsFetcher crashlyticsSettingsFetcher = remoteSettings.configsFetcher;
                RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(remoteSettings, null);
                RemoteSettings$updateSettings$2$2 remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(null);
                c19121.L$0 = mutex;
                c19121.L$1 = null;
                c19121.label = 3;
                if (crashlyticsSettingsFetcher.doConfigFetch(mapMapOf, remoteSettings$updateSettings$2$1, remoteSettings$updateSettings$2$2, c19121) != coroutine_suspended) {
                    r2 = mutex;
                    Unit unit3 = Unit.INSTANCE;
                    r2.unlock(null);
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            }
            mutex = (Mutex) c19121.L$1;
            remoteSettings = (RemoteSettings) c19121.L$0;
            ResultKt.throwOnFailure(objCreate);
            if (!remoteSettings.settingsCache.hasCacheExpired()) {
                Log.d("FirebaseSessions", "Remote settings cache not expired. Using cached values.");
                Unit unit4 = Unit.INSTANCE;
                mutex.unlock(null);
                return unit4;
            }
            InstallationId.Companion companion = InstallationId.Companion;
            FirebaseInstallationsApi firebaseInstallationsApi = remoteSettings.firebaseInstallationsApi;
            c19121.L$0 = remoteSettings;
            c19121.L$1 = mutex;
            c19121.label = 2;
            objCreate = companion.create(firebaseInstallationsApi, c19121);
            if (objCreate != coroutine_suspended) {
                fid = ((InstallationId) objCreate).getFid();
                if (!Intrinsics.areEqual(fid, _UrlKt.FRAGMENT_ENCODE_SET)) {
                }
            }
            return coroutine_suspended;
        } catch (Throwable th2) {
            th = th2;
            r2 = r4;
        }
    }

    private final String sanitize(String str) {
        return sanitizeRegex.replace(str, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final int getDefaultCacheDuration() {
            return RemoteSettings.defaultCacheDuration;
        }
    }

    static {
        Duration.Companion companion = Duration.Companion;
        defaultCacheDuration = (int) Duration.m3637getInWholeSecondsimpl(DurationKt.toDuration(24, DurationUnit.HOURS));
        sanitizeRegex = new Regex("/");
    }
}
