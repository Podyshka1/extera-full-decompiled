package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import kotlin.Unit;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwz implements Runnable {
    final /* synthetic */ Ref.ObjectRef zza;
    final /* synthetic */ zzws zzb;
    final /* synthetic */ Runnable zzc;

    public zzwz(Ref.ObjectRef objectRef, zzws zzwsVar, Runnable runnable) {
        this.zza = objectRef;
        this.zzb = zzwsVar;
        this.zzc = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.zza.element);
        zzws zzwsVar = this.zzb;
        Runnable runnable = this.zzc;
        zzws zzwsVarZzc = zzvy.zzc(zzvy.zzd(), zzwsVar);
        try {
            runnable.run();
            Unit unit = Unit.INSTANCE;
        } finally {
        }
    }

    public final String toString() {
        Runnable runnable = this.zzc;
        StringBuilder sb = new StringBuilder(runnable.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(runnable);
        sb.append("]");
        return sb.toString();
    }
}
