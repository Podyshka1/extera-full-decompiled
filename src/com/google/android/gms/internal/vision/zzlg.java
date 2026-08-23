package com.google.android.gms.internal.vision;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzlg extends zzlh {
    zzlg(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.vision.zzlh
    public final void zza() {
        if (!zzb()) {
            if (zzc() > 0) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzb(0).getKey());
                throw null;
            }
            Iterator it = zzd().iterator();
            if (it.hasNext()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(((Map.Entry) it.next()).getKey());
                throw null;
            }
        }
        super.zza();
    }
}
