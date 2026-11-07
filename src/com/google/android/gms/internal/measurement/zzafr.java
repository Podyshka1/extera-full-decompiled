package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzafr extends zzafv {
    public zzafr() {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzafv
    public final void zza() {
        if (!zzb()) {
            if (zzc() > 0) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(((zzafs) zzd(0)).zza());
                throw null;
            }
            Iterator it = zze().iterator();
            if (it.hasNext()) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(((Map.Entry) it.next()).getKey());
                throw null;
            }
        }
        super.zza();
    }
}
