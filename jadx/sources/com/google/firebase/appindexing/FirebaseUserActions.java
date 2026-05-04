package com.google.firebase.appindexing;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.firebase.appindexing.internal.zzt;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FirebaseUserActions {
    private static WeakReference zza;

    public static synchronized FirebaseUserActions getInstance(Context context) {
        Preconditions.checkNotNull(context);
        WeakReference weakReference = zza;
        FirebaseUserActions firebaseUserActions = weakReference == null ? null : (FirebaseUserActions) weakReference.get();
        if (firebaseUserActions != null) {
            return firebaseUserActions;
        }
        zzt zztVar = new zzt(context.getApplicationContext());
        zza = new WeakReference(zztVar);
        return zztVar;
    }

    public abstract Task end(Action action);
}
