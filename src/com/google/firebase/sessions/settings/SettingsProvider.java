package com.google.firebase.sessions.settings;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public interface SettingsProvider {
    Double getSamplingRate();

    Boolean getSessionEnabled();

    /* JADX INFO: renamed from: getSessionRestartTimeout-FghU774 */
    Duration mo3568getSessionRestartTimeoutFghU774();

    Object updateSettings(Continuation continuation);

    /* JADX INFO: loaded from: classes5.dex */
    public static final class DefaultImpls {
        public static Object updateSettings(SettingsProvider settingsProvider, Continuation continuation) {
            return Unit.INSTANCE;
        }
    }
}
