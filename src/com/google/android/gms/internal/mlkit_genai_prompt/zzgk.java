package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.ComponentName;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzgk extends zzgb {
    final /* synthetic */ zzgl zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ zzgk(zzgl zzglVar, byte[] bArr) {
        super(zzglVar);
        Objects.requireNonNull(zzglVar);
        this.zze = zzglVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (!Objects.equals(componentName, zzgl.zzt())) {
            if (Objects.equals(componentName, zzgl.zze)) {
                zze(zzam.zzb(iBinder));
                return;
            } else {
                zzf(zzdo.zze(0, "AiCore service is not connected. Unknown component ".concat(String.valueOf(componentName)), null));
                return;
            }
        }
        try {
            zzap.zzb(iBinder).zzd(new zzgj(this));
        } catch (RemoteException | RuntimeException e) {
            zzf(zzdo.zze(6, "AiCore service provider communication error.", e));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzgb
    public final void zzb() {
        Intent intent = new Intent();
        intent.setComponent(zzgl.zzt());
        zzgl zzglVar = this.zze;
        try {
            if (super.zzd(intent)) {
                return;
            }
            zzglVar.zza.unbindService(this);
            Intent intent2 = new Intent();
            intent2.setComponent(zzgl.zze);
            if (super.zzd(intent2)) {
                return;
            }
            zzf(zzdo.zze(601, "AiCore service failed to bind to primary or fallback.", null));
        } catch (SecurityException e) {
            zzf(zzdo.zze(601, "AiCore service failed to bind due to SecurityException.", e));
        }
    }
}
