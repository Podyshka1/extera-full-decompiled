package com.google.firebase.sessions.settings;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface SettingsCache {
    boolean hasCacheExpired();

    Integer sessionRestartTimeout();

    Double sessionSamplingRate();

    Boolean sessionsEnabled();

    Object updateConfigs(SessionConfigs sessionConfigs, Continuation continuation);
}
