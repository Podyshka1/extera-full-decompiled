package com.google.firebase.sessions.settings;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0001\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001d\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0017\u0010\u0014\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0017\u001a\u00020\u0018H\u0086@¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001b"}, d2 = {"Lcom/google/firebase/sessions/settings/SessionsSettings;", _UrlKt.FRAGMENT_ENCODE_SET, "localOverrideSettings", "Lcom/google/firebase/sessions/settings/SettingsProvider;", "remoteSettings", "<init>", "(Lcom/google/firebase/sessions/settings/SettingsProvider;Lcom/google/firebase/sessions/settings/SettingsProvider;)V", "sessionsEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "getSessionsEnabled", "()Z", "samplingRate", _UrlKt.FRAGMENT_ENCODE_SET, "getSamplingRate", "()D", "sessionRestartTimeout", "Lkotlin/time/Duration;", "getSessionRestartTimeout-UwyO8pc", "()J", "isValidSamplingRate", "isValidSessionRestartTimeout", "isValidSessionRestartTimeout-LRDsOJo", "(J)Z", "updateSettings", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionsSettings {
    private final SettingsProvider localOverrideSettings;
    private final SettingsProvider remoteSettings;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m754k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m765c = "com.google.firebase.sessions.settings.SessionsSettings", m766f = "SessionsSettings.kt", m767i = {0}, m768l = {98, 99}, m769m = "updateSettings", m770n = {"this"}, m771s = {"L$0"})
    public static final class C18621 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C18621(Continuation<? super C18621> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionsSettings.this.updateSettings(this);
        }
    }

    private final boolean isValidSamplingRate(double samplingRate) {
        return 0.0d <= samplingRate && samplingRate <= 1.0d;
    }

    public SessionsSettings(SettingsProvider settingsProvider, SettingsProvider settingsProvider2) {
        this.localOverrideSettings = settingsProvider;
        this.remoteSettings = settingsProvider2;
    }

    public final boolean getSessionsEnabled() {
        Boolean sessionEnabled = this.localOverrideSettings.getSessionEnabled();
        if (sessionEnabled != null) {
            return sessionEnabled.booleanValue();
        }
        Boolean sessionEnabled2 = this.remoteSettings.getSessionEnabled();
        if (sessionEnabled2 != null) {
            return sessionEnabled2.booleanValue();
        }
        return true;
    }

    public final double getSamplingRate() {
        Double samplingRate = this.localOverrideSettings.getSamplingRate();
        if (samplingRate != null) {
            double dDoubleValue = samplingRate.doubleValue();
            if (isValidSamplingRate(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        Double samplingRate2 = this.remoteSettings.getSamplingRate();
        if (samplingRate2 == null) {
            return 1.0d;
        }
        double dDoubleValue2 = samplingRate2.doubleValue();
        if (isValidSamplingRate(dDoubleValue2)) {
            return dDoubleValue2;
        }
        return 1.0d;
    }

    /* JADX INFO: renamed from: getSessionRestartTimeout-UwyO8pc, reason: not valid java name */
    public final long m3262getSessionRestartTimeoutUwyO8pc() {
        Duration durationMo3260getSessionRestartTimeoutFghU774 = this.localOverrideSettings.mo3260getSessionRestartTimeoutFghU774();
        if (durationMo3260getSessionRestartTimeoutFghU774 != null) {
            long rawValue = durationMo3260getSessionRestartTimeoutFghU774.getRawValue();
            if (m3261isValidSessionRestartTimeoutLRDsOJo(rawValue)) {
                return rawValue;
            }
        }
        Duration durationMo3260getSessionRestartTimeoutFghU7742 = this.remoteSettings.mo3260getSessionRestartTimeoutFghU774();
        if (durationMo3260getSessionRestartTimeoutFghU7742 != null) {
            long rawValue2 = durationMo3260getSessionRestartTimeoutFghU7742.getRawValue();
            if (m3261isValidSessionRestartTimeoutLRDsOJo(rawValue2)) {
                return rawValue2;
            }
        }
        Duration.Companion companion = Duration.INSTANCE;
        return DurationKt.toDuration(30, DurationUnit.MINUTES);
    }

    /* JADX INFO: renamed from: isValidSessionRestartTimeout-LRDsOJo, reason: not valid java name */
    private final boolean m3261isValidSessionRestartTimeoutLRDsOJo(long sessionRestartTimeout) {
        return Duration.m4675isPositiveimpl(sessionRestartTimeout) && Duration.m4670isFiniteimpl(sessionRestartTimeout);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        if (r6.updateSettings(r0) == r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object updateSettings(Continuation<? super Unit> continuation) {
        C18621 c18621;
        if (continuation instanceof C18621) {
            c18621 = (C18621) continuation;
            int i = c18621.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c18621.label = i - Integer.MIN_VALUE;
            } else {
                c18621 = new C18621(continuation);
            }
        }
        Object obj = c18621.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c18621.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            SettingsProvider settingsProvider = this.localOverrideSettings;
            c18621.L$0 = this;
            c18621.label = 1;
            if (settingsProvider.updateSettings(c18621) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        this = (SessionsSettings) c18621.L$0;
        ResultKt.throwOnFailure(obj);
        SettingsProvider settingsProvider2 = this.remoteSettings;
        c18621.L$0 = null;
        c18621.label = 2;
    }
}
