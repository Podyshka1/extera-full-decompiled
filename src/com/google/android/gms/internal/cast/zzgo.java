package com.google.android.gms.internal.cast;

import android.animation.Animator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzgo extends zzgt {
    final /* synthetic */ zzgp zza;

    public zzgo(zzgp zzgpVar) {
        Objects.requireNonNull(zzgpVar);
        this.zza = zzgpVar;
    }

    @Override // com.google.android.gms.internal.cast.zzgt
    public final void zza(long j) {
        zzgp zzgpVar = this.zza;
        zzgpVar.zze(zzgpVar.zzd() + 1);
        Animator animator = zzgpVar.zza;
        if (zzgpVar.zza(animator) || animator.isStarted() || zzgpVar.zzc()) {
            return;
        }
        animator.start();
    }
}
