package com.google.android.gms.cast.framework;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
final class zzbi extends zzbd {
    final /* synthetic */ Session zza;

    /* synthetic */ zzbi(Session session, zzbh zzbhVar) {
        this.zza = session;
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final long zzb() {
        return this.zza.getSessionRemainingTimeMs();
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final IObjectWrapper zzc() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzd(boolean z) {
        this.zza.end(z);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zze(Bundle bundle) {
        this.zza.onResuming(bundle);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzf(Bundle bundle) {
        this.zza.onStarting(bundle);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzg(Bundle bundle) {
        this.zza.resume(bundle);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzh(Bundle bundle) {
        this.zza.start(bundle);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzi(Bundle bundle) {
        this.zza.zzk(bundle);
    }
}
