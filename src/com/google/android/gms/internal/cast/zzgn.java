package com.google.android.gms.internal.cast;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzgn extends AnimatorListenerAdapter {
    private final SimpleArrayMap zza = new SimpleArrayMap();

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.zza.put(animator, Boolean.TRUE);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.zza.put(animator, Boolean.FALSE);
    }

    public final boolean zza(Animator animator) {
        SimpleArrayMap simpleArrayMap = this.zza;
        return simpleArrayMap.containsKey(animator) && ((Boolean) simpleArrayMap.get(animator)).booleanValue();
    }
}
