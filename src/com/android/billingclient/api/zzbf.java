package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.internal.play_billing.zzbi;
import com.google.android.gms.internal.play_billing.zzc;
import com.google.android.gms.internal.play_billing.zzhv;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhz;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzig;
import com.google.android.gms.internal.play_billing.zzij;
import com.google.android.gms.internal.play_billing.zzjm;
import com.google.android.gms.internal.play_billing.zzjo;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjt;
import com.google.android.gms.internal.play_billing.zzjv;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class zzbf implements ServiceConnection {
    final /* synthetic */ BillingClientImpl zza;
    private final BillingClientStateListener zzb;
    private final zzbi zzc;
    private final zzbi zzd;
    private final int zze;

    public /* synthetic */ zzbf(BillingClientImpl billingClientImpl, BillingClientStateListener billingClientStateListener, int i, zzbp zzbpVar) {
        Objects.requireNonNull(billingClientImpl);
        this.zza = billingClientImpl;
        this.zzc = zzbi.zzc(billingClientImpl.zzJ);
        this.zzd = zzbi.zzc(billingClientImpl.zzJ);
        this.zzb = billingClientStateListener;
        this.zze = i;
    }

    public static /* synthetic */ Object zza(zzbf zzbfVar) {
        Bundle bundle;
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        BillingClientImpl billingClientImpl = zzbfVar.zza;
        synchronized (billingClientImpl.zza) {
            try {
                if (billingClientImpl.zzb != 3) {
                    boolean z = billingClientImpl.zzb == 1;
                    if (TextUtils.isEmpty(null)) {
                        bundle = null;
                    } else {
                        bundle = new Bundle();
                        bundle.putString("accountName", null);
                        zzc.zzc(bundle, billingClientImpl.zzc, billingClientImpl.zzd, billingClientImpl.zzI.longValue());
                    }
                    zzie zzieVar = zzie.REASON_UNSPECIFIED;
                    synchronized (billingClientImpl.zza) {
                        zzamVar = billingClientImpl.zzi;
                    }
                    BillingClientImpl billingClientImpl2 = zzbfVar.zza;
                    if (zzamVar == null) {
                        billingClientImpl2.zzaS(0);
                        int i = zzbfVar.zze;
                        zzie zzieVar2 = zzie.SERVICE_RESET_TO_NULL;
                        BillingResult billingResult = zzcj.zzj;
                        billingClientImpl2.zzaR(zzieVar2, billingResult, i);
                        zzbfVar.zzg(billingResult);
                    } else {
                        String packageName = billingClientImpl2.zzg.getPackageName();
                        int i2 = 25;
                        int iZzw = 3;
                        int i3 = 25;
                        while (true) {
                            if (i3 < 3) {
                                i3 = 0;
                                break;
                            }
                            if (bundle == null) {
                                try {
                                    iZzw = zzamVar.zzw(i3, packageName, "subs");
                                } catch (Exception e) {
                                    zzc.zzo("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                                    zzie zzieVar3 = e instanceof DeadObjectException ? zzie.IS_BILLING_SUPPORTED_DEAD_OBJECT_EXCEPTION : e instanceof RemoteException ? zzie.IS_BILLING_SUPPORTED_REMOTE_EXCEPTION : e instanceof SecurityException ? zzie.IS_BILLING_SUPPORTED_SECURITY_EXCEPTION : zzie.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION;
                                    String strZza = zzieVar3.equals(zzie.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION) ? zzcg.zza(e) : null;
                                    zzbfVar.zza.zzaS(0);
                                    zzbfVar.zzf(BillingClientImpl.zzl(e), zzieVar3, strZza, z);
                                    zzbfVar.zzg(BillingClientImpl.zzl(e));
                                }
                            } else {
                                iZzw = zzamVar.zzc(i3, packageName, "subs", bundle);
                            }
                            if (iZzw == 0) {
                                zzc.zzm("BillingClient", "highestLevelSupportedForSubs: " + i3);
                                break;
                            }
                            i3--;
                        }
                        billingClientImpl2.zzl = i3 >= 5;
                        billingClientImpl2.zzk = i3 >= 3;
                        if (i3 < 3) {
                            zzieVar = zzie.SUBSCRIPTIONS_NOT_SUPPORTED;
                            zzc.zzm("BillingClient", "In-app billing API does not support subscription on this device.");
                        }
                        while (true) {
                            if (i2 < 3) {
                                break;
                            }
                            iZzw = bundle == null ? zzamVar.zzw(i2, packageName, "inapp") : zzamVar.zzc(i2, packageName, "inapp", bundle);
                            if (iZzw == 0) {
                                billingClientImpl2.zzm = i2;
                                zzc.zzm("BillingClient", "mHighestLevelSupportedForInApp: " + billingClientImpl2.zzm);
                                break;
                            }
                            i2--;
                        }
                        BillingClientImpl.zzac(billingClientImpl2, billingClientImpl2.zzm);
                        if (billingClientImpl2.zzm < 3) {
                            zzieVar = zzie.ONE_TIME_PRODUCT_NOT_SUPPORTED;
                            zzc.zzn("BillingClient", "In-app billing API version 3 is not supported on this device.");
                        }
                        BillingClientImpl.zzae(billingClientImpl2, iZzw);
                        if (iZzw != 0) {
                            BillingResult billingResult2 = zzcj.zzb;
                            zzbfVar.zzf(billingResult2, zzieVar, null, z);
                            zzbfVar.zzg(billingResult2);
                        } else {
                            try {
                                Long lZze = zzbfVar.zze(z);
                                if (z) {
                                    zzhz zzhzVarZzc = zzib.zzc();
                                    zzhzVarZzc.zzo(6);
                                    zzjt zzjtVarZzc = zzjv.zzc();
                                    int i4 = zzbfVar.zze;
                                    zzjtVarZzc.zza(i4 > 0);
                                    zzjtVarZzc.zzl(i4);
                                    if (lZze != null) {
                                        zzjtVarZzc.zzm(lZze.longValue());
                                    }
                                    BillingClientImpl billingClientImpl3 = zzbfVar.zza;
                                    zzhzVarZzc.zzn(zzjtVarZzc);
                                    billingClientImpl3.zzaQ((zzib) zzhzVarZzc.zze());
                                } else {
                                    zzjm zzjmVarZzc = zzjo.zzc();
                                    zzic zzicVarZzc = zzig.zzc();
                                    zzicVarZzc.zzo(0);
                                    zzjmVarZzc.zza(zzicVarZzc);
                                    if (lZze != null) {
                                        zzjmVarZzc.zzl(lZze.longValue());
                                    }
                                    zzbfVar.zza.zzh.zzj((zzjo) zzjmVarZzc.zze());
                                }
                            } catch (Throwable th) {
                                zzc.zzo("BillingClient", "Unable to log.", th);
                            }
                            zzbfVar.zzg(zzcj.zzi);
                        }
                    }
                }
            } finally {
            }
        }
        return null;
    }

    public static /* synthetic */ void zzb(zzbf zzbfVar) {
        BillingClientImpl billingClientImpl = zzbfVar.zza;
        billingClientImpl.zzaS(0);
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzcj.zzk;
        billingClientImpl.zzaR(zzieVar, billingResult, zzbfVar.zze);
        zzbfVar.zzg(billingResult);
    }

    private final Long zze(boolean z) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (z) {
            zzbi zzbiVar = this.zzc;
            if (!zzbiVar.zzg()) {
                return null;
            }
            zzbiVar.zzf();
            return Long.valueOf(zzbiVar.zza(timeUnit));
        }
        zzbi zzbiVar2 = this.zzd;
        if (!zzbiVar2.zzg()) {
            return null;
        }
        zzbiVar2.zzf();
        return Long.valueOf(zzbiVar2.zza(timeUnit));
    }

    private final void zzf(BillingResult billingResult, zzie zzieVar, String str, boolean z) {
        try {
            zzic zzicVarZzc = zzig.zzc();
            zzicVarZzc.zzo(billingResult.getResponseCode());
            zzicVarZzc.zzl(billingResult.getDebugMessage());
            zzicVarZzc.zzn(zzieVar);
            if (str != null) {
                zzicVarZzc.zza(str);
            }
            Long lZze = zze(z);
            if (!z) {
                zzjm zzjmVarZzc = zzjo.zzc();
                zzjmVarZzc.zza(zzicVarZzc);
                if (lZze != null) {
                    zzjmVarZzc.zzl(lZze.longValue());
                }
                this.zza.zzh.zzj((zzjo) zzjmVarZzc.zze());
                return;
            }
            zzjt zzjtVarZzc = zzjv.zzc();
            int i = this.zze;
            zzjtVarZzc.zza(i > 0);
            zzjtVarZzc.zzl(i);
            if (lZze != null) {
                zzjtVarZzc.zzm(lZze.longValue());
            }
            BillingClientImpl billingClientImpl = this.zza;
            zzhv zzhvVarZzc = zzhx.zzc();
            zzhvVarZzc.zzl(zzicVarZzc);
            zzhvVarZzc.zzp(6);
            zzhvVarZzc.zzo(zzjtVarZzc);
            billingClientImpl.zzaO((zzhx) zzhvVarZzc.zze());
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzg(BillingResult billingResult) {
        BillingClientImpl billingClientImpl = this.zza;
        synchronized (billingClientImpl.zza) {
            try {
                if (billingClientImpl.zzb == 3) {
                    return;
                }
                try {
                    this.zzb.onBillingSetupFinished(billingResult);
                } catch (Throwable th) {
                    zzc.zzo("BillingClient", "Exception while calling onBillingSetupFinished.", th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        zzc.zzn("BillingClient", "Billing service died.");
        try {
            BillingClientImpl billingClientImpl = this.zza;
            if (BillingClientImpl.zzai(billingClientImpl)) {
                zzch zzchVar = billingClientImpl.zzh;
                zzhv zzhvVarZzc = zzhx.zzc();
                zzhvVarZzc.zzp(6);
                zzic zzicVarZzc = zzig.zzc();
                zzicVarZzc.zzn(zzie.BINDING_DIED);
                zzhvVarZzc.zzl(zzicVarZzc);
                zzjt zzjtVarZzc = zzjv.zzc();
                int i = this.zze;
                zzjtVarZzc.zza(i > 0);
                zzjtVarZzc.zzl(i);
                zzhvVarZzc.zzo(zzjtVarZzc);
                zzchVar.zza((zzhx) zzhvVarZzc.zze());
            } else {
                billingClientImpl.zzh.zzi(zzij.zzd());
            }
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
        BillingClientImpl billingClientImpl2 = this.zza;
        synchronized (billingClientImpl2.zza) {
            if (billingClientImpl2.zzb != 3 && billingClientImpl2.zzb != 0) {
                billingClientImpl2.zzaS(0);
                billingClientImpl2.zzaV();
                try {
                    this.zzb.onBillingServiceDisconnected();
                } catch (Throwable th2) {
                    zzc.zzo("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzc.zzm("BillingClient", "Billing service connected.");
        BillingClientImpl billingClientImpl = this.zza;
        synchronized (billingClientImpl.zza) {
            try {
                if (billingClientImpl.zzb == 3) {
                    return;
                }
                billingClientImpl.zzi = com.google.android.gms.internal.play_billing.zzal.zzs(iBinder);
                if (BillingClientImpl.zzG(new Callable() { // from class: com.android.billingclient.api.zzbd
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        zzbf.zza(this.zza);
                        return null;
                    }
                }, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, new Runnable() { // from class: com.android.billingclient.api.zzbe
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbf.zzb(this.zza);
                    }
                }, billingClientImpl.zzan(), billingClientImpl.zzF()) == null) {
                    int i = this.zze;
                    BillingResult billingResultZzaq = billingClientImpl.zzaq();
                    billingClientImpl.zzaR(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, billingResultZzaq, i);
                    zzg(billingResultZzaq);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzc.zzn("BillingClient", "Billing service disconnected.");
        try {
            BillingClientImpl billingClientImpl = this.zza;
            if (BillingClientImpl.zzai(billingClientImpl)) {
                zzch zzchVar = billingClientImpl.zzh;
                zzhv zzhvVarZzc = zzhx.zzc();
                zzhvVarZzc.zzp(6);
                zzic zzicVarZzc = zzig.zzc();
                zzicVarZzc.zzn(zzie.SERVICE_DISCONNECTED);
                zzhvVarZzc.zzl(zzicVarZzc);
                zzjt zzjtVarZzc = zzjv.zzc();
                int i = this.zze;
                zzjtVarZzc.zza(i > 0);
                zzjtVarZzc.zzl(i);
                zzhvVarZzc.zzo(zzjtVarZzc);
                zzchVar.zza((zzhx) zzhvVarZzc.zze());
            } else {
                billingClientImpl.zzh.zzk(zzjs.zzd());
            }
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
        zzbi zzbiVar = this.zzd;
        zzbiVar.zzd();
        zzbiVar.zze();
        BillingClientImpl billingClientImpl2 = this.zza;
        synchronized (billingClientImpl2.zza) {
            try {
                if (billingClientImpl2.zzb == 3) {
                    return;
                }
                billingClientImpl2.zzaS(0);
                try {
                    this.zzb.onBillingServiceDisconnected();
                } catch (Throwable th2) {
                    zzc.zzo("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            } finally {
            }
        }
    }

    public final void zzc() {
        zzbi zzbiVar = this.zzc;
        zzbiVar.zzd();
        zzbiVar.zze();
    }

    public final boolean zzd() {
        return this.zze > 0;
    }
}
