package com.google.firebase.sessions.settings;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class SessionsSettings {
    public static final Companion Companion = new Companion(null);
    private final SettingsProvider localOverrideSettings;
    private final SettingsProvider remoteSettings;

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1 */
    /* JADX INFO: loaded from: classes5.dex */
    static final class C19141 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C19141(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SessionsSettings.this.updateSettings(this);
        }
    }

    private final boolean isValidSamplingRate(double d) {
        return 0.0d <= d && d <= 1.0d;
    }

    public SessionsSettings(SettingsProvider localOverrideSettings, SettingsProvider remoteSettings) {
        Intrinsics.checkNotNullParameter(localOverrideSettings, "localOverrideSettings");
        Intrinsics.checkNotNullParameter(remoteSettings, "remoteSettings");
        this.localOverrideSettings = localOverrideSettings;
        this.remoteSettings = remoteSettings;
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
    public final long m3570getSessionRestartTimeoutUwyO8pc() {
        Duration durationMo3568getSessionRestartTimeoutFghU774 = this.localOverrideSettings.mo3568getSessionRestartTimeoutFghU774();
        if (durationMo3568getSessionRestartTimeoutFghU774 != null) {
            long jM3655unboximpl = durationMo3568getSessionRestartTimeoutFghU774.m3655unboximpl();
            if (m3569isValidSessionRestartTimeoutLRDsOJo(jM3655unboximpl)) {
                return jM3655unboximpl;
            }
        }
        Duration durationMo3568getSessionRestartTimeoutFghU7742 = this.remoteSettings.mo3568getSessionRestartTimeoutFghU774();
        if (durationMo3568getSessionRestartTimeoutFghU7742 != null) {
            long jM3655unboximpl2 = durationMo3568getSessionRestartTimeoutFghU7742.m3655unboximpl();
            if (m3569isValidSessionRestartTimeoutLRDsOJo(jM3655unboximpl2)) {
                return jM3655unboximpl2;
            }
        }
        Duration.Companion companion = Duration.Companion;
        return DurationKt.toDuration(30, DurationUnit.MINUTES);
    }

    /* JADX INFO: renamed from: isValidSessionRestartTimeout-LRDsOJo, reason: not valid java name */
    private final boolean m3569isValidSessionRestartTimeoutLRDsOJo(long j) {
        return Duration.m3649isPositiveimpl(j) && Duration.m3644isFiniteimpl(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
    
        if (r6.updateSettings(r0) == r1) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object updateSettings(Continuation continuation) {
        C19141 c19141;
        SessionsSettings sessionsSettings;
        if (continuation instanceof C19141) {
            c19141 = (C19141) continuation;
            int i = c19141.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c19141.label = i - Integer.MIN_VALUE;
            } else {
                c19141 = new C19141(continuation);
            }
        }
        Object obj = c19141.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c19141.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            SettingsProvider settingsProvider = this.localOverrideSettings;
            c19141.L$0 = this;
            c19141.label = 1;
            if (settingsProvider.updateSettings(c19141) != coroutine_suspended) {
                sessionsSettings = this;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        sessionsSettings = (SessionsSettings) c19141.L$0;
        ResultKt.throwOnFailure(obj);
        SettingsProvider settingsProvider2 = sessionsSettings.remoteSettings;
        c19141.L$0 = null;
        c19141.label = 2;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
