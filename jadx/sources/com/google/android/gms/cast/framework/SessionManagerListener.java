package com.google.android.gms.cast.framework;

/* JADX INFO: loaded from: classes4.dex */
public interface SessionManagerListener {
    void onSessionEnded(Session session, int i);

    void onSessionEnding(Session session);

    void onSessionResumeFailed(Session session, int i);

    void onSessionResumed(Session session, boolean z);

    void onSessionResuming(Session session, String str);

    void onSessionStartFailed(Session session, int i);

    void onSessionStarted(Session session, String str);

    void onSessionStarting(Session session);

    void onSessionSuspended(Session session, int i);
}
