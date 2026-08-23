package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzjx;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzki;
import com.google.android.gms.internal.play_billing.zzkl;
import com.google.android.gms.internal.play_billing.zzlo;
import com.google.android.gms.internal.play_billing.zzlq;
import com.google.android.gms.internal.play_billing.zzlu;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zzba implements ServiceConnection {
    final /* synthetic */ BillingClientImpl zza;
    private final BillingClientStateListener zzb;

    /* synthetic */ zzba(BillingClientImpl billingClientImpl, BillingClientStateListener billingClientStateListener, zzbl zzblVar) {
        this.zza = billingClientImpl;
        this.zzb = billingClientStateListener;
    }

    private final void zzc(BillingResult billingResult) {
        synchronized (this.zza.zza) {
            try {
                if (this.zza.zzb == 3) {
                    return;
                }
                this.zzb.onBillingSetupFinished(billingResult);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        zze.zzl("BillingClient", "Billing service died.");
        try {
            if (BillingClientImpl.zzaq(this.zza)) {
                zzch zzchVar = this.zza.zzg;
                zzjx zzjxVarZzc = zzjz.zzc();
                zzjxVarZzc.zzn(6);
                zzke zzkeVarZzc = zzki.zzc();
                zzkeVarZzc.zzo(122);
                zzjxVarZzc.zza(zzkeVarZzc);
                zzchVar.zza((zzjz) zzjxVarZzc.zzf());
            } else {
                this.zza.zzg.zze(zzkl.zzB());
            }
        } catch (Throwable th) {
            zze.zzm("BillingClient", "Unable to log.", th);
        }
        synchronized (this.zza.zza) {
            if (this.zza.zzb != 3 && this.zza.zzb != 0) {
                this.zza.zzaJ(0);
                this.zza.zzaL();
                this.zzb.onBillingServiceDisconnected();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zze.zzk("BillingClient", "Billing service connected.");
        synchronized (this.zza.zza) {
            try {
                if (this.zza.zzb == 3) {
                    return;
                }
                this.zza.zzh = com.google.android.gms.internal.play_billing.zzam.zzu(iBinder);
                BillingClientImpl billingClientImpl = this.zza;
                if (BillingClientImpl.zzE(new Callable() { // from class: com.android.billingclient.api.zzay
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        this.zza.zza();
                        return null;
                    }
                }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzaz
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzb();
                    }
                }, billingClientImpl.zzax(), billingClientImpl.zzaD()) == null) {
                    BillingClientImpl billingClientImpl2 = this.zza;
                    BillingResult billingResultZzaA = billingClientImpl2.zzaA();
                    billingClientImpl2.zzbe(25, 6, billingResultZzaA);
                    zzc(billingResultZzaA);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zze.zzl("BillingClient", "Billing service disconnected.");
        try {
            if (BillingClientImpl.zzaq(this.zza)) {
                zzch zzchVar = this.zza.zzg;
                zzjx zzjxVarZzc = zzjz.zzc();
                zzjxVarZzc.zzn(6);
                zzke zzkeVarZzc = zzki.zzc();
                zzkeVarZzc.zzo(121);
                zzjxVarZzc.zza(zzkeVarZzc);
                zzchVar.zza((zzjz) zzjxVarZzc.zzf());
            } else {
                this.zza.zzg.zzg(zzlu.zzB());
            }
        } catch (Throwable th) {
            zze.zzm("BillingClient", "Unable to log.", th);
        }
        synchronized (this.zza.zza) {
            try {
                if (this.zza.zzb == 3) {
                    return;
                }
                this.zza.zzaJ(0);
                this.zzb.onBillingServiceDisconnected();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0278  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final /* synthetic */ Object zza() {
        Bundle bundle;
        boolean z;
        int i;
        int i2;
        String strZza;
        int iZzy;
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        synchronized (this.zza.zza) {
            try {
                if (this.zza.zzb != 3) {
                    int i3 = this.zza.zzb;
                    if (TextUtils.isEmpty(null)) {
                        bundle = null;
                    } else {
                        bundle = new Bundle();
                        bundle.putString("accountName", null);
                        BillingClientImpl billingClientImpl = this.zza;
                        zze.zzc(bundle, billingClientImpl.zzc, billingClientImpl.zzF.longValue());
                    }
                    try {
                        synchronized (this.zza.zza) {
                            zzanVar = this.zza.zzh;
                        }
                    } catch (Exception e) {
                        z = i3 != 1;
                        zze.zzm("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                        if (e instanceof DeadObjectException) {
                            i2 = 101;
                        } else if (e instanceof RemoteException) {
                            i2 = 100;
                        } else if (e instanceof SecurityException) {
                            i2 = 102;
                        } else {
                            i = 42;
                            strZza = i != 42 ? zzcg.zza(e) : null;
                            this.zza.zzaJ(0);
                            iZzy = 6;
                        }
                        i = i2;
                        if (i != 42) {
                        }
                        this.zza.zzaJ(0);
                        iZzy = 6;
                    }
                    if (zzanVar == null) {
                        this.zza.zzaJ(0);
                        BillingClientImpl billingClientImpl2 = this.zza;
                        BillingResult billingResult = zzcj.zzm;
                        billingClientImpl2.zzbe(119, 6, billingResult);
                        zzc(billingResult);
                    } else {
                        String packageName = this.zza.zzf.getPackageName();
                        iZzy = 3;
                        int i4 = 23;
                        while (true) {
                            if (i4 < 3) {
                                i4 = 0;
                                break;
                            }
                            iZzy = bundle == null ? zzanVar.zzy(i4, packageName, "subs") : zzanVar.zzc(i4, packageName, "subs", bundle);
                            if (iZzy == 0) {
                                zze.zzk("BillingClient", "highestLevelSupportedForSubs: " + i4);
                                break;
                            }
                            i4--;
                        }
                        this.zza.zzk = i4 >= 5;
                        this.zza.zzj = i4 >= 3;
                        if (i4 < 3) {
                            zze.zzk("BillingClient", "In-app billing API does not support subscription on this device.");
                            i = 9;
                        } else {
                            i = 1;
                        }
                        int i5 = 23;
                        while (true) {
                            if (i5 < 3) {
                                break;
                            }
                            iZzy = bundle == null ? zzanVar.zzy(i5, packageName, "inapp") : zzanVar.zzc(i5, packageName, "inapp", bundle);
                            if (iZzy == 0) {
                                this.zza.zzl = i5;
                                zze.zzk("BillingClient", "mHighestLevelSupportedForInApp: " + this.zza.zzl);
                                break;
                            }
                            i5--;
                        }
                        BillingClientImpl billingClientImpl3 = this.zza;
                        billingClientImpl3.zzA = billingClientImpl3.zzl >= 23;
                        BillingClientImpl billingClientImpl4 = this.zza;
                        billingClientImpl4.zzz = billingClientImpl4.zzl >= 22;
                        BillingClientImpl billingClientImpl5 = this.zza;
                        billingClientImpl5.zzy = billingClientImpl5.zzl >= 21;
                        BillingClientImpl billingClientImpl6 = this.zza;
                        billingClientImpl6.zzx = billingClientImpl6.zzl >= 20;
                        BillingClientImpl billingClientImpl7 = this.zza;
                        billingClientImpl7.zzw = billingClientImpl7.zzl >= 19;
                        BillingClientImpl billingClientImpl8 = this.zza;
                        billingClientImpl8.zzv = billingClientImpl8.zzl >= 18;
                        BillingClientImpl billingClientImpl9 = this.zza;
                        billingClientImpl9.zzu = billingClientImpl9.zzl >= 17;
                        BillingClientImpl billingClientImpl10 = this.zza;
                        billingClientImpl10.zzt = billingClientImpl10.zzl >= 16;
                        BillingClientImpl billingClientImpl11 = this.zza;
                        billingClientImpl11.zzs = billingClientImpl11.zzl >= 15;
                        BillingClientImpl billingClientImpl12 = this.zza;
                        billingClientImpl12.zzr = billingClientImpl12.zzl >= 14;
                        BillingClientImpl billingClientImpl13 = this.zza;
                        billingClientImpl13.zzq = billingClientImpl13.zzl >= 12;
                        BillingClientImpl billingClientImpl14 = this.zza;
                        billingClientImpl14.zzp = billingClientImpl14.zzl >= 10;
                        BillingClientImpl billingClientImpl15 = this.zza;
                        billingClientImpl15.zzo = billingClientImpl15.zzl >= 9;
                        BillingClientImpl billingClientImpl16 = this.zza;
                        billingClientImpl16.zzn = billingClientImpl16.zzl >= 8;
                        BillingClientImpl billingClientImpl17 = this.zza;
                        billingClientImpl17.zzm = billingClientImpl17.zzl >= 6;
                        if (this.zza.zzl < 3) {
                            zze.zzl("BillingClient", "In-app billing API version 3 is not supported on this device.");
                            i = 36;
                        }
                        if (iZzy == 0) {
                            synchronized (this.zza.zza) {
                                try {
                                    if (this.zza.zzb != 3) {
                                        z = i3 != 1;
                                        this.zza.zzaJ(2);
                                        zzn zznVar = this.zza.zze != null ? this.zza.zze : null;
                                        if (zznVar != null) {
                                            zznVar.zzg(this.zza.zzy);
                                        }
                                    }
                                } finally {
                                }
                            }
                        } else {
                            z = i3 != 1;
                            this.zza.zzaJ(0);
                        }
                        strZza = null;
                        if (iZzy == 0) {
                            try {
                                if (true != z) {
                                    this.zza.zzbg(6);
                                } else {
                                    zzch zzchVar = this.zza.zzg;
                                    zzlo zzloVarZzc = zzlq.zzc();
                                    zzke zzkeVarZzc = zzki.zzc();
                                    zzkeVarZzc.zzn(0);
                                    zzloVarZzc.zza(zzkeVarZzc);
                                    zzchVar.zzf((zzlq) zzloVarZzc.zzf());
                                }
                            } catch (Throwable th) {
                                zze.zzm("BillingClient", "Unable to log.", th);
                            }
                            zzc(zzcj.zzl);
                        } else {
                            BillingResult billingResult2 = zzcj.zza;
                            try {
                                if (true != z) {
                                    this.zza.zzbf(i, 6, billingResult2, strZza);
                                } else {
                                    zzke zzkeVarZzc2 = zzki.zzc();
                                    zzkeVarZzc2.zzn(billingResult2.getResponseCode());
                                    zzkeVarZzc2.zzm(billingResult2.getDebugMessage());
                                    zzkeVarZzc2.zzo(i);
                                    if (strZza != null) {
                                        zzkeVarZzc2.zza(strZza);
                                    }
                                    zzch zzchVar2 = this.zza.zzg;
                                    zzlo zzloVarZzc2 = zzlq.zzc();
                                    zzloVarZzc2.zzm((zzki) zzkeVarZzc2.zzf());
                                    zzchVar2.zzf((zzlq) zzloVarZzc2.zzf());
                                }
                            } catch (Throwable th2) {
                                zze.zzm("BillingClient", "Unable to log.", th2);
                            }
                            zzc(zzcj.zza);
                        }
                    }
                }
            } finally {
            }
        }
        return null;
    }

    final /* synthetic */ void zzb() {
        this.zza.zzaJ(0);
        BillingResult billingResult = zzcj.zzn;
        this.zza.zzbe(24, 6, billingResult);
        zzc(billingResult);
    }
}
