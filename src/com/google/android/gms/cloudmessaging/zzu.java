package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzu extends zzs {
    zzu(int i, int i2, Bundle bundle) {
        super(i, i2, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.zzs
    final void zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        zzd(bundle2);
    }

    @Override // com.google.android.gms.cloudmessaging.zzs
    final boolean zzb() {
        return false;
    }
}
