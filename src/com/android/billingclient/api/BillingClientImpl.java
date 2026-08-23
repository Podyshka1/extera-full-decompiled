package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.google.android.gms.internal.play_billing.zzbe;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzev;
import com.google.android.gms.internal.play_billing.zzfb;
import com.google.android.gms.internal.play_billing.zzfm;
import com.google.android.gms.internal.play_billing.zzfn;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkb;
import com.google.android.gms.internal.play_billing.zzkd;
import com.google.android.gms.internal.play_billing.zzkg;
import com.google.android.gms.internal.play_billing.zzks;
import com.google.android.gms.internal.play_billing.zzku;
import com.google.android.gms.internal.play_billing.zzlv;
import com.google.android.gms.internal.play_billing.zzlx;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Function;
import java.util.function.Predicate;
import okhttp3.internal.url._UrlKt;
import org.json.JSONException;
import p022j$.util.Collection;
import p022j$.util.Objects;
import p022j$.util.function.Function$CC;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes.dex */
class BillingClientImpl extends BillingClient {
    private boolean zzA;
    private PendingPurchasesParams zzB;
    private boolean zzC;
    private ExecutorService zzD;
    private volatile zzev zzE;
    private final Long zzF;
    private final Object zza;
    private volatile int zzb;
    private final String zzc;
    private final Handler zzd;
    private volatile zzn zze;
    private Context zzf;
    private zzch zzg;
    private volatile com.google.android.gms.internal.play_billing.zzan zzh;
    private volatile zzba zzi;
    private boolean zzj;
    private boolean zzk;
    private int zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private boolean zzy;
    private boolean zzz;

