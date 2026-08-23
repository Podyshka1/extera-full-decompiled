package com.google.firebase.appindexing;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.firebase.appindexing.internal.zzt;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FirebaseUserActions {

    @GuardedBy("FirebaseUserActions.class")
    private static WeakReference<FirebaseUserActions> zza;

    public static synchronized FirebaseUserActions getInstance(Context context) {
        Preconditions.checkNotNull(context);
        WeakReference<FirebaseUserActions> weakReference = zza;
        FirebaseUserActions firebaseUserActions = weakReference == null ? null : weakReference.get();
        if (firebaseUserActions != null) {
            return firebaseUserActions;
        }
        zzt zztVar = new zzt(context.getApplicationContext());
        zza = new WeakReference<>(zztVar);
        return zztVar;
    }

    public abstract Task<Void> end(Action action);
}
