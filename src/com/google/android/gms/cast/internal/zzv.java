package com.google.android.gms.cast.internal;

import android.os.Handler;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.zzed;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
final class zzv extends zzah {
    private final AtomicReference zza;
    private final Handler zzb;

    public zzv(zzw zzwVar) {
        this.zza = new AtomicReference(zzwVar);
        this.zzb = new zzed(zzwVar.getLooper());
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzb(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.zzh = applicationMetadata;
        zzwVar.zzy = applicationMetadata.getApplicationId();
        zzwVar.zzz = str2;
        zzwVar.zzo = str;
        synchronized (zzw.zzf) {
            try {
                if (zzwVar.zzC != null) {
                    zzwVar.zzC.setResult(new zzq(new Status(0), applicationMetadata, str, str2, z));
                    zzwVar.zzC = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzc(int i) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.zzR(i);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzd(int i) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.zzy = null;
        zzwVar.zzz = null;
        zzwVar.zzab(i);
        if (zzwVar.zzj != null) {
            this.zzb.post(new zzr(this, zzwVar, i));
        }
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zze(int i) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.zzab(i);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzf(zza zzaVar) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzw.zze.m336d("onApplicationStatusChanged", new Object[0]);
        this.zzb.post(new zzt(this, zzwVar, zzaVar));
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzg(int i) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.zzab(i);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzh(String str, byte[] bArr) {
        if (((zzw) this.zza.get()) == null) {
            return;
        }
        zzw.zze.m336d("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzi(int i) {
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzj(zzab zzabVar) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzw.zze.m336d("onDeviceStatusChanged", new Object[0]);
        this.zzb.post(new zzs(this, zzwVar, zzabVar));
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzk(int i) {
        zzw zzwVarZzq = zzq();
        if (zzwVarZzq == null) {
            return;
        }
        zzw.zze.m336d("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i));
        if (i != 0) {
            zzwVarZzq.triggerConnectionSuspended(2);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzl(String str, long j) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.zzaa(j, 0);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzm(String str, long j, int i) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.zzaa(j, i);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzn(String str, double d, boolean z) {
        zzw.zze.m336d("Deprecated callback: \"onStatusreceived\"", new Object[0]);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzo(int i) {
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzp(String str, String str2) {
        zzw zzwVar = (zzw) this.zza.get();
        if (zzwVar == null) {
            return;
        }
        zzw.zze.m336d("Receive (type=text, ns=%s) %s", str, str2);
        this.zzb.post(new zzu(this, zzwVar, str, str2));
    }

    public final zzw zzq() {
        zzw zzwVar = (zzw) this.zza.getAndSet(null);
        if (zzwVar == null) {
            return null;
        }
        zzwVar.zzY();
        return zzwVar;
    }
}
