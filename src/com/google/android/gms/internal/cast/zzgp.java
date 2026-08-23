package com.google.android.gms.internal.cast;

import android.animation.Animator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgp extends zzgn {
    protected final Animator zza;
    private int zzc;
    private final zzgt zzd = new zzgo(this);
    private final int zzb = -1;

    private zzgp(Animator animator, int i, Runnable runnable) {
        this.zza = animator;
    }

    public static void zzb(Animator animator, int i, Runnable runnable) {
        animator.addListener(new zzgp(animator, -1, null));
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (zza(animator)) {
            return;
        }
        zzgw.zzb().zza(this.zzd);
    }

    public final /* synthetic */ boolean zzc() {
        return this.zzb != -1 && this.zzc >= 0;
    }

    public final /* synthetic */ int zzd() {
        return this.zzc;
    }

    public final /* synthetic */ void zze(int i) {
        this.zzc = i;
    }
}
