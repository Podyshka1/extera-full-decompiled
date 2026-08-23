package com.google.firebase.sessions.settings;

import android.os.Build;
import android.util.Log;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.InstallationId;
import com.google.firebase.sessions.TimeProvider;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0005\b\u0001\u0018\u0000 )2\u00020\u0001:\u0001)B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012H\u0096@¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0017R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0018R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u0004\u0018\u00010\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u0004\u0018\u00010!8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0016\u0010(\u001a\u0004\u0018\u00010%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcom/google/firebase/sessions/settings/RemoteSettings;", "Lcom/google/firebase/sessions/settings/SettingsProvider;", "Lcom/google/firebase/sessions/TimeProvider;", "timeProvider", "Lcom/google/firebase/installations/FirebaseInstallationsApi;", "firebaseInstallationsApi", "Lcom/google/firebase/sessions/ApplicationInfo;", "appInfo", "Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;", "configsFetcher", "Lcom/google/firebase/sessions/settings/SettingsCache;", "settingsCache", "<init>", "(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/sessions/ApplicationInfo;Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;Lcom/google/firebase/sessions/settings/SettingsCache;)V", _UrlKt.FRAGMENT_ENCODE_SET, "s", "sanitize", "(Ljava/lang/String;)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "updateSettings", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/google/firebase/sessions/TimeProvider;", "Lcom/google/firebase/installations/FirebaseInstallationsApi;", "Lcom/google/firebase/sessions/ApplicationInfo;", "Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;", "Lcom/google/firebase/sessions/settings/SettingsCache;", "Lkotlinx/coroutines/sync/Mutex;", "fetchInProgress", "Lkotlinx/coroutines/sync/Mutex;", _UrlKt.FRAGMENT_ENCODE_SET, "getSessionEnabled", "()Ljava/lang/Boolean;", "sessionEnabled", "Lkotlin/time/Duration;", "getSessionRestartTimeout-FghU774", "()Lkotlin/time/Duration;", "sessionRestartTimeout", _UrlKt.FRAGMENT_ENCODE_SET, "getSamplingRate", "()Ljava/lang/Double;", "samplingRate", "Companion", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRemoteSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteSettings.kt\ncom/google/firebase/sessions/settings/RemoteSettings\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,159:1\n116#2,11:160\n*S KotlinDebug\n*F\n+ 1 RemoteSettings.kt\ncom/google/firebase/sessions/settings/RemoteSettings\n*L\n70#1:160,11\n*E\n"})
public final class RemoteSettings implements SettingsProvider {
    private static final Companion Companion = new Companion(null);
    private static final int defaultCacheDuration;
    private static final Regex sanitizeRegex;
    private final ApplicationInfo appInfo;
    private final CrashlyticsSettingsFetcher configsFetcher;
    private final Mutex fetchInProgress = MutexKt.Mutex$default(false, 1, null);
    private final FirebaseInstallationsApi firebaseInstallationsApi;
    private final SettingsCache settingsCache;
    private final TimeProvider timeProvider;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.RemoteSettings$updateSettings$1 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m754k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m765c = "com.google.firebase.sessions.settings.RemoteSettings", m766f = "RemoteSettings.kt", m767i = {0, 0, 1, 1, 2}, m768l = {165, 78, 95}, m769m = "updateSettings", m770n = {"this", "$this$withLock_u24default$iv", "this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, m771s = {"L$0", "L$1", "L$0", "L$1", "L$0"})
    public static final class C18601 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C18601(Continuation<? super C18601> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemoteSettings.this.updateSettings(this);
        }
    }

