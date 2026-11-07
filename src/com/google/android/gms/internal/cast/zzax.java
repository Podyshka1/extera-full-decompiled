package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zzax extends com.google.android.gms.cast.framework.zzac {
    public final Set zza = Collections.synchronizedSet(new HashSet());
    private int zzd = zzb;
    private static final Logger zzc = new Logger("AppVisibilityProxy");
    static final int zzb = 1;

    @Override // com.google.android.gms.cast.framework.zzad
    public final IObjectWrapper zzb() {
        return ObjectWrapper.wrap(this);
    }

    @Override // com.google.android.gms.cast.framework.zzad
    public final void zzc() {
        zzc.m291i("onAppEnteredForeground", new Object[0]);
        this.zzd = 1;
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzaw) it.next()).zza();
        }
    }

    @Override // com.google.android.gms.cast.framework.zzad
    public final void zzd() {
        zzc.m291i("onAppEnteredBackground", new Object[0]);
        this.zzd = 2;
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzaw) it.next()).zzb();
        }
    }

    public final boolean zze() {
        return this.zzd == 2;
    }

    public final void zzf(zzaw zzawVar) {
        this.zza.add(zzawVar);
    }
}
