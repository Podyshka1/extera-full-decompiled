package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzr extends zzs {
    zzr(int i, int i2, Bundle bundle) {
        super(i, i2, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.zzs
    final void zza(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            zzd(null);
        } else {
            zzc(new zzt(4, "Invalid response to one way request", null));
        }
    }

    @Override // com.google.android.gms.cloudmessaging.zzs
    final boolean zzb() {
        return true;
    }
}
