package com.google.android.gms.cast.internal;

import android.os.Handler;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.zzfk;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
final class zzw extends zzai {
    private final AtomicReference zza;
    private final Handler zzb;

    public zzw(zzx zzxVar) {
        this.zza = new AtomicReference(zzxVar);
        this.zzb = new zzfk(zzxVar.getLooper());
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzb(int i) {
        zzx zzxVarZzq = zzq();
        if (zzxVarZzq == null) {
            return;
        }
        zzx.zzf.m287d("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i));
        if (i != 0) {
            zzxVarZzq.triggerConnectionSuspended(2);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzc(int i) {
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzd(int i) {
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zze(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.zzO(applicationMetadata);
        zzxVar.zzT(applicationMetadata.getApplicationId());
        zzxVar.zzU(str2);
        zzxVar.zzS(str);
        synchronized (zzx.zzD) {
            try {
                if (zzxVar.zzV() != null) {
                    zzxVar.zzV().setResult(new zzr(new Status(0), applicationMetadata, str, str2, z));
                    zzxVar.zzW(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzf(int i) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.zzH(i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzg(int i) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.zzM(i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzh(int i) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.zzM(i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzi(int i) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.zzT(null);
        zzxVar.zzU(null);
        zzxVar.zzM(i);
        if (zzxVar.zzQ() != null) {
            this.zzb.post(new zzs(this, zzxVar, i));
        }
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzj(String str, double d, boolean z) {
        zzx.zzf.m287d("Deprecated callback: \"onStatusreceived\"", new Object[0]);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzk(zzac zzacVar) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzx.zzf.m287d("onDeviceStatusChanged", new Object[0]);
        this.zzb.post(new zzt(this, zzxVar, zzacVar));
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzl(zza zzaVar) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzx.zzf.m287d("onApplicationStatusChanged", new Object[0]);
        this.zzb.post(new zzu(this, zzxVar, zzaVar));
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzm(String str, String str2) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzx.zzf.m287d("Receive (type=text, ns=%s) %s", str, str2);
        this.zzb.post(new zzv(this, zzxVar, str, str2));
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzn(String str, byte[] bArr) {
        if (((zzx) this.zza.get()) == null) {
            return;
        }
        int i = zzx.zze;
        zzx.zzf.m287d("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzo(String str, long j, int i) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.zzL(j, i);
    }

    @Override // com.google.android.gms.cast.internal.zzaj
    public final void zzp(String str, long j) {
        zzx zzxVar = (zzx) this.zza.get();
        if (zzxVar == null) {
            return;
        }
        zzxVar.zzL(j, 0);
    }

    public final zzx zzq() {
        zzx zzxVar = (zzx) this.zza.getAndSet(null);
        if (zzxVar == null) {
            return null;
        }
        zzxVar.zzI();
        return zzxVar;
    }

    public final boolean zzr() {
        return this.zza.get() == null;
    }
}
