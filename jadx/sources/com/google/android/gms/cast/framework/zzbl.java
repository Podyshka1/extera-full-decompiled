package com.google.android.gms.cast.framework;

import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
final class zzbl extends zzbb {
    final /* synthetic */ SessionProvider zza;

    @Override // com.google.android.gms.cast.framework.zzbc
    public final IObjectWrapper zzb(String str) {
        Session sessionCreateSession = this.zza.createSession(str);
        if (sessionCreateSession == null) {
            return null;
        }
        return sessionCreateSession.zzn();
    }

    @Override // com.google.android.gms.cast.framework.zzbc
    public final String zzc() {
        return this.zza.getCategory();
    }

    @Override // com.google.android.gms.cast.framework.zzbc
    public final boolean zzd() {
        return this.zza.isSessionRecoverable();
    }
}
