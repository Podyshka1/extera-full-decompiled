package com.google.android.gms.measurement.internal;

import android.content.Intent;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzoy extends zzay {
    final /* synthetic */ zzpg zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzoy(zzpg zzpgVar, zzjg zzjgVar) {
        super(zzjgVar);
        Objects.requireNonNull(zzpgVar);
        this.zza = zzpgVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzay
    public final void zza() {
        zzpg zzpgVar = this.zza;
        zzpgVar.zzaW().zzg();
        String str = (String) zzpgVar.zzay().pollFirst();
        if (str != null) {
            zzpgVar.zzaz(zzpgVar.zzaZ().elapsedRealtime());
            zzpgVar.zzaV().zzk().zzb("Sending trigger URI notification to app", str);
            Intent intent = new Intent();
            intent.setAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            intent.setPackage(str);
            zzpg.zzaQ(zzpgVar.zzaY(), intent);
        }
        zzpgVar.zzav();
    }
}
