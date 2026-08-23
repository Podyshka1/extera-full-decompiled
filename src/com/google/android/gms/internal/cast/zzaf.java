package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public final class zzaf extends com.google.android.gms.cast.framework.zzad {
    public final Set zza = DesugarCollections.synchronizedSet(new HashSet());
    private int zzd = zzb;
    private static final Logger zzc = new Logger("AppVisibilityProxy");
    static final int zzb = 1;

    @Override // com.google.android.gms.cast.framework.zzae
    public final IObjectWrapper zzb() {
        return ObjectWrapper.wrap(this);
    }

    @Override // com.google.android.gms.cast.framework.zzae
    public final void zzc() {
        zzc.m340i("onAppEnteredBackground", new Object[0]);
        this.zzd = 2;
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzae) it.next()).zza();
        }
    }

    @Override // com.google.android.gms.cast.framework.zzae
    public final void zzd() {
        zzc.m340i("onAppEnteredForeground", new Object[0]);
        this.zzd = 1;
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzae) it.next()).zzb();
        }
    }

    public final boolean zze() {
        return this.zzd == 2;
    }
}
