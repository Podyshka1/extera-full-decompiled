package com.google.firebase.sessions;

import com.google.firebase.Firebase;
import com.google.firebase.FirebaseKt;

/* JADX INFO: loaded from: classes.dex */
public interface SharedSessionRepository {
    public static final Companion Companion = Companion.$$INSTANCE;

    void appBackground();

    void appForeground();

    boolean isInForeground();

    /* JADX INFO: loaded from: classes5.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final SharedSessionRepository getInstance() {
            return ((FirebaseSessionsComponent) FirebaseKt.getApp(Firebase.INSTANCE).get(FirebaseSessionsComponent.class)).getSharedSessionRepository();
        }
    }
}
