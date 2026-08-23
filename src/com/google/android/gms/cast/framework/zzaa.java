package com.google.android.gms.cast.framework;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaa extends zzam {
    private final CastStateListener zza;

    public zzaa(CastStateListener castStateListener) {
        this.zza = castStateListener;
    }

    @Override // com.google.android.gms.cast.framework.zzan
    public final IObjectWrapper zzb() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.cast.framework.zzan
    public final void zzc(int i) {
        this.zza.onCastStateChanged(i);
    }
}
