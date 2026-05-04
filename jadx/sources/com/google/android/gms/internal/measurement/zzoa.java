package com.google.android.gms.internal.measurement;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzoa extends zzoe {
    zzoa() {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzoe
    public final void zza() {
        if (!zzb()) {
            if (zzc() > 0) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(((zzob) zzd(0)).zza());
                throw null;
            }
            Iterator it = zze().iterator();
            if (it.hasNext()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(((Map.Entry) it.next()).getKey());
                throw null;
            }
        }
        super.zza();
    }
}
