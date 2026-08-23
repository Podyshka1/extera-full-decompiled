package com.google.firebase.sessions.api;

import com.google.firebase.sessions.SharedSessionRepository;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class CrashEventReceiver {
    public static final CrashEventReceiver INSTANCE = new CrashEventReceiver();
    public static SharedSessionRepository sharedSessionRepository;

    private CrashEventReceiver() {
    }

    public final SharedSessionRepository getSharedSessionRepository$com_google_firebase_firebase_sessions() {
        SharedSessionRepository sharedSessionRepository2 = sharedSessionRepository;
        if (sharedSessionRepository2 != null) {
            return sharedSessionRepository2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sharedSessionRepository");
        return null;
    }

    public final void setSharedSessionRepository$com_google_firebase_firebase_sessions(SharedSessionRepository sharedSessionRepository2) {
        Intrinsics.checkNotNullParameter(sharedSessionRepository2, "<set-?>");
        sharedSessionRepository = sharedSessionRepository2;
    }

    public static final void notifyCrashOccurred() {
        try {
            if (sharedSessionRepository == null) {
                INSTANCE.setSharedSessionRepository$com_google_firebase_firebase_sessions(SharedSessionRepository.Companion.getInstance());
            }
            CrashEventReceiver crashEventReceiver = INSTANCE;
            if (crashEventReceiver.getSharedSessionRepository$com_google_firebase_firebase_sessions().isInForeground()) {
                crashEventReceiver.getSharedSessionRepository$com_google_firebase_firebase_sessions().appBackground();
            }
        } catch (Exception unused) {
        }
    }
}