    public RemoteSettings(TimeProvider timeProvider, FirebaseInstallationsApi firebaseInstallationsApi, ApplicationInfo applicationInfo, CrashlyticsSettingsFetcher crashlyticsSettingsFetcher, SettingsCache settingsCache) {
        this.timeProvider = timeProvider;
        this.firebaseInstallationsApi = firebaseInstallationsApi;
        this.appInfo = applicationInfo;
        this.configsFetcher = crashlyticsSettingsFetcher;
        this.settingsCache = settingsCache;
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Boolean getSessionEnabled() {
        return this.settingsCache.sessionsEnabled();
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    /* JADX INFO: renamed from: getSessionRestartTimeout-FghU774 */
    public Duration mo3260getSessionRestartTimeoutFghU774() {
        Integer numSessionRestartTimeout = this.settingsCache.sessionRestartTimeout();
        if (numSessionRestartTimeout == null) {
            return null;
        }
        Duration.Companion companion = Duration.INSTANCE;
        return Duration.m4646boximpl(DurationKt.toDuration(numSessionRestartTimeout.intValue(), DurationUnit.SECONDS));
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Double getSamplingRate() {
        return this.settingsCache.sessionSamplingRate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0133, code lost:
    
        if (r4.doConfigFetch(r13, r5, r2, r0) == r1) goto L51;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00be A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #1 {all -> 0x0037, blocks: (B:14:0x0032, B:52:0x0136, B:21:0x0048, B:44:0x00b0, B:46:0x00be, B:49:0x00c9), top: B:58:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c9 A[Catch: all -> 0x0037, TRY_ENTER, TryCatch #1 {all -> 0x0037, blocks: (B:14:0x0032, B:52:0x0136, B:21:0x0048, B:44:0x00b0, B:46:0x00be, B:49:0x00c9), top: B:58:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.google.firebase.sessions.settings.RemoteSettings, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v3, types: [com.google.firebase.sessions.settings.RemoteSettings, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.google.firebase.sessions.settings.RemoteSettings] */
    @Override // com.google.firebase.sessions.settings.SettingsProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object updateSettings(Continuation<? super Unit> continuation) throws Throwable {
        C18601 c18601;
        Mutex mutex;
        ?? r12;
        ?? r2;
        Mutex mutex2;
        String fid;
        if (continuation instanceof C18601) {
            c18601 = (C18601) continuation;
            int i = c18601.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c18601.label = i - Integer.MIN_VALUE;
            } else {
                c18601 = new C18601(continuation);
            }
        }
        Object obj = c18601.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c18601.label;
        try {
            try {
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (!this.fetchInProgress.isLocked() && !this.settingsCache.hasCacheExpired()) {
                        return Unit.INSTANCE;
                    }
                    mutex = this.fetchInProgress;
                    c18601.L$0 = this;
                    c18601.L$1 = mutex;
                    c18601.label = 1;
                    this = this;
                    if (mutex.lock(null, c18601) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                if (i2 == 1) {
                    Mutex mutex3 = (Mutex) c18601.L$1;
                    RemoteSettings remoteSettings = (RemoteSettings) c18601.L$0;
                    ResultKt.throwOnFailure(obj);
                    mutex = mutex3;
                    r12 = remoteSettings;
                } else {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        mutex2 = (Mutex) c18601.L$0;
                        ResultKt.throwOnFailure(obj);
                        Unit unit = Unit.INSTANCE;
                        mutex2.unlock(null);
                        return Unit.INSTANCE;
                    }
                    mutex2 = (Mutex) c18601.L$1;
                    RemoteSettings remoteSettings2 = (RemoteSettings) c18601.L$0;
                    ResultKt.throwOnFailure(obj);
                    r2 = remoteSettings2;
                    fid = ((InstallationId) obj).getFid();
                    if (!Intrinsics.areEqual(fid, _UrlKt.FRAGMENT_ENCODE_SET)) {
                        Log.w("FirebaseSessions", "Error getting Firebase Installation ID. Skipping this Session Event.");
                        Unit unit2 = Unit.INSTANCE;
                        mutex2.unlock(null);
                        return unit2;
                    }
                    Map<String, String> mapMapOf = MapsKt.mapOf(TuplesKt.to("X-Crashlytics-Installation-ID", fid), TuplesKt.to("X-Crashlytics-Device-Model", r2.sanitize(Build.MANUFACTURER + Build.MODEL)), TuplesKt.to("X-Crashlytics-OS-Build-Version", r2.sanitize(Build.VERSION.INCREMENTAL)), TuplesKt.to("X-Crashlytics-OS-Display-Version", r2.sanitize(Build.VERSION.RELEASE)), TuplesKt.to("X-Crashlytics-API-Client-Version", r2.appInfo.getSessionSdkVersion()));
                    Log.d("FirebaseSessions", "Fetching settings from server.");
                    CrashlyticsSettingsFetcher crashlyticsSettingsFetcher = r2.configsFetcher;
                    RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(r2, null);
                    RemoteSettings$updateSettings$2$2 remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(null);
                    c18601.L$0 = mutex2;
                    c18601.L$1 = null;
                    c18601.label = 3;
                }
                if (!r12.settingsCache.hasCacheExpired()) {
                    Log.d("FirebaseSessions", "Remote settings cache not expired. Using cached values.");
                    Unit unit3 = Unit.INSTANCE;
                    mutex.unlock(null);
                    return unit3;
                }
                InstallationId.Companion companion = InstallationId.INSTANCE;
                FirebaseInstallationsApi firebaseInstallationsApi = r12.firebaseInstallationsApi;
                c18601.L$0 = r12;
                c18601.L$1 = mutex;
                c18601.label = 2;
                Object objCreate = companion.create(firebaseInstallationsApi, c18601);
                if (objCreate != coroutine_suspended) {
                    r2 = r12;
                    mutex2 = mutex;
                    obj = objCreate;
                    fid = ((InstallationId) obj).getFid();
                    if (!Intrinsics.areEqual(fid, _UrlKt.FRAGMENT_ENCODE_SET)) {
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th) {
                Mutex mutex4 = mutex;
                th = th;
                this = mutex4;
                this.unlock(null);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private final String sanitize(String s) {
        return sanitizeRegex.replace(s, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "defaultCacheDuration", "I", "getDefaultCacheDuration", "()I", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
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
        Duration.Companion companion = Duration.INSTANCE;
        defaultCacheDuration = (int) Duration.m4662getInWholeSecondsimpl(DurationKt.toDuration(24, DurationUnit.HOURS));
        sanitizeRegex = new Regex("com/google/firebase/sessions//");
    }
}
