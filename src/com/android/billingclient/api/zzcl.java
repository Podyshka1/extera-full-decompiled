package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zzc;
import com.google.android.gms.internal.play_billing.zzhv;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhz;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzij;
import com.google.android.gms.internal.play_billing.zziq;
import com.google.android.gms.internal.play_billing.zzis;
import com.google.android.gms.internal.play_billing.zzja;
import com.google.android.gms.internal.play_billing.zzjg;
import com.google.android.gms.internal.play_billing.zzji;
import com.google.android.gms.internal.play_billing.zzjo;
import com.google.android.gms.internal.play_billing.zzjs;

/* JADX INFO: loaded from: classes.dex */
final class zzcl implements zzch {
    private zzis zzb;
    private final zzcn zzc;

    public zzcl(Context context, zzis zzisVar) {
        this.zzc = new zzcn(context);
        this.zzb = zzisVar;
    }

    private final void zzl(zzhx zzhxVar, zzis zzisVar) {
        if (zzhxVar == null) {
            return;
        }
        try {
            zzjg zzjgVarZzc = zzji.zzc();
            zzjgVarZzc.zzn(zzisVar);
            zzjgVarZzc.zza(zzhxVar);
            this.zzc.zza((zzji) zzjgVarZzc.zze());
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    private final void zzm(zzib zzibVar, zzis zzisVar) {
        if (zzibVar == null) {
            return;
        }
        try {
            zzjg zzjgVarZzc = zzji.zzc();
            zzjgVarZzc.zzn(zzisVar);
            zzjgVarZzc.zzl(zzibVar);
            this.zzc.zza((zzji) zzjgVarZzc.zze());
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zza(zzhx zzhxVar) {
        try {
            zzl(zzhxVar, this.zzb);
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zzb(zzhx zzhxVar, int i) {
        try {
            zziq zziqVar = (zziq) this.zzb.zzm();
            zziqVar.zzm(i);
            this.zzb = (zzis) zziqVar.zze();
            zza(zzhxVar);
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zzc(zzhx zzhxVar, int i, long j) {
        try {
            zziq zziqVar = (zziq) this.zzb.zzm();
            zziqVar.zzm(i);
            zzis zzisVar = (zzis) zziqVar.zze();
            this.zzb = zzisVar;
            if (j != 0) {
                zziq zziqVar2 = (zziq) zzisVar.zzm();
                zziqVar2.zzo(j);
                zzisVar = (zzis) zziqVar2.zze();
            }
            zzl(zzhxVar, zzisVar);
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zzd(zzhx zzhxVar, long j, boolean z) {
        try {
            zzhv zzhvVar = (zzhv) zzhxVar.zzm();
            zzja zzjaVar = (zzja) zzhxVar.zzB().zzm();
            zzjaVar.zza(z);
            zzhvVar.zzn(zzjaVar);
            zzhx zzhxVar2 = (zzhx) zzhvVar.zze();
            zzis zzisVar = this.zzb;
            if (j != 0) {
                zziq zziqVar = (zziq) zzisVar.zzm();
                zziqVar.zzo(j);
                zzisVar = (zzis) zziqVar.zze();
            }
            zzl(zzhxVar2, zzisVar);
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zze(zzhx zzhxVar, int i, long j, boolean z) {
        try {
            zziq zziqVar = (zziq) this.zzb.zzm();
            zziqVar.zzm(i);
            this.zzb = (zzis) zziqVar.zze();
            zzhv zzhvVar = (zzhv) zzhxVar.zzm();
            zzja zzjaVar = (zzja) zzhxVar.zzB().zzm();
            zzjaVar.zza(z);
            zzhvVar.zzn(zzjaVar);
            zzhx zzhxVar2 = (zzhx) zzhvVar.zze();
            zzis zzisVar = this.zzb;
            if (j != 0) {
                zziq zziqVar2 = (zziq) zzisVar.zzm();
                zziqVar2.zzo(j);
                zzisVar = (zzis) zziqVar2.zze();
            }
            zzl(zzhxVar2, zzisVar);
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zzf(zzib zzibVar) {
        try {
            zzm(zzibVar, this.zzb);
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zzg(zzib zzibVar, int i) {
        try {
            zziq zziqVar = (zziq) this.zzb.zzm();
            zziqVar.zzm(i);
            this.zzb = (zzis) zziqVar.zze();
            zzf(zzibVar);
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zzh(zzib zzibVar, long j, boolean z) {
        try {
            zzhz zzhzVar = (zzhz) zzibVar.zzm();
            zzja zzjaVar = (zzja) zzibVar.zzA().zzm();
            zzjaVar.zza(z);
            zzhzVar.zzm(zzjaVar);
            zzib zzibVar2 = (zzib) zzhzVar.zze();
            zzis zzisVar = this.zzb;
            if (j != 0) {
                zziq zziqVar = (zziq) zzisVar.zzm();
                zziqVar.zzo(j);
                zzisVar = (zzis) zziqVar.zze();
            }
            zzm(zzibVar2, zzisVar);
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zzi(zzij zzijVar) {
        try {
            zzjg zzjgVarZzc = zzji.zzc();
            zzjgVarZzc.zzn(this.zzb);
            zzjgVarZzc.zzm(zzijVar);
            this.zzc.zza((zzji) zzjgVarZzc.zze());
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zzj(zzjo zzjoVar) {
        try {
            zzcn zzcnVar = this.zzc;
            zzjg zzjgVarZzc = zzji.zzc();
            zzjgVarZzc.zzn(this.zzb);
            zzjgVarZzc.zzo(zzjoVar);
            zzcnVar.zza((zzji) zzjgVarZzc.zze());
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void zzk(zzjs zzjsVar) {
        if (zzjsVar == null) {
            return;
        }
        try {
            zzjg zzjgVarZzc = zzji.zzc();
            zzjgVarZzc.zzn(this.zzb);
            zzjgVarZzc.zzp(zzjsVar);
            this.zzc.zza((zzji) zzjgVarZzc.zze());
        } catch (Throwable th) {
            zzc.zzo("BillingLogger", "Unable to log.", th);
        }
    }
}
