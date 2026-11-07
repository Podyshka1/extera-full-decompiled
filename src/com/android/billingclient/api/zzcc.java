package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.play_billing.zzc;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzcc implements ServiceConnection {
    final /* synthetic */ zzce zza;

    public /* synthetic */ zzcc(zzce zzceVar, zzcd zzcdVar) {
        Objects.requireNonNull(zzceVar);
        this.zza = zzceVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzc.zzm("BillingClientTesting", "Billing Override Service connected.");
        zzce zzceVar = this.zza;
        zzceVar.zzc = com.google.android.gms.internal.play_billing.zzat.zzc(iBinder);
        zzceVar.zzb = 2;
        zzceVar.zzaG(26);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzc.zzn("BillingClientTesting", "Billing Override Service disconnected.");
        zzce zzceVar = this.zza;
        zzceVar.zzc = null;
        zzceVar.zzb = 0;
    }
}
