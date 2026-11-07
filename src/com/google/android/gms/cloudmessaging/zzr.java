package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzr extends zzs {
    public zzr(int i, int i2, Bundle bundle) {
        super(i, i2, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.zzs
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.cloudmessaging.zzs
    public final void zzb(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            zzc(null);
        } else {
            zzd(new zzt(4, "Invalid response to one way request", null));
        }
    }
}
