package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public abstract class SessionProvider {
    private final Context zza;
    private final String zzb;
    private final zzbl zzc = new zzbl(this, null);

    protected SessionProvider(Context context, String str) {
        this.zza = ((Context) Preconditions.checkNotNull(context)).getApplicationContext();
        this.zzb = Preconditions.checkNotEmpty(str);
    }

    public abstract Session createSession(String str);

    public final String getCategory() {
        return this.zzb;
    }

    public final Context getContext() {
        return this.zza;
    }

    public abstract boolean isSessionRecoverable();

    public final IBinder zza() {
        return this.zzc;
    }
}
