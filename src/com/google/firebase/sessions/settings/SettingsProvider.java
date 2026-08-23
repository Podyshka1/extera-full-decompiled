package com.google.firebase.sessions.settings;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.time.Duration;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096@¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00058&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u0004\u0018\u00010\t8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/google/firebase/sessions/settings/SettingsProvider;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "updateSettings", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "getSessionEnabled", "()Ljava/lang/Boolean;", "sessionEnabled", "Lkotlin/time/Duration;", "getSessionRestartTimeout-FghU774", "()Lkotlin/time/Duration;", "sessionRestartTimeout", _UrlKt.FRAGMENT_ENCODE_SET, "getSamplingRate", "()Ljava/lang/Double;", "samplingRate", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public interface SettingsProvider {
    Double getSamplingRate();

    Boolean getSessionEnabled();

    /* JADX INFO: renamed from: getSessionRestartTimeout-FghU774 */
    Duration mo3260getSessionRestartTimeoutFghU774();

    Object updateSettings(Continuation<? super Unit> continuation);

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m754k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static Object updateSettings(SettingsProvider settingsProvider, Continuation<? super Unit> continuation) {
            return Unit.INSTANCE;
        }
    }
}
