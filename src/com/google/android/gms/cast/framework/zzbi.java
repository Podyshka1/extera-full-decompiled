package com.google.android.gms.cast.framework;

import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzbi extends zzba {
    final /* synthetic */ SessionProvider zza;

    public /* synthetic */ zzbi(SessionProvider sessionProvider, byte[] bArr) {
        Objects.requireNonNull(sessionProvider);
        this.zza = sessionProvider;
    }

    @Override // com.google.android.gms.cast.framework.zzbb
    public final IObjectWrapper zzb(String str) {
        Session sessionCreateSession = this.zza.createSession(str);
        if (sessionCreateSession == null) {
            return null;
        }
        return sessionCreateSession.zzn();
    }

    @Override // com.google.android.gms.cast.framework.zzbb
    public final boolean zzc() {
        return this.zza.isSessionRecoverable();
    }

    @Override // com.google.android.gms.cast.framework.zzbb
    public final String zzd() {
        return this.zza.getCategory();
    }
}
