package com.google.android.gms.cast;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.internal.zzab;
import com.google.android.gms.cast.internal.zzah;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzbs extends zzah {
    final /* synthetic */ zzbt zza;

    zzbs(zzbt zzbtVar) {
        this.zza = zzbtVar;
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzb(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        this.zza.zzp = applicationMetadata;
        this.zza.zzq = str;
        zzbt.zzD(this.zza, new com.google.android.gms.cast.internal.zzq(new Status(0), applicationMetadata, str, str2, z));
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzc(int i) {
        this.zza.zzU(i);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzd(final int i) {
        zzbt.zzF(this.zza, i);
        zzbt zzbtVar = this.zza;
        if (zzbtVar.zzx != null) {
            zzbt.zzo(zzbtVar).post(new Runnable() { // from class: com.google.android.gms.cast.zzbq
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zza.zzx.onApplicationDisconnected(i);
                }
            });
        }
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zze(int i) {
        zzbt.zzF(this.zza, i);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzf(final com.google.android.gms.cast.internal.zza zzaVar) {
        zzbt.zzo(this.zza).post(new Runnable() { // from class: com.google.android.gms.cast.zzbm
            @Override // java.lang.Runnable
            public final void run() {
                zzbt.zzz(this.zza.zza, zzaVar);
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzg(int i) {
        zzbt.zzF(this.zza, i);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzh(String str, byte[] bArr) {
        zzbt.zzg.m336d("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzi(final int i) {
        zzbt.zzo(this.zza).post(new Runnable() { // from class: com.google.android.gms.cast.zzbo
            @Override // java.lang.Runnable
            public final void run() {
                zzbs zzbsVar = this.zza;
                int i2 = i;
                if (i2 != 0) {
                    zzbsVar.zza.zzz = 1;
                    synchronized (zzbsVar.zza.zzy) {
                        try {
                            Iterator it = zzbsVar.zza.zzy.iterator();
                            while (it.hasNext()) {
                                ((zzq) it.next()).zzb(i2);
                            }
                        } finally {
                        }
                    }
                    zzbsVar.zza.zzS();
                    return;
                }
                zzbsVar.zza.zzz = 2;
                zzbsVar.zza.zzk = true;
                zzbsVar.zza.zzl = true;
                synchronized (zzbsVar.zza.zzy) {
                    try {
                        Iterator it2 = zzbsVar.zza.zzy.iterator();
                        while (it2.hasNext()) {
                            ((zzq) it2.next()).zza();
                        }
                    } finally {
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzj(final zzab zzabVar) {
        zzbt.zzo(this.zza).post(new Runnable() { // from class: com.google.android.gms.cast.zzbl
            @Override // java.lang.Runnable
            public final void run() {
                zzbt.zzA(this.zza.zza, zzabVar);
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzk(final int i) {
        zzbt.zzo(this.zza).post(new Runnable() { // from class: com.google.android.gms.cast.zzbn
            @Override // java.lang.Runnable
            public final void run() {
                zzbs zzbsVar = this.zza;
                zzbt.zzy(zzbsVar.zza);
                zzbsVar.zza.zzz = 1;
                int i2 = i;
                synchronized (zzbsVar.zza.zzy) {
                    try {
                        Iterator it = zzbsVar.zza.zzy.iterator();
                        while (it.hasNext()) {
                            ((zzq) it.next()).zzd(i2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                zzbsVar.zza.zzS();
                zzbt zzbtVar = zzbsVar.zza;
                zzbtVar.zzQ(zzbtVar.zza);
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzl(String str, long j) {
        zzbt.zzE(this.zza, j, 0);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzm(String str, long j, int i) {
        zzbt.zzE(this.zza, j, i);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzn(String str, double d, boolean z) {
        zzbt.zzg.m336d("Deprecated callback: \"onStatusReceived\"", new Object[0]);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzo(final int i) {
        zzbt.zzo(this.zza).post(new Runnable() { // from class: com.google.android.gms.cast.zzbr
            @Override // java.lang.Runnable
            public final void run() {
                zzbs zzbsVar = this.zza;
                zzbsVar.zza.zzz = 3;
                int i2 = i;
                synchronized (zzbsVar.zza.zzy) {
                    try {
                        Iterator it = zzbsVar.zza.zzy.iterator();
                        while (it.hasNext()) {
                            ((zzq) it.next()).zzc(i2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzp(final String str, final String str2) {
        zzbt.zzg.m336d("Receive (type=text, ns=%s) %s", str, str2);
        zzbt.zzo(this.zza).post(new Runnable() { // from class: com.google.android.gms.cast.zzbp
            @Override // java.lang.Runnable
            public final void run() {
                Cast.MessageReceivedCallback messageReceivedCallback;
                zzbs zzbsVar = this.zza;
                Map map = zzbsVar.zza.zze;
                String str3 = str;
                synchronized (map) {
                    messageReceivedCallback = (Cast.MessageReceivedCallback) zzbsVar.zza.zze.get(str3);
                }
                if (messageReceivedCallback != null) {
                    messageReceivedCallback.onMessageReceived(zzbsVar.zza.zzw, str3, str2);
                } else {
                    zzbt.zzg.m336d("Discarded message for unknown namespace '%s'", str3);
                }
            }
        });
    }
}