    private void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, zzb zzbVar, String str, zzch zzchVar) {
        this.zzf = context.getApplicationContext();
        zzks zzksVarZzc = zzku.zzc();
        zzksVarZzc.zzo(str);
        zzksVarZzc.zzn(this.zzf.getPackageName());
        zzksVarZzc.zzm(this.zzF.longValue());
        if (zzchVar != null) {
            this.zzg = zzchVar;
        } else {
            this.zzg = new zzcl(this.zzf, (zzku) zzksVarZzc.zzf());
        }
        if (purchasesUpdatedListener == null) {
            zze.zzl("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zze = new zzn(this.zzf, purchasesUpdatedListener, null, zzbVar, null, this.zzg);
        this.zzB = pendingPurchasesParams;
        this.zzC = zzbVar != null;
        this.zzf.getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Future zzE(Callable callable, long j, final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future futureSubmit = executorService.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzaf
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    zze.zzl("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j * 0.95d));
            return futureSubmit;
        } catch (Exception e) {
            zze.zzm("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingResult zzaA() {
        int[] iArr = {0, 3};
        synchronized (this.zza) {
            for (int i = 0; i < 2; i++) {
                if (this.zzb == iArr[i]) {
                    return zzcj.zzm;
                }
            }
            return zzcj.zzk;
        }
    }

    private final String zzaB(QueryProductDetailsParams queryProductDetailsParams) {
        if (TextUtils.isEmpty(null)) {
            return this.zzf.getPackageName();
        }
        return null;
    }

    private static String zzaC() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return "7.1.1";
        }
    }

    private final synchronized ExecutorService zzaD() {
        try {
            if (this.zzD == null) {
                this.zzD = Executors.newFixedThreadPool(zze.zza, new zzas(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzD;
    }

    /* JADX WARN: Finally extract failed */
    private final void zzaE(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) throws Throwable {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        int iZza;
        String strZzh;
        String purchaseToken = consumeParams.getPurchaseToken();
        try {
            zze.zzk("BillingClient", "Consuming purchase with token: " + purchaseToken);
            synchronized (this.zza) {
                try {
                    try {
                        zzanVar = this.zzh;
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                } catch (DeadObjectException e) {
                    e = e;
                    zzaW(consumeResponseListener, purchaseToken, zzcj.zzm, 29, "Error consuming purchase!", e);
                    return;
                } catch (Exception e2) {
                    e = e2;
                    zzaW(consumeResponseListener, purchaseToken, zzcj.zzk, 29, "Error consuming purchase!", e);
                    return;
                }
            }
            if (zzanVar == null) {
                try {
                    zzaW(consumeResponseListener, purchaseToken, zzcj.zzm, 119, "Service has been reset to null.", null);
                    return;
                } catch (DeadObjectException e3) {
                    e = e3;
                    zzaW(consumeResponseListener, purchaseToken, zzcj.zzm, 29, "Error consuming purchase!", e);
                    return;
                } catch (Exception e4) {
                    e = e4;
                    zzaW(consumeResponseListener, purchaseToken, zzcj.zzk, 29, "Error consuming purchase!", e);
                    return;
                }
            }
            if (this.zzo) {
                String packageName = this.zzf.getPackageName();
                boolean z = this.zzo;
                String str = this.zzc;
                long jLongValue = this.zzF.longValue();
                Bundle bundle = new Bundle();
                if (z) {
                    zze.zzc(bundle, str, jLongValue);
                }
                Bundle bundleZze = zzanVar.zze(9, packageName, purchaseToken, bundle);
                iZza = bundleZze.getInt("RESPONSE_CODE");
                strZzh = zze.zzh(bundleZze, "BillingClient");
            } else {
                iZza = zzanVar.zza(3, this.zzf.getPackageName(), purchaseToken);
                strZzh = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            BillingResult billingResultZza = zzcj.zza(iZza, strZzh);
            if (iZza == 0) {
                zze.zzk("BillingClient", "Successfully consumed purchase.");
                consumeResponseListener.onConsumeResponse(billingResultZza, purchaseToken);
            } else {
                zzaW(consumeResponseListener, purchaseToken, billingResultZza, 23, "Error consuming purchase with token. Response code: " + iZza, null);
            }
        } catch (DeadObjectException e5) {
            e = e5;
        } catch (Exception e6) {
            e = e6;
        }
    }

    private final void zzaF(zzjz zzjzVar) {
        try {
            this.zzg.zzb(zzjzVar, this.zzl);
        } catch (Throwable th) {
            zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzaG(zzkd zzkdVar) {
        try {
            this.zzg.zzd(zzkdVar, this.zzl);
        } catch (Throwable th) {
            zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzaI(String str, final PurchasesResponseListener purchasesResponseListener) {
        if (!isReady()) {
            BillingResult billingResult = zzcj.zzm;
            zzbe(2, 9, billingResult);
            purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzco.zzl());
        } else {
            if (TextUtils.isEmpty(str)) {
                zze.zzl("BillingClient", "Please provide a valid product type.");
                BillingResult billingResult2 = zzcj.zzh;
                zzbe(50, 9, billingResult2);
                purchasesResponseListener.onQueryPurchasesResponse(billingResult2, com.google.android.gms.internal.play_billing.zzco.zzl());
                return;
            }
            if (zzE(new zzat(this, str, purchasesResponseListener), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzac
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzal(purchasesResponseListener);
                }
            }, zzax(), zzaD()) == null) {
                BillingResult billingResultZzaA = zzaA();
                zzbe(25, 9, billingResultZzaA);
                purchasesResponseListener.onQueryPurchasesResponse(billingResultZzaA, com.google.android.gms.internal.play_billing.zzco.zzl());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaJ(int i) {
        synchronized (this.zza) {
            try {
                if (this.zzb == 3) {
                    return;
                }
                zze.zzk("BillingClient", "Setting clientState from " + zzaN(this.zzb) + " to " + zzaN(i));
                this.zzb = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void zzaL() {
        synchronized (this.zza) {
            if (this.zzi != null) {
                try {
                    this.zzf.unbindService(this.zzi);
                } catch (Throwable th) {
                    try {
                        zze.zzm("BillingClient", "There was an exception while unbinding service!", th);
                        this.zzh = null;
                        this.zzi = null;
                    } finally {
                        this.zzh = null;
                        this.zzi = null;
                    }
                }
            }
        }
    }

    private final boolean zzaM() {
        return this.zzw && this.zzB.isEnabledForPrepaidPlans();
    }

    private static final String zzaN(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED";
    }

    private final zzbj zzaO(BillingResult billingResult, int i, String str, Exception exc) {
        zze.zzm("BillingClient", str, exc);
        zzbf(i, 7, billingResult, zzcg.zza(exc));
        return new zzbj(billingResult.getResponseCode(), billingResult.getDebugMessage(), new ArrayList());
    }

    private final zzcv zzaQ(int i, BillingResult billingResult, int i2, String str, Exception exc) {
        zzbf(i2, 9, billingResult, zzcg.zza(exc));
        zze.zzm("BillingClient", str, exc);
        return new zzcv(billingResult, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzcv zzaR(String str, int i) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        BillingClientImpl billingClientImpl = this;
        zze.zzk("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        Bundle bundleZzd = zze.zzd(billingClientImpl.zzo, billingClientImpl.zzw, billingClientImpl.zzB.isEnabledForOneTimeProducts(), billingClientImpl.zzB.isEnabledForPrepaidPlans(), billingClientImpl.zzc, billingClientImpl.zzF.longValue());
        String string = null;
        do {
            try {
                synchronized (billingClientImpl.zza) {
                    zzanVar = billingClientImpl.zzh;
                }
                if (zzanVar == null) {
                    return billingClientImpl.zzaQ(9, zzcj.zzm, 119, "Service has been reset to null", null);
                }
                Bundle bundleZzj = billingClientImpl.zzo ? zzanVar.zzj(true != billingClientImpl.zzw ? 9 : 19, billingClientImpl.zzf.getPackageName(), str, string, bundleZzd) : zzanVar.zzi(3, billingClientImpl.zzf.getPackageName(), str, string);
                zzcx zzcxVarZza = zzcy.zza(bundleZzj, "BillingClient", "getPurchase()");
                BillingResult billingResultZza = zzcxVarZza.zza();
                if (billingResultZza != zzcj.zzl) {
                    return billingClientImpl.zzaQ(9, billingResultZza, zzcxVarZza.zzb(), "Purchase bundle invalid", null);
                }
                ArrayList<String> stringArrayList = bundleZzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundleZzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundleZzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                boolean z = false;
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    String str2 = stringArrayList2.get(i2);
                    String str3 = stringArrayList3.get(i2);
                    zze.zzk("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i2))));
                    try {
                        Purchase purchase = new Purchase(str2, str3);
                        if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                            zze.zzl("BillingClient", "BUG: empty/null token!");
                            z = true;
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e) {
                        return zzaQ(9, zzcj.zzk, 51, "Got an exception trying to decode the purchase!", e);
                    }
                }
                billingClientImpl = this;
                if (z) {
                    billingClientImpl.zzbe(26, 9, zzcj.zzk);
                }
                string = bundleZzj.getString("INAPP_CONTINUATION_TOKEN");
                zze.zzk("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
            } catch (DeadObjectException e2) {
                return zzaQ(9, zzcj.zzm, 52, "Got exception trying to get purchases try to reconnect", e2);
            } catch (Exception e3) {
                return billingClientImpl.zzaQ(9, zzcj.zzk, 52, "Got exception trying to get purchases try to reconnect", e3);
            }
        } while (!TextUtils.isEmpty(string));
        return new zzcv(zzcj.zzl, arrayList);
    }

    private final void zzaW(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, int i, String str2, Exception exc) {
        zze.zzm("BillingClient", str2, exc);
        zzbf(i, 4, billingResult, zzcg.zza(exc));
        consumeResponseListener.onConsumeResponse(billingResult, str);
    }

    static /* bridge */ /* synthetic */ boolean zzaq(BillingClientImpl billingClientImpl) {
        boolean z;
        synchronized (billingClientImpl.zza) {
            z = true;
            if (billingClientImpl.zzb != 1) {
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler zzax() {
        return Looper.myLooper() == null ? this.zzd : new Handler(Looper.myLooper());
    }

    private final BillingResult zzaz() {
        zze.zzk("BillingClient", "Service connection is valid. No need to re-initialize.");
        zzkb zzkbVarZzc = zzkd.zzc();
        zzkbVarZzc.zzn(6);
        zzlv zzlvVarZzc = zzlx.zzc();
        zzlvVarZzc.zza(true);
        zzkbVarZzc.zzm(zzlvVarZzc);
        zzaG((zzkd) zzkbVarZzc.zzf());
        return zzcj.zzl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzbe(int i, int i2, BillingResult billingResult) {
        try {
            zzaF(zzcg.zzb(i, i2, billingResult));
        } catch (Throwable th) {
            zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbf(int i, int i2, BillingResult billingResult, String str) {
        try {
            zzaF(zzcg.zzc(i, i2, billingResult, str));
        } catch (Throwable th) {
            zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzbg(int i) {
        try {
            zzaG(zzcg.zzd(i));
        } catch (Throwable th) {
            zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (!isReady()) {
            BillingResult billingResult = zzcj.zzm;
            zzbe(2, 4, billingResult);
            consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
        } else if (zzE(new Callable() { // from class: com.android.billingclient.api.zzag
            @Override // java.util.concurrent.Callable
            public final Object call() throws Throwable {
                this.zza.zzt(consumeParams, consumeResponseListener);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzah
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzad(consumeResponseListener, consumeParams);
            }
        }, zzax(), zzaD()) == null) {
            BillingResult billingResultZzaA = zzaA();
            zzbe(25, 4, billingResultZzaA);
            consumeResponseListener.onConsumeResponse(billingResultZzaA, consumeParams.getPurchaseToken());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean isReady() {
        boolean z;
        synchronized (this.zza) {
            try {
                z = false;
                if (this.zzb == 2 && this.zzh != null && this.zzi != null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.android.billingclient.api.BillingClient
    public BillingResult launchBillingFlow(Activity activity, final BillingFlowParams billingFlowParams) {
        String str;
        String str2;
        Future futureZzE;
        int iZza;
        String string;
        String str3;
        boolean z;
        String str4;
        BillingFlowParams.ProductDetailsParams productDetailsParams;
        boolean z2;
        String str5;
        int i;
        final int i2;
        if (this.zze == null || this.zze.zzd() == null) {
            BillingResult billingResult = zzcj.zzF;
            zzbe(12, 2, billingResult);
            return billingResult;
        }
        if (!isReady()) {
            BillingResult billingResult2 = zzcj.zzm;
            zzbe(2, 2, billingResult2);
            zzm(billingResult2);
            return billingResult2;
        }
        ArrayList arrayListZzg = billingFlowParams.zzg();
        List listZzh = billingFlowParams.zzh();
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(com.google.android.gms.internal.play_billing.zzcx.zza(arrayListZzg, null));
        BillingFlowParams.ProductDetailsParams productDetailsParams2 = (BillingFlowParams.ProductDetailsParams) com.google.android.gms.internal.play_billing.zzcx.zza(listZzh, null);
        final String productId = productDetailsParams2.zza().getProductId();
        final String productType = productDetailsParams2.zza().getProductType();
        if (productType.equals("subs") && !this.zzj) {
            zze.zzl("BillingClient", "Current client doesn't support subscriptions.");
            BillingResult billingResult3 = zzcj.zzo;
            zzbe(9, 2, billingResult3);
            zzm(billingResult3);
            return billingResult3;
        }
        if (billingFlowParams.zzq() && !this.zzm) {
            zze.zzl("BillingClient", "Current client doesn't support extra params for buy intent.");
            BillingResult billingResult4 = zzcj.zzi;
            zzbe(18, 2, billingResult4);
            zzm(billingResult4);
            return billingResult4;
        }
        if (arrayListZzg.size() > 1 && !this.zzt) {
            zze.zzl("BillingClient", "Current client doesn't support multi-item purchases.");
            BillingResult billingResult5 = zzcj.zzt;
            zzbe(19, 2, billingResult5);
            zzm(billingResult5);
            return billingResult5;
        }
        if (!listZzh.isEmpty() && !this.zzu) {
            zze.zzl("BillingClient", "Current client doesn't support purchases with ProductDetails.");
            BillingResult billingResult6 = zzcj.zzv;
            zzbe(20, 2, billingResult6);
            zzm(billingResult6);
            return billingResult6;
        }
        BillingResult billingResultZzb = billingFlowParams.zzb();
        if (billingResultZzb != zzcj.zzl) {
            zzbe(120, 2, billingResultZzb);
            zzm(billingResultZzb);
            return billingResultZzb;
        }
        if (this.zzm) {
            boolean z3 = this.zzo;
            boolean z4 = this.zzw;
            boolean zIsEnabledForOneTimeProducts = this.zzB.isEnabledForOneTimeProducts();
            boolean zIsEnabledForPrepaidPlans = this.zzB.isEnabledForPrepaidPlans();
            boolean z5 = this.zzC;
            String str6 = this.zzc;
            long jLongValue = this.zzF.longValue();
            final String packageName = this.zzf.getPackageName();
            final Bundle bundle = new Bundle();
            zze.zzc(bundle, str6, jLongValue);
            if (billingFlowParams.zza() != 0) {
                bundle.putInt("prorationMode", billingFlowParams.zza());
            }
            if (!TextUtils.isEmpty(billingFlowParams.zzc())) {
                bundle.putString("accountId", billingFlowParams.zzc());
            }
            if (!TextUtils.isEmpty(billingFlowParams.zzd())) {
                bundle.putString("obfuscatedProfileId", billingFlowParams.zzd());
            }
            if (billingFlowParams.zzp()) {
                bundle.putBoolean("isOfferPersonalizedByDeveloper", true);
            }
            if (!TextUtils.isEmpty(null)) {
                bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(null)));
            }
            if (!TextUtils.isEmpty(billingFlowParams.zze())) {
                bundle.putString("oldSkuPurchaseToken", billingFlowParams.zze());
            }
            if (TextUtils.isEmpty(null)) {
                str3 = null;
            } else {
                str3 = null;
                bundle.putString("oldSkuPurchaseId", null);
            }
            if (!TextUtils.isEmpty(billingFlowParams.zzf())) {
                bundle.putString("originalExternalTransactionId", billingFlowParams.zzf());
            }
            if (!TextUtils.isEmpty(str3)) {
                bundle.putString("paymentsPurchaseParams", str3);
            }
            if (z3 && zIsEnabledForOneTimeProducts) {
                z = true;
                bundle.putBoolean("enablePendingPurchases", true);
            } else {
                z = true;
            }
            if (z4 && zIsEnabledForPrepaidPlans) {
                bundle.putBoolean("enablePendingPurchaseForSubscriptions", z);
            }
            if (z5) {
                bundle.putBoolean("enableAlternativeBilling", z);
            }
            if (Collection.EL.stream(billingFlowParams.zzh()).anyMatch(new Predicate() { // from class: com.google.android.gms.internal.play_billing.zza
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Predicate$CC.$default$and(this, predicate);
                }

                public /* synthetic */ Predicate negate() {
                    return Predicate$CC.$default$negate(this);
                }

                /* JADX INFO: renamed from: or */
                public /* synthetic */ Predicate m356or(Predicate predicate) {
                    return Predicate$CC.$default$or(this, predicate);
                }

                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    int i3 = zze.zza;
                    return false;
                }
            })) {
                zzfm zzfmVarZza = zzfn.zza();
                zzfmVarZza.zza((Iterable) Collection.EL.stream(billingFlowParams.zzh()).filter(new Predicate() { // from class: com.google.android.gms.internal.play_billing.zzb
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        return Predicate$CC.$default$and(this, predicate);
                    }

                    public /* synthetic */ Predicate negate() {
                        return Predicate$CC.$default$negate(this);
                    }

                    /* JADX INFO: renamed from: or */
                    public /* synthetic */ Predicate m357or(Predicate predicate) {
                        return Predicate$CC.$default$or(this, predicate);
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        int i3 = zze.zza;
                        return false;
                    }
                }).map(new Function() { // from class: com.google.android.gms.internal.play_billing.zzc
                    public /* synthetic */ Function andThen(Function function) {
                        return Function$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        int i3 = zze.zza;
                        String productId2 = ((BillingFlowParams.ProductDetailsParams) obj).zza().getProductId();
                        zzfk zzfkVarZza = zzfl.zza();
                        zzfp zzfpVarZza = zzfq.zza();
                        zzfpVarZza.zza("subs:" + packageName + ":" + productId2);
                        zzfkVarZza.zza(zzfpVarZza);
                        zzfq.zza();
                        throw null;
                    }

                    public /* synthetic */ Function compose(Function function) {
                        return Function$CC.$default$compose(this, function);
                    }
                }).collect(com.google.android.gms.internal.play_billing.zzco.zzo()));
                bundle.putByteArray("subscriptionProductReplacementParamsList", ((zzfn) zzfmVarZza.zzf()).zzh());
            }
            if (arrayListZzg.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>(listZzh.size() - 1);
                ArrayList<String> arrayList2 = new ArrayList<>(listZzh.size() - 1);
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                str = "BUY_INTENT";
                ArrayList<Integer> arrayList6 = new ArrayList<>();
                str4 = "proxyPackageVersion";
                for (int i3 = 0; i3 < listZzh.size(); i3++) {
                    BillingFlowParams.ProductDetailsParams productDetailsParams3 = (BillingFlowParams.ProductDetailsParams) listZzh.get(i3);
                    ProductDetails productDetailsZza = productDetailsParams3.zza();
                    if (productDetailsZza.zzb().isEmpty()) {
                        productDetailsParams = productDetailsParams3;
                    } else {
                        productDetailsParams = productDetailsParams3;
                        arrayList3.add(productDetailsZza.zzb());
                    }
                    arrayList4.add(productDetailsParams.zzb());
                    String strZzc = productDetailsZza.zzc();
                    if (productDetailsZza.zzd() != null && !productDetailsZza.zzd().isEmpty()) {
                        Iterator it = productDetailsZza.zzd().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = (ProductDetails.OneTimePurchaseOfferDetails) it.next();
                            if (!TextUtils.isEmpty(oneTimePurchaseOfferDetails.zzc())) {
                                strZzc = oneTimePurchaseOfferDetails.zzc();
                                break;
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(strZzc)) {
                        arrayList5.add(strZzc);
                    }
                    if (i3 > 0) {
                        arrayList.add(((BillingFlowParams.ProductDetailsParams) listZzh.get(i3)).zza().getProductId());
                        arrayList2.add(((BillingFlowParams.ProductDetailsParams) listZzh.get(i3)).zza().getProductType());
                    }
                }
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                bundle.putIntegerArrayList("AUTO_PAY_BALANCE_THRESHOLD_LIST", arrayList6);
                if (!arrayList3.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList3);
                }
                if (!arrayList5.isEmpty()) {
                    bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (!arrayList.isEmpty()) {
                    bundle.putStringArrayList("additionalSkus", arrayList);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList2);
                }
            } else {
                ArrayList<String> arrayList7 = new ArrayList<>();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                Iterator it2 = arrayListZzg.iterator();
                if (it2.hasNext()) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it2.next());
                    throw null;
                }
                if (!arrayList7.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList7);
                }
                if (arrayListZzg.size() > 1) {
                    ArrayList<String> arrayList8 = new ArrayList<>(arrayListZzg.size() - 1);
                    ArrayList<String> arrayList9 = new ArrayList<>(arrayListZzg.size() - 1);
                    if (1 < arrayListZzg.size()) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(arrayListZzg.get(1));
                        throw null;
                    }
                    bundle.putStringArrayList("additionalSkus", arrayList8);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList9);
                }
                str4 = "proxyPackageVersion";
                str = "BUY_INTENT";
            }
            if (bundle.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.zzr) {
                BillingResult billingResult7 = zzcj.zzu;
                zzbe(21, 2, billingResult7);
                zzm(billingResult7);
                return billingResult7;
            }
            if (productDetailsParams2 == null || TextUtils.isEmpty(productDetailsParams2.zza().zza())) {
                z2 = false;
            } else {
                bundle.putString("skuPackageName", productDetailsParams2.zza().zza());
                z2 = true;
            }
            str2 = null;
            if (!TextUtils.isEmpty(null)) {
                bundle.putString("accountName", null);
            }
            Intent intent = activity.getIntent();
            if (intent == null) {
                zze.zzl("BillingClient", "Activity's intent is null.");
            } else if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                bundle.putString("proxyPackage", stringExtra);
                try {
                    str5 = str4;
                    try {
                        bundle.putString(str5, this.zzf.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                    } catch (PackageManager.NameNotFoundException unused) {
                        bundle.putString(str5, "package not found");
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    str5 = str4;
                }
            }
            if (this.zzu && !listZzh.isEmpty()) {
                i = 17;
            } else if (this.zzs && z2) {
                i = 15;
            } else if (this.zzo) {
                i2 = 9;
                futureZzE = zzE(new Callable() { // from class: com.android.billingclient.api.zzar
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zza.zzd(i2, productId, productType, billingFlowParams, bundle);
                    }
                }, 5000L, null, this.zzd, zzaD());
            } else {
                i = 6;
            }
            i2 = i;
            futureZzE = zzE(new Callable() { // from class: com.android.billingclient.api.zzar
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zzd(i2, productId, productType, billingFlowParams, bundle);
                }
            }, 5000L, null, this.zzd, zzaD());
        } else {
            str = "BUY_INTENT";
            str2 = null;
            futureZzE = zzE(new Callable() { // from class: com.android.billingclient.api.zzq
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zze(productId, productType);
                }
            }, 5000L, null, this.zzd, zzaD());
        }
        try {
            if (futureZzE == null) {
                BillingResult billingResult8 = zzcj.zzd;
                zzbe(25, 2, billingResult8);
                zzm(billingResult8);
                return billingResult8;
            }
            Bundle bundle2 = (Bundle) futureZzE.get(5000L, TimeUnit.MILLISECONDS);
            int iZzb = zze.zzb(bundle2, "BillingClient");
            String strZzh = zze.zzh(bundle2, "BillingClient");
            if (iZzb == 0) {
                Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                String str7 = str;
                intent2.putExtra(str7, (PendingIntent) bundle2.getParcelable(str7));
                activity.startActivity(intent2);
                return zzcj.zzl;
            }
            zze.zzl("BillingClient", "Unable to buy item, Error response code: " + iZzb);
            BillingResult billingResultZza = zzcj.zza(iZzb, strZzh);
            if (bundle2 == null) {
                iZza = 1;
            } else {
                try {
                    Object obj = bundle2.get("LOG_REASON");
                    if (obj != null) {
                        if (obj instanceof Integer) {
                            iZza = zzkg.zza(((Integer) obj).intValue());
                        } else {
                            zze.zzl("BillingClient", "Unexpected type for bundle log reason: " + obj.getClass().getName());
                        }
                    }
                } catch (Throwable th) {
                    zze.zzl("BillingClient", "Failed to get log reason from bundle: ".concat(String.valueOf(th.getMessage())));
                }
                iZza = 1;
            }
            if (iZza == 1) {
                iZza = 23;
            }
            if (bundle2 == null) {
                string = str2;
            } else {
                try {
                    string = bundle2.getString("ADDITIONAL_LOG_DETAILS");
                } catch (Throwable th2) {
                    zze.zzl("BillingClient", "Failed to get additional log details from bundle: ".concat(String.valueOf(th2.getMessage())));
                    string = str2;
                }
            }
            zzbf(iZza, 2, billingResultZza, string);
            zzm(billingResultZza);
            return billingResultZza;
        } catch (CancellationException e) {
            e = e;
            zze.zzm("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
            BillingResult billingResult9 = zzcj.zzn;
            zzbf(4, 2, billingResult9, zzcg.zza(e));
            zzm(billingResult9);
            return billingResult9;
        } catch (TimeoutException e2) {
            e = e2;
            zze.zzm("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
            BillingResult billingResult92 = zzcj.zzn;
            zzbf(4, 2, billingResult92, zzcg.zza(e));
            zzm(billingResult92);
            return billingResult92;
        } catch (Exception e3) {
            zze.zzm("BillingClient", "Exception while launching billing flow. Try to reconnect", e3);
            BillingResult billingResult10 = zzcj.zzm;
            zzbf(5, 2, billingResult10, zzcg.zza(e3));
            zzm(billingResult10);
            return billingResult10;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (!isReady()) {
            BillingResult billingResult = zzcj.zzm;
            zzbe(2, 7, billingResult);
            productDetailsResponseListener.onProductDetailsResponse(billingResult, new ArrayList());
        } else {
            if (!this.zzu) {
                zze.zzl("BillingClient", "Querying product details is not supported.");
                BillingResult billingResult2 = zzcj.zzv;
                zzbe(20, 7, billingResult2);
                productDetailsResponseListener.onProductDetailsResponse(billingResult2, new ArrayList());
                return;
            }
            if (zzE(new Callable() { // from class: com.android.billingclient.api.zzam
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzbj zzbjVarZzh = this.zza.zzh(queryProductDetailsParams);
                    productDetailsResponseListener.onProductDetailsResponse(zzcj.zza(zzbjVarZzh.zza(), zzbjVarZzh.zzb()), zzbjVarZzh.zzc());
                    return null;
                }
            }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzan
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzaj(productDetailsResponseListener);
                }
            }, zzax(), zzaD()) == null) {
                BillingResult billingResultZzaA = zzaA();
                zzbe(25, 7, billingResultZzaA);
                productDetailsResponseListener.onProductDetailsResponse(billingResultZzaA, new ArrayList());
            }
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener) {
        zzaI(queryPurchasesParams.zza(), purchasesResponseListener);
    }

    final /* synthetic */ void zzac(BillingResult billingResult) {
        if (this.zze.zzd() != null) {
            this.zze.zzd().onPurchasesUpdated(billingResult, null);
        } else {
            zze.zzl("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    final /* synthetic */ void zzad(ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        BillingResult billingResult = zzcj.zzn;
        zzbe(24, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
    }

    final /* synthetic */ void zzaj(ProductDetailsResponseListener productDetailsResponseListener) {
        BillingResult billingResult = zzcj.zzn;
        zzbe(24, 7, billingResult);
        productDetailsResponseListener.onProductDetailsResponse(billingResult, new ArrayList());
    }

    final /* synthetic */ void zzal(PurchasesResponseListener purchasesResponseListener) {
        BillingResult billingResult = zzcj.zzn;
        zzbe(24, 9, billingResult);
        purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzco.zzl());
    }

    final /* synthetic */ Bundle zzd(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.zza) {
                zzanVar = this.zzh;
            }
            return zzanVar == null ? zze.zzn(zzcj.zzm, 119) : zzanVar.zzg(i, this.zzf.getPackageName(), str, str2, null, bundle);
        } catch (DeadObjectException e) {
            return zze.zzo(zzcj.zzm, 5, zzcg.zza(e));
        } catch (Exception e2) {
            return zze.zzo(zzcj.zzk, 5, zzcg.zza(e2));
        }
    }

    final /* synthetic */ Bundle zze(String str, String str2) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        try {
            synchronized (this.zza) {
                zzanVar = this.zzh;
            }
            return zzanVar == null ? zze.zzn(zzcj.zzm, 119) : zzanVar.zzf(3, this.zzf.getPackageName(), str, str2, null);
        } catch (DeadObjectException e) {
            return zze.zzo(zzcj.zzm, 5, zzcg.zza(e));
        } catch (Exception e2) {
            return zze.zzo(zzcj.zzk, 5, zzcg.zza(e2));
        }
    }

    final zzbj zzh(QueryProductDetailsParams queryProductDetailsParams) {
        com.google.android.gms.internal.play_billing.zzan zzanVar;
        ArrayList arrayList = new ArrayList();
        String strZzb = queryProductDetailsParams.zzb();
        com.google.android.gms.internal.play_billing.zzco zzcoVarZza = queryProductDetailsParams.zza();
        int size = zzcoVarZza.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList arrayList2 = new ArrayList(zzcoVarZza.subList(i, i2 > size ? size : i2));
            ArrayList<String> arrayList3 = new ArrayList<>();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList3.add(((QueryProductDetailsParams.Product) arrayList2.get(i3)).zza());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList3);
            bundle.putString("playBillingLibraryVersion", this.zzc);
            try {
                synchronized (this.zza) {
                    zzanVar = this.zzh;
                }
                if (zzanVar == null) {
                    return zzaO(zzcj.zzm, 119, "Service has been reset to null.", null);
                }
                boolean z = true;
                int i4 = true != this.zzx ? 17 : 20;
                String packageName = this.zzf.getPackageName();
                boolean zZzaM = zzaM();
                String str = this.zzc;
                zzaB(queryProductDetailsParams);
                zzaB(queryProductDetailsParams);
                zzaB(queryProductDetailsParams);
                zzaB(queryProductDetailsParams);
                long jLongValue = this.zzF.longValue();
                Bundle bundle2 = new Bundle();
                zze.zzc(bundle2, str, jLongValue);
                bundle2.putBoolean("enablePendingPurchases", true);
                bundle2.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
                if (zZzaM) {
                    bundle2.putBoolean("enablePendingPurchaseForSubscriptions", true);
                }
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                int size3 = arrayList2.size();
                int i5 = 0;
                boolean z2 = false;
                boolean z3 = false;
                while (i5 < size3) {
                    QueryProductDetailsParams.Product product = (QueryProductDetailsParams.Product) arrayList2.get(i5);
                    boolean z4 = z;
                    arrayList4.add(null);
                    z2 |= !TextUtils.isEmpty(null);
                    String strZzb2 = product.zzb();
                    com.google.android.gms.internal.play_billing.zzan zzanVar2 = zzanVar;
                    if (strZzb2.equals("first_party")) {
                        zzbe.zzc(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                        arrayList5.add(null);
                        z3 = z4;
                    }
                    i5++;
                    zzanVar = zzanVar2;
                    z = z4;
                }
                com.google.android.gms.internal.play_billing.zzan zzanVar3 = zzanVar;
                if (z2) {
                    bundle2.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                }
                if (!arrayList5.isEmpty()) {
                    bundle2.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (z3 && !TextUtils.isEmpty(null)) {
                    bundle2.putString("accountName", null);
                }
                Bundle bundleZzl = zzanVar3.zzl(i4, packageName, strZzb, bundle, bundle2);
                if (bundleZzl == null) {
                    return zzaO(zzcj.zzC, 44, "queryProductDetailsAsync got empty product details response.", null);
                }
                if (!bundleZzl.containsKey("DETAILS_LIST")) {
                    int iZzb = zze.zzb(bundleZzl, "BillingClient");
                    String strZzh = zze.zzh(bundleZzl, "BillingClient");
                    if (iZzb == 0) {
                        return zzaO(zzcj.zza(6, strZzh), 45, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                    }
                    return zzaO(zzcj.zza(iZzb, strZzh), 23, "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + iZzb, null);
                }
                ArrayList<String> stringArrayList = bundleZzl.getStringArrayList("DETAILS_LIST");
                if (stringArrayList == null) {
                    return zzaO(zzcj.zzC, 46, "queryProductDetailsAsync got null response list", null);
                }
                for (int i6 = 0; i6 < stringArrayList.size(); i6++) {
                    try {
                        ProductDetails productDetails = new ProductDetails(stringArrayList.get(i6));
                        zze.zzk("BillingClient", "Got product details: ".concat(productDetails.toString()));
                        arrayList.add(productDetails);
                    } catch (JSONException e) {
                        return zzaO(zzcj.zza(6, "Error trying to decode SkuDetails."), 47, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e);
                    }
                }
                i = i2;
            } catch (DeadObjectException e2) {
                return zzaO(zzcj.zzm, 43, "queryProductDetailsAsync got a remote exception (try to reconnect).", e2);
            } catch (Exception e3) {
                return zzaO(zzcj.zzk, 43, "queryProductDetailsAsync got a remote exception (try to reconnect).", e3);
            }
        }
        return new zzbj(0, _UrlKt.FRAGMENT_ENCODE_SET, arrayList);
    }

    final zzch zzk() {
        return this.zzg;
    }

    final BillingResult zzm(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.zzd.post(new Runnable() { // from class: com.android.billingclient.api.zzp
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzac(billingResult);
            }
        });
        return billingResult;
    }

    final synchronized zzev zzp() {
        try {
            if (this.zzE == null) {
                this.zzE = zzfb.zza(zzaD());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzE;
    }

    final /* synthetic */ Object zzt(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) throws Throwable {
        zzaE(consumeParams, consumeResponseListener);
        return null;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void startConnection(BillingClientStateListener billingClientStateListener) {
        BillingResult billingResultZzaz;
        synchronized (this.zza) {
            try {
                if (isReady()) {
                    billingResultZzaz = zzaz();
                } else if (this.zzb == 1) {
                    zze.zzl("BillingClient", "Client is already in the process of connecting to billing service.");
                    billingResultZzaz = zzcj.zze;
                    zzbe(37, 6, billingResultZzaz);
                } else if (this.zzb == 3) {
                    zze.zzl("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                    billingResultZzaz = zzcj.zzm;
                    zzbe(38, 6, billingResultZzaz);
                } else {
                    zzaJ(1);
                    zzaL();
                    zze.zzk("BillingClient", "Starting in-app billing setup.");
                    this.zzi = new zzba(this, billingClientStateListener, null);
                    Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                    intent.setPackage("com.android.vending");
                    List<ResolveInfo> listQueryIntentServices = this.zzf.getPackageManager().queryIntentServices(intent, 0);
                    int i = 41;
                    if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                        zzaJ(0);
                        zze.zzk("BillingClient", "Billing service unavailable on device.");
                        billingResultZzaz = zzcj.zzc;
                        zzbe(i, 6, billingResultZzaz);
                    } else {
                        ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
                        i = 40;
                        if (serviceInfo != null) {
                            String str = serviceInfo.packageName;
                            String str2 = serviceInfo.name;
                            if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                                zze.zzl("BillingClient", "The device doesn't have valid Play Store.");
                            } else {
                                ComponentName componentName = new ComponentName(str, str2);
                                Intent intent2 = new Intent(intent);
                                intent2.setComponent(componentName);
                                intent2.putExtra("playBillingLibraryVersion", this.zzc);
                                synchronized (this.zza) {
                                    try {
                                        if (this.zzb == 2) {
                                            billingResultZzaz = zzaz();
                                        } else if (this.zzb != 1) {
                                            zze.zzl("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                            billingResultZzaz = zzcj.zzm;
                                            zzbe(117, 6, billingResultZzaz);
                                        } else {
                                            zzba zzbaVar = this.zzi;
                                            if (this.zzf.bindService(intent2, zzbaVar, 1)) {
                                                zze.zzk("BillingClient", "Service was bonded successfully.");
                                                billingResultZzaz = null;
                                            } else {
                                                zze.zzl("BillingClient", "Connection to Billing service is blocked.");
                                                i = 39;
                                            }
                                        }
                                    } finally {
                                    }
                                }
                            }
                        } else {
                            zze.zzl("BillingClient", "The device doesn't have valid Play Store.");
                        }
                        zzaJ(0);
                        zze.zzk("BillingClient", "Billing service unavailable on device.");
                        billingResultZzaz = zzcj.zzc;
                        zzbe(i, 6, billingResultZzaz);
                    }
                }
            } finally {
            }
        }
        if (billingResultZzaz != null) {
            billingClientStateListener.onBillingSetupFinished(billingResultZzaz);
        }
    }

    BillingClientImpl(String str, Context context, zzch zzchVar, ExecutorService executorService) {
        this.zza = new Object();
        this.zzb = 0;
        this.zzd = new Handler(Looper.getMainLooper());
        this.zzl = 0;
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzF = lValueOf;
        String strZzaC = zzaC();
        this.zzc = strZzaC;
        this.zzf = context.getApplicationContext();
        zzks zzksVarZzc = zzku.zzc();
        zzksVarZzc.zzo(strZzaC);
        zzksVarZzc.zzn(this.zzf.getPackageName());
        zzksVarZzc.zzm(lValueOf.longValue());
        this.zzg = new zzcl(this.zzf, (zzku) zzksVarZzc.zzf());
        this.zzf.getPackageName();
    }

    BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzco zzcoVar, zzch zzchVar, ExecutorService executorService) {
        this.zza = new Object();
        this.zzb = 0;
        this.zzd = new Handler(Looper.getMainLooper());
        this.zzl = 0;
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzF = lValueOf;
        this.zzc = zzaC();
        this.zzf = context.getApplicationContext();
        zzks zzksVarZzc = zzku.zzc();
        zzksVarZzc.zzo(zzaC());
        zzksVarZzc.zzn(this.zzf.getPackageName());
        zzksVarZzc.zzm(lValueOf.longValue());
        this.zzg = new zzcl(this.zzf, (zzku) zzksVarZzc.zzf());
        zze.zzl("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.zze = new zzn(this.zzf, null, null, null, null, this.zzg);
        this.zzB = pendingPurchasesParams;
        this.zzf.getPackageName();
    }

    BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzb zzbVar, zzch zzchVar, ExecutorService executorService) {
        String strZzaC = zzaC();
        this.zza = new Object();
        this.zzb = 0;
        this.zzd = new Handler(Looper.getMainLooper());
        this.zzl = 0;
        this.zzF = Long.valueOf(new Random().nextLong());
        this.zzc = strZzaC;
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, null, strZzaC, null);
    }
}
