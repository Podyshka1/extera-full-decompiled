package com.google.firebase.sessions;

/* JADX INFO: loaded from: classes.dex */
public final class TimeProviderImpl implements TimeProvider {
    public static final TimeProviderImpl INSTANCE = new TimeProviderImpl();

    private TimeProviderImpl() {
    }

    @Override // com.google.firebase.sessions.TimeProvider
    public Time currentTime() {
        return new Time(System.currentTimeMillis());
    }
}
