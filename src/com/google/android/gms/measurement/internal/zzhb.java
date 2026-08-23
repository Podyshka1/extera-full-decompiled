package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzhb extends BroadcastReceiver {
    private final zzpg zza;
    private boolean zzb;
    private boolean zzc;

    zzhb(zzpg zzpgVar) {
        Preconditions.checkNotNull(zzpgVar);
        this.zza = zzpgVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzu();
        String action = intent.getAction();
        zzpgVar.zzaV().zzk().zzb("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            zzpgVar.zzaV().zze().zzb("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zZzb = zzpgVar.zzi().zzb();
        if (this.zzc != zZzb) {
            this.zzc = zZzb;
            zzpgVar.zzaW().zzj(new zzha(this, zZzb));
        }
    }

    public final void zza() {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzu();
        zzpgVar.zzaW().zzg();
        if (this.zzb) {
            return;
        }
        zzpgVar.zzaY().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.zzc = zzpgVar.zzi().zzb();
        zzpgVar.zzaV().zzk().zzb("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzc));
        this.zzb = true;
    }

    public final void zzb() {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzu();
        zzpgVar.zzaW().zzg();
        zzpgVar.zzaW().zzg();
        if (this.zzb) {
            zzpgVar.zzaV().zzk().zza("Unregistering connectivity change receiver");
            this.zzb = false;
            this.zzc = false;
            try {
                zzpgVar.zzaY().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.zza.zzaV().zzb().zzb("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    final /* synthetic */ zzpg zzc() {
        return this.zza;
    }
}
