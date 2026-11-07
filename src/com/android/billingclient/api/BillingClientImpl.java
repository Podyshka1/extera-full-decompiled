package com.android.billingclient.api;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.text.TextUtils;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.internal.play_billing.zza;
import com.google.android.gms.internal.play_billing.zzaz;
import com.google.android.gms.internal.play_billing.zzbi;
import com.google.android.gms.internal.play_billing.zzbl;
import com.google.android.gms.internal.play_billing.zzc;
import com.google.android.gms.internal.play_billing.zzcz;
import com.google.android.gms.internal.play_billing.zzdj;
import com.google.android.gms.internal.play_billing.zzdk;
import com.google.android.gms.internal.play_billing.zzhv;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhz;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
import com.google.android.gms.internal.play_billing.zziq;
import com.google.android.gms.internal.play_billing.zzis;
import com.google.android.gms.internal.play_billing.zzjt;
import com.google.android.gms.internal.play_billing.zzjv;
import com.google.android.gms.internal.play_billing.zzp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.internal.url._UrlKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class BillingClientImpl extends BillingClient {
    private boolean zzA;
    private boolean zzB;
    private boolean zzC;
    private PendingPurchasesParams zzD;
    private boolean zzE;
    private boolean zzF;
    private volatile BillingClientStateListener zzG;
    private ExecutorService zzH;
    private final Long zzI;
    private zzbl zzJ;
    private final Object zza;
    private volatile int zzb;
    private final String zzc;
    private final String zzd;
    private final Handler zze;
    private volatile zzs zzf;
    private Context zzg;
    private zzch zzh;
    private volatile com.google.android.gms.internal.play_billing.zzam zzi;
    private volatile zzbf zzj;
    private boolean zzk;
    private boolean zzl;
    private int zzm;
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

    private void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, zzb zzbVar, String str, zzch zzchVar, BillingClient.Builder builder) {
        this.zzg = context.getApplicationContext();
        zziq zziqVarZzc = zzis.zzc();
        zziqVarZzc.zzs(str);
        String str2 = this.zzd;
        if (str2 != null) {
            zziqVarZzc.zzt(str2);
        }
        zziqVarZzc.zzq(this.zzg.getPackageName());
        zziqVarZzc.zzn(this.zzI.longValue());
        zziqVarZzc.zzr(builder.zza);
        zziqVarZzc.zza(Build.VERSION.SDK_INT);
        zziqVarZzc.zzp(772604006L);
        try {
            zziqVarZzc.zzl(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Error getting app version code.", th);
        }
        if (zzchVar != null) {
            this.zzh = zzchVar;
        } else {
            this.zzh = new zzcl(this.zzg, (zzis) zziqVarZzc.zze());
        }
        if (purchasesUpdatedListener == null) {
            zzc.zzn("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zzf = new zzs(this.zzg, purchasesUpdatedListener, null, zzbVar, null, this.zzh);
        this.zzD = pendingPurchasesParams;
        this.zzF = zzbVar != null;
        this.zzg.getPackageName();
        this.zzE = builder.zza;
    }

    public static Future zzG(Callable callable, long j, final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future futureSubmit = executorService.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzaj
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    zzc.zzn("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j * 0.95d));
            return futureSubmit;
        } catch (Exception e) {
            zzc.zzo("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    public static /* synthetic */ void zzH(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzcj.zzk;
        billingClientImpl.zzbd(zzieVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
    }

    public static /* synthetic */ void zzI(BillingClientImpl billingClientImpl, PurchasesResponseListener purchasesResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzcj.zzk;
        billingClientImpl.zzbd(zzieVar, 9, billingResult);
        purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzbt.zzk());
    }

    public static /* synthetic */ void zzN(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener) {
        zzie zzieVar = zzie.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzcj.zzk;
        billingClientImpl.zzbd(zzieVar, 7, billingResult);
        productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
    }

    public static /* synthetic */ void zzP(BillingClientImpl billingClientImpl, BillingResult billingResult) {
        PurchasesUpdatedListener purchasesUpdatedListenerZzd = billingClientImpl.zzf.zzd();
        zzs zzsVar = billingClientImpl.zzf;
        if (purchasesUpdatedListenerZzd != null) {
            zzsVar.zzd().onPurchasesUpdated(billingResult, null);
        } else {
            zzc.zzn("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.billingclient.api.BillingClientImpl] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.billingclient.api.BillingClientImpl] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.StringBuilder] */
    private final void zzaD(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) throws Throwable {
        ?? sb;
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        int iZza;
        String strZzj;
        String purchaseToken = consumeParams.getPurchaseToken();
        try {
            sb = new StringBuilder("Consuming purchase with token: ");
            sb.append(purchaseToken);
            zzc.zzm("BillingClient", sb.toString());
            synchronized (this.zza) {
                try {
                    try {
                        zzamVar = this.zzi;
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
                } catch (Exception e2) {
                    e = e2;
                    sb.zzaG(consumeResponseListener, purchaseToken, zzcj.zzh, zzie.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e);
                    return;
                }
            }
            if (zzamVar == null) {
                zzaG(consumeResponseListener, purchaseToken, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                return;
            }
            boolean z = this.zzp;
            Context context = this.zzg;
            if (z) {
                String packageName = context.getPackageName();
                boolean z2 = this.zzp;
                String str = this.zzc;
                String str2 = this.zzd;
                long jLongValue = this.zzI.longValue();
                Bundle bundle = new Bundle();
                if (z2) {
                    zzc.zzc(bundle, str, str2, jLongValue);
                }
                Bundle bundleZze = zzamVar.zze(9, packageName, purchaseToken, bundle);
                iZza = bundleZze.getInt("RESPONSE_CODE");
                strZzj = zzc.zzj(bundleZze, "BillingClient");
            } else {
                iZza = zzamVar.zza(3, context.getPackageName(), purchaseToken);
                strZzj = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            BillingResult billingResultZza = zzcj.zza(iZza, strZzj);
            if (iZza == 0) {
                zzc.zzm("BillingClient", "Successfully consumed purchase.");
                consumeResponseListener.onConsumeResponse(billingResultZza, purchaseToken);
                return;
            } else {
                zzaG(consumeResponseListener, purchaseToken, billingResultZza, zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY, "Error consuming purchase with token. Response code: " + iZza, null);
                return;
            }
        } catch (DeadObjectException e3) {
            e = e3;
            sb = this;
        } catch (Exception e4) {
            e = e4;
            sb = this;
        }
        sb.zzaG(consumeResponseListener, purchaseToken, zzcj.zzj, zzie.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e);
    }

    private final void zzaG(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, zzie zzieVar, String str2, Exception exc) {
        zzc.zzo("BillingClient", str2, exc);
        zzbf(zzieVar, 4, billingResult, zzcg.zza(exc));
        consumeResponseListener.onConsumeResponse(billingResult, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaO(zzhx zzhxVar) {
        try {
            this.zzh.zzb(zzhxVar, this.zzm);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzaP(zzhx zzhxVar, long j, boolean z) {
        try {
            this.zzh.zze(zzhxVar, this.zzm, j, z);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaQ(zzib zzibVar) {
        try {
            this.zzh.zzg(zzibVar, this.zzm);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaR(zzie zzieVar, BillingResult billingResult, int i) {
        try {
            int i2 = zzcg.$r8$clinit;
            zzhv zzhvVar = (zzhv) zzcg.zzb(zzieVar, 6, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED).zzm();
            zzjt zzjtVarZzc = zzjv.zzc();
            zzjtVarZzc.zza(i > 0);
            zzjtVarZzc.zzl(i);
            zzhvVar.zzo(zzjtVarZzc);
            zzaO((zzhx) zzhvVar.zze());
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaS(int i) {
        synchronized (this.zza) {
            try {
                if (this.zzb == 3) {
                    return;
                }
                zzc.zzm("BillingClient", "Setting clientState from " + zzaZ(this.zzb) + " to " + zzaZ(i));
                this.zzb = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzaU(BillingClientStateListener billingClientStateListener, int i) {
        zzie zzieVar;
        BillingResult billingResultZzap;
        BillingResult billingResult;
        synchronized (this.zza) {
            try {
                if (zzaY()) {
                    billingResultZzap = zzap(i);
                } else {
                    if (this.zzb == 1) {
                        zzc.zzn("BillingClient", "Client is already in the process of connecting to billing service.");
                        zzie zzieVar2 = zzie.BILLING_CLIENT_CONNECTING;
                        billingResult = zzcj.zzd;
                        zzaR(zzieVar2, billingResult, i);
                    } else if (this.zzb == 3) {
                        zzc.zzn("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                        zzie zzieVar3 = zzie.BILLING_CLIENT_CLOSED;
                        billingResult = zzcj.zzj;
                        zzaR(zzieVar3, billingResult, i);
                    } else {
                        zzaS(1);
                        if (i == 0) {
                            this.zzG = billingClientStateListener;
                            i = 0;
                        }
                        zzaV();
                        zzc.zzm("BillingClient", "Starting in-app billing setup.");
                        this.zzj = new zzbf(this, billingClientStateListener, i, null);
                        this.zzj.zzc();
                        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                        intent.setPackage("com.android.vending");
                        List<ResolveInfo> listQueryIntentServices = this.zzg.getPackageManager().queryIntentServices(intent, 0);
                        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                            zzieVar = zzie.INTENT_SERVICE_NOT_FOUND;
                        } else {
                            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
                            if (serviceInfo != null) {
                                String str = serviceInfo.packageName;
                                String str2 = serviceInfo.name;
                                if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                                    zzieVar = zzie.INVALID_PHONESKY_PACKAGE;
                                    zzc.zzn("BillingClient", "The device doesn't have valid Play Store.");
                                } else {
                                    ComponentName componentName = new ComponentName(str, str2);
                                    Intent intent2 = new Intent(intent);
                                    intent2.setComponent(componentName);
                                    intent2.putExtra("playBillingLibraryVersion", this.zzc);
                                    synchronized (this.zza) {
                                        try {
                                            if (this.zzb == 2) {
                                                billingResultZzap = zzap(i);
                                            } else if (this.zzb != 1) {
                                                zzc.zzn("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                                zzie zzieVar4 = zzie.BILLING_CLIENT_TRANSITIONED_OUT_OF_CONNECTING;
                                                billingResult = zzcj.zzj;
                                                zzaR(zzieVar4, billingResult, i);
                                            } else {
                                                zzbf zzbfVar = this.zzj;
                                                if ((i <= 0 || Build.VERSION.SDK_INT < 29) ? this.zzg.bindService(intent2, zzbfVar, 1) : this.zzg.bindService(intent2, 1, zzF(), zzbfVar)) {
                                                    zzc.zzm("BillingClient", "Service was bonded successfully.");
                                                    billingResultZzap = null;
                                                } else {
                                                    zzieVar = zzie.BILLING_SERVICE_BLOCKED;
                                                    zzc.zzn("BillingClient", "Connection to Billing service is blocked.");
                                                }
                                            }
                                        } finally {
                                        }
                                    }
                                }
                            } else {
                                zzieVar = zzie.INVALID_PHONESKY_PACKAGE;
                                zzc.zzn("BillingClient", "The device doesn't have valid Play Store.");
                            }
                        }
                        zzaS(0);
                        zzc.zzm("BillingClient", "Billing service unavailable on device.");
                        BillingResult billingResult2 = zzcj.zzb;
                        zzaR(zzieVar, billingResult2, i);
                        billingResultZzap = billingResult2;
                    }
                    billingResultZzap = billingResult;
                }
            } finally {
            }
        }
        if (billingResultZzap != null) {
            billingClientStateListener.onBillingSetupFinished(billingResultZzap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void zzaV() {
        synchronized (this.zza) {
            if (this.zzj != null) {
                try {
                    this.zzg.unbindService(this.zzj);
                } catch (Throwable th) {
                    try {
                        zzc.zzo("BillingClient", "There was an exception while unbinding service!", th);
                        this.zzi = null;
                        this.zzj = null;
                    } finally {
                        this.zzi = null;
                        this.zzj = null;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zzaW(long j) {
        try {
            BillingResult billingResult = (BillingResult) zzar(1).get(Build.VERSION.SDK_INT < 29 ? 0L : 3000L, TimeUnit.MILLISECONDS);
            if (billingResult.getResponseCode() == 0) {
                zzc.zzm("BillingClient", "Reconnection succeeded with result: " + billingResult.getResponseCode());
            } else {
                zzc.zzn("BillingClient", "Reconnection failed with result: " + billingResult.getResponseCode());
            }
        } catch (Exception e) {
            if (e instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            zzc.zzo("BillingClient", "Error during reconnection attempt: ", e);
        }
        return zzaY();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzaX(long j) {
        long jMax;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        zzbi zzbiVarZzb = zzbi.zzb(this.zzJ);
        long jZza = 30000;
        for (int i = 1; i <= 3; i++) {
            try {
                jMax = Math.max(0L, jZza);
            } catch (Exception e) {
                if (e instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                zzc.zzo("BillingClient", "Error during reconnection attempt: ", e);
            }
            if (jMax <= 0) {
                zzc.zzn("BillingClient", "No time remaining for reconnection attempt.");
                return zzaY();
            }
            BillingResult billingResult = (BillingResult) zzar(i).get(jMax, timeUnit);
            if (billingResult.getResponseCode() == 0) {
                zzc.zzm("BillingClient", "Reconnection succeeded with result: " + billingResult.getResponseCode());
                return zzaY();
            }
            zzc.zzn("BillingClient", "Reconnection failed with result: " + billingResult.getResponseCode());
            jZza = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS - zzbiVarZzb.zza(timeUnit);
            long jPow = ((long) Math.pow(2.0d, i - 1)) * 1000;
            if (jZza < jPow) {
                zzc.zzn("BillingClient", "Reconnection failed due to timeout limit reached.");
                return zzaY();
            }
            if (i < 3 && jPow > 0) {
                try {
                    Thread.sleep(jPow);
                    jZza = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS - zzbiVarZzb.zza(timeUnit);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    zzc.zzo("BillingClient", "Error sleeping during reconnection attempt: ", e2);
                }
            }
        }
        zzc.zzn("BillingClient", "Max retries reached.");
        return zzaY();
    }

    private final boolean zzaY() {
        boolean z;
        synchronized (this.zza) {
            try {
                z = false;
                if (this.zzb == 2 && this.zzi != null && this.zzj != null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    private static final String zzaZ(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED";
    }

    public static /* bridge */ /* synthetic */ void zzac(BillingClientImpl billingClientImpl, int i) {
        billingClientImpl.zzm = i;
        billingClientImpl.zzC = i >= 26;
        billingClientImpl.zzB = i >= 24;
        billingClientImpl.zzA = i >= 23;
        billingClientImpl.zzz = i >= 22;
        billingClientImpl.zzy = i >= 21;
        billingClientImpl.zzx = i >= 20;
        billingClientImpl.zzw = i >= 19;
        billingClientImpl.zzv = i >= 18;
        billingClientImpl.zzu = i >= 17;
        billingClientImpl.zzt = i >= 16;
        billingClientImpl.zzs = i >= 15;
        billingClientImpl.zzr = i >= 14;
        billingClientImpl.zzq = i >= 12;
        billingClientImpl.zzp = i >= 9;
        billingClientImpl.zzo = i >= 8;
        billingClientImpl.zzn = i >= 6;
    }

    public static /* bridge */ /* synthetic */ void zzae(BillingClientImpl billingClientImpl, int i) {
        if (i != 0) {
            billingClientImpl.zzaS(0);
            return;
        }
        synchronized (billingClientImpl.zza) {
            try {
                if (billingClientImpl.zzb == 3) {
                    return;
                }
                billingClientImpl.zzaS(2);
                zzs zzsVar = billingClientImpl.zzf != null ? billingClientImpl.zzf : null;
                if (zzsVar != null) {
                    zzsVar.zzg(billingClientImpl.zzy);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean zzai(BillingClientImpl billingClientImpl) {
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
    public final /* synthetic */ Bundle zzal(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.zza) {
                zzamVar = this.zzi;
            }
            return zzamVar == null ? zzc.zzd(zzcj.zzj, zzie.SERVICE_RESET_TO_NULL) : zzamVar.zzg(i, this.zzg.getPackageName(), str, str2, null, bundle);
        } catch (DeadObjectException e) {
            return zzc.zze(zzcj.zzj, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e));
        } catch (Exception e2) {
            return zzc.zze(zzcj.zzh, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final /* synthetic */ Bundle zzam(String str, String str2) {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        try {
            synchronized (this.zza) {
                zzamVar = this.zzi;
            }
            return zzamVar == null ? zzc.zzd(zzcj.zzj, zzie.SERVICE_RESET_TO_NULL) : zzamVar.zzf(3, this.zzg.getPackageName(), str, str2, null);
        } catch (DeadObjectException e) {
            return zzc.zze(zzcj.zzj, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e));
        } catch (Exception e2) {
            return zzc.zze(zzcj.zzh, zzie.LAUNCH_BILLING_FLOW_EXCEPTION, zzcg.zza(e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler zzan() {
        return Looper.myLooper() == null ? this.zze : new Handler(Looper.myLooper());
    }

    private final zzbo zzao(BillingResult billingResult, zzie zzieVar, String str, Exception exc) {
        zzc.zzo("BillingClient", str, exc);
        zzbf(zzieVar, 7, billingResult, zzcg.zza(exc));
        return new zzbo(billingResult.getResponseCode(), billingResult.getDebugMessage(), new ArrayList(), new ArrayList());
    }

    private final BillingResult zzap(int i) {
        zzc.zzm("BillingClient", "Service connection is valid. No need to re-initialize.");
        zzhz zzhzVarZzc = zzib.zzc();
        zzhzVarZzc.zzo(6);
        zzjt zzjtVarZzc = zzjv.zzc();
        zzjtVarZzc.zzn(true);
        zzjtVarZzc.zza(i > 0);
        zzjtVarZzc.zzl(i);
        zzhzVarZzc.zzn(zzjtVarZzc);
        zzaQ((zzib) zzhzVarZzc.zze());
        return zzcj.zzi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingResult zzaq() {
        int[] iArr = {0, 3};
        synchronized (this.zza) {
            for (int i = 0; i < 2; i++) {
                if (this.zzb == iArr[i]) {
                    return zzcj.zzj;
                }
            }
            return zzcj.zzh;
        }
    }

    private final zzcz zzar(final int i) {
        if (this.zzE && !zzaY()) {
            return com.google.android.gms.internal.play_billing.zzu.zza(new com.google.android.gms.internal.play_billing.zzr() { // from class: com.android.billingclient.api.zzu
                @Override // com.google.android.gms.internal.play_billing.zzr
                public final Object zza(zzp zzpVar) {
                    return BillingClientImpl.zzq(this.zza, i, zzpVar);
                }
            });
        }
        zzc.zzm("BillingClient", "Already connected or not opted into auto reconnection.");
        return com.google.android.gms.internal.play_billing.zzcu.zza(zzcj.zzi);
    }

    private final String zzav(QueryProductDetailsParams queryProductDetailsParams) {
        if (TextUtils.isEmpty(null)) {
            return this.zzg.getPackageName();
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    private static String zzaw() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private final zzcw zzba(int i, BillingResult billingResult, zzie zzieVar, String str, Exception exc) {
        zzbf(zzieVar, 9, billingResult, zzcg.zza(exc));
        zzc.zzo("BillingClient", str, exc);
        return new zzcw(billingResult, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0166 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzcw zzbb(String str, boolean z, int i) {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        int i2;
        int i3;
        Bundle bundleZzi;
        BillingResult billingResultBuild;
        zzie zzieVar;
        BillingClientImpl billingClientImpl = this;
        zzc.zzm("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z2 = billingClientImpl.zzp;
        boolean z3 = billingClientImpl.zzw;
        boolean zIsEnabledForOneTimeProducts = billingClientImpl.zzD.isEnabledForOneTimeProducts();
        boolean zIsEnabledForPrepaidPlans = billingClientImpl.zzD.isEnabledForPrepaidPlans();
        long jLongValue = billingClientImpl.zzI.longValue();
        Bundle bundle = new Bundle();
        zzc.zzc(bundle, billingClientImpl.zzc, billingClientImpl.zzd, jLongValue);
        if (z2 && zIsEnabledForOneTimeProducts) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (z3 && zIsEnabledForPrepaidPlans) {
            bundle.putBoolean("enablePendingPurchaseForSubscriptions", true);
        }
        String string = null;
        do {
            try {
                synchronized (billingClientImpl.zza) {
                    zzamVar = billingClientImpl.zzi;
                }
                if (zzamVar == null) {
                    return billingClientImpl.zzba(9, zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, "Service has been reset to null", null);
                }
                if (billingClientImpl.zzp) {
                    if (billingClientImpl.zzC) {
                        i3 = 26;
                    } else if (billingClientImpl.zzB) {
                        i3 = 24;
                    } else if (billingClientImpl.zzw) {
                        i3 = 19;
                    } else {
                        i2 = 9;
                        bundleZzi = zzamVar.zzi(i2, billingClientImpl.zzg.getPackageName(), str, string, bundle);
                    }
                    i2 = i3;
                    bundleZzi = zzamVar.zzi(i2, billingClientImpl.zzg.getPackageName(), str, string, bundle);
                } else {
                    bundleZzi = zzamVar.zzh(3, billingClientImpl.zzg.getPackageName(), str, string);
                }
                BillingResult billingResult = zzcj.zzh;
                if (bundleZzi == null) {
                    zzc.zzn("BillingClient", String.format("%s got null owned items list", "getPurchase()"));
                    zzieVar = zzie.NULL_OWNED_ITEMS_LIST;
                } else {
                    int iZzb = zzc.zzb(bundleZzi, "BillingClient");
                    String strZzj = zzc.zzj(bundleZzi, "BillingClient");
                    BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
                    builderNewBuilder.setResponseCode(iZzb);
                    builderNewBuilder.setDebugMessage(strZzj);
                    billingResultBuild = builderNewBuilder.build();
                    if (iZzb != 0) {
                        zzc.zzn("BillingClient", String.format("%s failed. Response code: %s", "getPurchase()", Integer.valueOf(iZzb)));
                        zzieVar = zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
                    } else if (bundleZzi.containsKey("INAPP_PURCHASE_ITEM_LIST") && bundleZzi.containsKey("INAPP_PURCHASE_DATA_LIST") && bundleZzi.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                        ArrayList<String> stringArrayList = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                        ArrayList<String> stringArrayList2 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList3 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        if (stringArrayList == null) {
                            zzc.zzn("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", "getPurchase()"));
                            zzieVar = zzie.NULL_SKUS_LIST;
                        } else if (stringArrayList2 == null) {
                            zzc.zzn("BillingClient", String.format("Bundle returned from %s contains null purchases list.", "getPurchase()"));
                            zzieVar = zzie.NULL_PURCHASES_LIST;
                        } else if (stringArrayList3 == null) {
                            zzc.zzn("BillingClient", String.format("Bundle returned from %s contains null signatures list.", "getPurchase()"));
                            zzieVar = zzie.NULL_SIGNATURES_LIST;
                        } else {
                            billingResultBuild = zzcj.zzi;
                            zzieVar = zzie.REASON_UNSPECIFIED;
                        }
                    } else {
                        zzc.zzn("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", "getPurchase()"));
                        zzieVar = zzie.MISSING_REQUIRED_PURCHASE_KEY;
                    }
                    if (billingResultBuild == zzcj.zzi) {
                        return billingClientImpl.zzba(9, billingResultBuild, zzieVar, "Purchase bundle invalid", null);
                    }
                    ArrayList<String> stringArrayList4 = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                    ArrayList<String> stringArrayList5 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                    ArrayList<String> stringArrayList6 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                    boolean z4 = false;
                    for (int i4 = 0; i4 < stringArrayList5.size(); i4++) {
                        String str2 = stringArrayList5.get(i4);
                        String str3 = stringArrayList6.get(i4);
                        zzc.zzm("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList4.get(i4))));
                        try {
                            Purchase purchase = new Purchase(str2, str3);
                            if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                                zzc.zzn("BillingClient", "BUG: empty/null token!");
                                z4 = true;
                            }
                            arrayList.add(purchase);
                        } catch (JSONException e) {
                            return zzba(9, zzcj.zzh, zzie.ERROR_DECODING_PURCHASE_DATA, "Got an exception trying to decode the purchase!", e);
                        }
                    }
                    billingClientImpl = this;
                    if (z4) {
                        billingClientImpl.zzbd(zzie.EMPTY_PURCHASE_TOKEN, 9, billingResult);
                    }
                    string = bundleZzi.getString("INAPP_CONTINUATION_TOKEN");
                    zzc.zzm("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
                }
                billingResultBuild = billingResult;
                if (billingResultBuild == zzcj.zzi) {
                }
            } catch (DeadObjectException e2) {
                return zzba(9, zzcj.zzj, zzie.GET_PURCHASE_SERVICE_CALL_EXCEPTION, "Got exception trying to get purchases try to reconnect", e2);
            } catch (Exception e3) {
                return billingClientImpl.zzba(9, zzcj.zzh, zzie.GET_PURCHASE_SERVICE_CALL_EXCEPTION, "Got exception trying to get purchases try to reconnect", e3);
            }
        } while (!TextUtils.isEmpty(string));
        return new zzcw(zzcj.zzi, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzbd(zzie zzieVar, int i, BillingResult billingResult) {
        try {
            int i2 = zzcg.$r8$clinit;
            zzaO(zzcg.zzb(zzieVar, i, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbe(zzie zzieVar, int i, BillingResult billingResult, long j) {
        try {
            int i2 = zzcg.$r8$clinit;
            try {
                this.zzh.zzc(zzcg.zzb(zzieVar, 2, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.zzm, j);
            } catch (Throwable th) {
                zzc.zzo("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            zzc.zzo("BillingClient", "Unable to log.", th2);
        }
    }

    private final void zzbf(zzie zzieVar, int i, BillingResult billingResult, String str) {
        try {
            int i2 = zzcg.$r8$clinit;
            zzaO(zzcg.zzb(zzieVar, i, billingResult, str, zzil.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbg(zzie zzieVar, int i, BillingResult billingResult, long j, boolean z) {
        try {
            int i2 = zzcg.$r8$clinit;
            zzaP(zzcg.zzb(zzieVar, 2, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), j, z);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbh(zzie zzieVar, int i, BillingResult billingResult, String str, long j, boolean z) {
        try {
            int i2 = zzcg.$r8$clinit;
            zzaP(zzcg.zzb(zzieVar, 2, billingResult, str, zzil.BROADCAST_ACTION_UNSPECIFIED), j, z);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    public static /* bridge */ /* synthetic */ BillingResult zzl(Exception exc) {
        return exc instanceof DeadObjectException ? zzcj.zzj : zzcj.zzh;
    }

    public static /* synthetic */ Object zzq(BillingClientImpl billingClientImpl, int i, zzp zzpVar) {
        billingClientImpl.zzaU(new zzbc(billingClientImpl, zzpVar), i);
        return "reconnectIfNeeded";
    }

    public static /* synthetic */ Object zzr(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) throws Throwable {
        if (billingClientImpl.zzaX(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS)) {
            billingClientImpl.zzaD(consumeParams, consumeResponseListener);
            return null;
        }
        zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
        BillingResult billingResult = zzcj.zzj;
        billingClientImpl.zzbd(zzieVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
        return null;
    }

    public static /* synthetic */ Object zzs(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener, QueryProductDetailsParams queryProductDetailsParams) {
        if (!billingClientImpl.zzaX(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS)) {
            zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzcj.zzj;
            billingClientImpl.zzbd(zzieVar, 7, billingResult);
            productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
            return null;
        }
        if (billingClientImpl.zzu) {
            zzbo zzboVarZzg = billingClientImpl.zzg(queryProductDetailsParams);
            productDetailsResponseListener.onProductDetailsResponse(zzcj.zza(zzboVarZzg.zza(), zzboVarZzg.zzb()), new QueryProductDetailsResult(zzboVarZzg.zzc(), zzboVarZzg.zzd()));
            return null;
        }
        zzc.zzn("BillingClient", "Querying product details is not supported.");
        zzie zzieVar2 = zzie.PRODUCT_DETAILS_NOT_SUPPORTED;
        BillingResult billingResult2 = zzcj.zzr;
        billingClientImpl.zzbd(zzieVar2, 7, billingResult2);
        productDetailsResponseListener.onProductDetailsResponse(billingResult2, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
        return null;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzak
            @Override // java.util.concurrent.Callable
            public final Object call() throws Throwable {
                BillingClientImpl.zzr(this.zza, consumeResponseListener, consumeParams);
                return null;
            }
        }, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, new Runnable() { // from class: com.android.billingclient.api.zzam
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzH(this.zza, consumeResponseListener, consumeParams);
            }
        }, zzan(), zzF()) == null) {
            BillingResult billingResultZzaq = zzaq();
            zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 4, billingResultZzaq);
            consumeResponseListener.onConsumeResponse(billingResultZzaq, consumeParams.getPurchaseToken());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean isReady() {
        if (this.zzE) {
            return true;
        }
        return zzaY();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.android.billingclient.api.BillingClientImpl] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    @Override // com.android.billingclient.api.BillingClient
    public BillingResult launchBillingFlow(Activity activity, BillingFlowParams billingFlowParams) {
        boolean zZzd;
        long j;
        Future futureZzG;
        ?? r5;
        ?? r52;
        ?? r53;
        zzie zzieVar;
        BillingResult billingResult;
        boolean z;
        long j2;
        zzie zzieVarZzb;
        Object obj;
        String str;
        boolean z2;
        BillingFlowParams.ProductDetailsParams productDetailsParams;
        long j3;
        boolean z3;
        long jNextLong = new Random().nextLong();
        if (this.zzf == null || this.zzf.zzd() == null) {
            zzie zzieVar2 = zzie.MISSING_LISTENER;
            BillingResult billingResult2 = zzcj.zzE;
            zzbe(zzieVar2, 2, billingResult2, jNextLong);
            return billingResult2;
        }
        if (!zzaW(3000L)) {
            zzie zzieVar3 = zzie.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult3 = zzcj.zzj;
            zzbe(zzieVar3, 2, billingResult3, jNextLong);
            zzm(billingResult3);
            return billingResult3;
        }
        synchronized (this.zza) {
            try {
                zZzd = this.zzj != null ? this.zzj.zzd() : false;
            } finally {
            }
        }
        ArrayList arrayListZzj = billingFlowParams.zzj();
        List listZzk = billingFlowParams.zzk();
        String string = null;
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(com.google.android.gms.internal.play_billing.zzby.zza(arrayListZzj, null));
        BillingFlowParams.ProductDetailsParams productDetailsParams2 = (BillingFlowParams.ProductDetailsParams) com.google.android.gms.internal.play_billing.zzby.zza(listZzk, null);
        final String productId = productDetailsParams2.zza().getProductId();
        final String productType = productDetailsParams2.zza().getProductType();
        if (productType.equals("subs") && !this.zzk) {
            zzc.zzn("BillingClient", "Current client doesn't support subscriptions.");
            zzie zzieVar4 = zzie.SUBSCRIPTIONS_NOT_SUPPORTED;
            BillingResult billingResult4 = zzcj.zzl;
            zzbg(zzieVar4, 2, billingResult4, jNextLong, zZzd);
            zzm(billingResult4);
            return billingResult4;
        }
        if (billingFlowParams.zzt() && !this.zzn) {
            zzc.zzn("BillingClient", "Current client doesn't support extra params for buy intent.");
            zzie zzieVar5 = zzie.EXTRA_PARAMS_NOT_SUPPORTED;
            BillingResult billingResult5 = zzcj.zzf;
            zzbg(zzieVar5, 2, billingResult5, jNextLong, zZzd);
            zzm(billingResult5);
            return billingResult5;
        }
        if (arrayListZzj.size() > 1 && !this.zzt) {
            zzc.zzn("BillingClient", "Current client doesn't support multi-item purchases.");
            zzie zzieVar6 = zzie.MULTI_ITEM_NOT_SUPPORTED;
            BillingResult billingResult6 = zzcj.zzp;
            zzbg(zzieVar6, 2, billingResult6, jNextLong, zZzd);
            zzm(billingResult6);
            return billingResult6;
        }
        if (!listZzk.isEmpty() && !this.zzu) {
            zzc.zzn("BillingClient", "Current client doesn't support purchases with ProductDetails.");
            zzie zzieVar7 = zzie.PRODUCT_DETAILS_NOT_SUPPORTED;
            BillingResult billingResult7 = zzcj.zzr;
            zzbg(zzieVar7, 2, billingResult7, jNextLong, zZzd);
            zzm(billingResult7);
            return billingResult7;
        }
        BillingResult billingResultZzd = billingFlowParams.zzd();
        if (billingResultZzd != zzcj.zzi) {
            zzbg(zzie.INVALID_BILLING_FLOW_PARAMS, 2, billingResultZzd, jNextLong, zZzd);
            zzm(billingResultZzd);
            return billingResultZzd;
        }
        if (this.zzn) {
            boolean z4 = this.zzp;
            boolean z5 = this.zzw;
            boolean zIsEnabledForOneTimeProducts = this.zzD.isEnabledForOneTimeProducts();
            boolean zIsEnabledForPrepaidPlans = this.zzD.isEnabledForPrepaidPlans();
            boolean z6 = this.zzF;
            String str2 = this.zzc;
            String str3 = this.zzd;
            boolean z7 = zZzd;
            long jLongValue = this.zzI.longValue();
            this.zzg.getPackageName();
            int i = zzc.zza;
            final Bundle bundle = new Bundle();
            zzc.zzc(bundle, str2, str3, jLongValue);
            bundle.putLong("billingClientTransactionId", jNextLong);
            if (billingFlowParams.zzb() != 0) {
                bundle.putInt("prorationMode", billingFlowParams.zzb());
            }
            if (!TextUtils.isEmpty(billingFlowParams.zze())) {
                bundle.putString("accountId", billingFlowParams.zze());
            }
            if (!TextUtils.isEmpty(billingFlowParams.zzf())) {
                bundle.putString("obfuscatedProfileId", billingFlowParams.zzf());
            }
            if (billingFlowParams.zzs()) {
                bundle.putBoolean("isOfferPersonalizedByDeveloper", true);
            }
            if (!TextUtils.isEmpty(null)) {
                bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(null)));
            }
            if (!TextUtils.isEmpty(billingFlowParams.zzh())) {
                bundle.putString("oldSkuPurchaseToken", billingFlowParams.zzh());
            }
            billingFlowParams.zzg();
            if (TextUtils.isEmpty(null)) {
                str = null;
            } else {
                billingFlowParams.zzg();
                str = null;
                bundle.putString("oldSkuPurchaseId", null);
            }
            if (!TextUtils.isEmpty(billingFlowParams.zzi())) {
                bundle.putString("originalExternalTransactionId", billingFlowParams.zzi());
            }
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("paymentsPurchaseParams", str);
            }
            if (z4 && zIsEnabledForOneTimeProducts) {
                z2 = true;
                bundle.putBoolean("enablePendingPurchases", true);
            } else {
                z2 = true;
            }
            if (z5 && zIsEnabledForPrepaidPlans) {
                bundle.putBoolean("enablePendingPurchaseForSubscriptions", z2);
            }
            if (z6) {
                bundle.putBoolean("enableAlternativeBilling", z2);
            }
            billingFlowParams.zzc();
            billingFlowParams.zza();
            ArrayList arrayList = new ArrayList();
            for (BillingFlowParams.ProductDetailsParams productDetailsParams3 : billingFlowParams.zzk()) {
            }
            if (!arrayList.isEmpty()) {
                zzdj zzdjVarZza = zzdk.zza();
                zzdjVarZza.zza(arrayList);
                bundle.putByteArray("subscriptionProductReplacementParamsList", ((zzdk) zzdjVarZza.zze()).zzM());
            }
            if (arrayListZzj.isEmpty()) {
                ArrayList<String> arrayList2 = new ArrayList<>(listZzk.size() - 1);
                ArrayList<String> arrayList3 = new ArrayList<>(listZzk.size() - 1);
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                ArrayList<String> arrayList6 = new ArrayList<>();
                ArrayList<Integer> arrayList7 = new ArrayList<>();
                long j4 = jNextLong;
                for (int i2 = 0; i2 < listZzk.size(); i2++) {
                    BillingFlowParams.ProductDetailsParams productDetailsParams4 = (BillingFlowParams.ProductDetailsParams) listZzk.get(i2);
                    ProductDetails productDetailsZza = productDetailsParams4.zza();
                    if (productDetailsZza.zzb().isEmpty()) {
                        productDetailsParams = productDetailsParams4;
                    } else {
                        productDetailsParams = productDetailsParams4;
                        arrayList4.add(productDetailsZza.zzb());
                    }
                    arrayList5.add(productDetailsParams.zzb());
                    String strZzc = productDetailsZza.zzc();
                    if (productDetailsZza.zzd() != null && !productDetailsZza.zzd().isEmpty()) {
                        Iterator it = productDetailsZza.zzd().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = (ProductDetails.OneTimePurchaseOfferDetails) it.next();
                            if (!TextUtils.isEmpty(oneTimePurchaseOfferDetails.zzb())) {
                                strZzc = oneTimePurchaseOfferDetails.zzb();
                                break;
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(strZzc)) {
                        arrayList6.add(strZzc);
                    }
                    if (i2 > 0) {
                        arrayList2.add(((BillingFlowParams.ProductDetailsParams) listZzk.get(i2)).zza().getProductId());
                        arrayList3.add(((BillingFlowParams.ProductDetailsParams) listZzk.get(i2)).zza().getProductType());
                    }
                }
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList5);
                if (!arrayList7.isEmpty()) {
                    bundle.putIntegerArrayList("autoPayBalanceThresholdList", arrayList7);
                }
                if (!arrayList4.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList4);
                }
                if (!arrayList6.isEmpty()) {
                    bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList6);
                }
                j3 = j4;
                if (!arrayList2.isEmpty()) {
                    bundle.putStringArrayList("additionalSkus", arrayList2);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList3);
                    j3 = j4;
                }
            } else {
                ArrayList<String> arrayList8 = new ArrayList<>();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                Iterator it2 = arrayListZzj.iterator();
                if (it2.hasNext()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it2.next());
                    throw null;
                }
                if (!arrayList8.isEmpty()) {
                    bundle.putStringArrayList("skuDetailsTokens", arrayList8);
                }
                if (arrayListZzj.size() > 1) {
                    ArrayList<String> arrayList9 = new ArrayList<>(arrayListZzj.size() - 1);
                    ArrayList<String> arrayList10 = new ArrayList<>(arrayListZzj.size() - 1);
                    if (1 < arrayListZzj.size()) {
                        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(arrayListZzj.get(1));
                        throw null;
                    }
                    bundle.putStringArrayList("additionalSkus", arrayList9);
                    bundle.putStringArrayList("additionalSkuTypes", arrayList10);
                }
                j3 = jNextLong;
            }
            if (bundle.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.zzr) {
                zzie zzieVar8 = zzie.OFFER_ID_TOKEN_NOT_SUPPORTED;
                BillingResult billingResult8 = zzcj.zzq;
                zzbg(zzieVar8, 2, billingResult8, j3, z7);
                zzm(billingResult8);
                return billingResult8;
            }
            zZzd = z7;
            if (productDetailsParams2 == null || TextUtils.isEmpty(productDetailsParams2.zza().zza())) {
                string = null;
                z3 = false;
            } else {
                bundle.putString("skuPackageName", productDetailsParams2.zza().zza());
                string = null;
                z3 = true;
            }
            if (!TextUtils.isEmpty(string)) {
                bundle.putString("accountName", string);
            }
            Intent intent = activity.getIntent();
            if (intent == null) {
                zzc.zzn("BillingClient", "Activity's intent is null.");
            } else if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                bundle.putString("proxyPackage", stringExtra);
                try {
                    bundle.putString("proxyPackageVersion", this.zzg.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                } catch (PackageManager.NameNotFoundException unused) {
                    bundle.putString("proxyPackageVersion", "package not found");
                }
            }
            final int i3 = (!this.zzu || listZzk.isEmpty()) ? (this.zzs && z3) ? 15 : this.zzp ? 9 : 6 : 17;
            final BillingFlowParams billingFlowParams2 = billingFlowParams;
            futureZzG = zzG(new Callable() { // from class: com.android.billingclient.api.zzw
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zzal(i3, productId, productType, billingFlowParams2, bundle);
                }
            }, 5000L, null, this.zze, zzF());
            r5 = billingFlowParams2;
            j = j3;
        } else {
            j = jNextLong;
            futureZzG = zzG(new Callable() { // from class: com.android.billingclient.api.zzx
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zzam(productId, productType);
                }
            }, 5000L, null, this.zze, zzF());
            r5 = jNextLong;
        }
        try {
            if (futureZzG == null) {
                try {
                    zzieVar = zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC;
                    billingResult = zzcj.zzc;
                    z = zZzd;
                    j2 = j;
                } catch (CancellationException e) {
                    e = e;
                    r53 = j;
                    zzc.zzo("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                    zzie zzieVar9 = zzie.LAUNCH_BILLING_FLOW_TIMEOUT;
                    BillingResult billingResult9 = zzcj.zzk;
                    zzbh(zzieVar9, 2, billingResult9, zzcg.zza(e), r53, zZzd);
                    zzm(billingResult9);
                    return billingResult9;
                } catch (TimeoutException e2) {
                    e = e2;
                    r53 = j;
                    zzc.zzo("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                    zzie zzieVar92 = zzie.LAUNCH_BILLING_FLOW_TIMEOUT;
                    BillingResult billingResult92 = zzcj.zzk;
                    zzbh(zzieVar92, 2, billingResult92, zzcg.zza(e), r53, zZzd);
                    zzm(billingResult92);
                    return billingResult92;
                } catch (Exception e3) {
                    e = e3;
                    r52 = j;
                }
                try {
                    zzbg(zzieVar, 2, billingResult, j2, z);
                    zzm(billingResult);
                    return billingResult;
                } catch (CancellationException e4) {
                    e = e4;
                    zZzd = z;
                    r53 = j2;
                    zzc.zzo("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                    zzie zzieVar922 = zzie.LAUNCH_BILLING_FLOW_TIMEOUT;
                    BillingResult billingResult922 = zzcj.zzk;
                    zzbh(zzieVar922, 2, billingResult922, zzcg.zza(e), r53, zZzd);
                    zzm(billingResult922);
                    return billingResult922;
                } catch (TimeoutException e5) {
                    e = e5;
                    zZzd = z;
                    r53 = j2;
                    zzc.zzo("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                    zzie zzieVar9222 = zzie.LAUNCH_BILLING_FLOW_TIMEOUT;
                    BillingResult billingResult9222 = zzcj.zzk;
                    zzbh(zzieVar9222, 2, billingResult9222, zzcg.zza(e), r53, zZzd);
                    zzm(billingResult9222);
                    return billingResult9222;
                } catch (Exception e6) {
                    e = e6;
                    zZzd = z;
                    r52 = j2;
                    zzc.zzo("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
                    zzie zzieVar10 = zzie.LAUNCH_BILLING_FLOW_EXCEPTION;
                    BillingResult billingResult10 = zzcj.zzj;
                    zzbh(zzieVar10, 2, billingResult10, zzcg.zza(e), r52, zZzd);
                    zzm(billingResult10);
                    return billingResult10;
                }
            }
            long j5 = j;
            Bundle bundle2 = (Bundle) futureZzG.get(5000L, TimeUnit.MILLISECONDS);
            int iZzb = zzc.zzb(bundle2, "BillingClient");
            String strZzj = zzc.zzj(bundle2, "BillingClient");
            if (iZzb == 0) {
                Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                intent2.putExtra("BUY_INTENT", (PendingIntent) bundle2.getParcelable("BUY_INTENT"));
                intent2.putExtra("billingClientTransactionId", j5);
                intent2.putExtra("wasServiceAutoReconnected", zZzd);
                activity.startActivity(intent2);
                return zzcj.zzi;
            }
            zzc.zzn("BillingClient", "Unable to buy item, Error response code: " + iZzb);
            BillingResult billingResultZza = zzcj.zza(iZzb, strZzj);
            try {
                if (bundle2 == null || (obj = bundle2.get("LOG_REASON")) == null) {
                    zzieVarZzb = zzie.REASON_UNSPECIFIED;
                } else if (obj instanceof Integer) {
                    zzieVarZzb = zzie.zzb(((Integer) obj).intValue());
                } else {
                    zzc.zzn("BillingClient", "Unexpected type for bundle log reason: " + obj.getClass().getName());
                    zzieVarZzb = zzie.REASON_UNSPECIFIED;
                }
            } catch (Throwable th) {
                zzc.zzn("BillingClient", "Failed to get log reason from bundle: ".concat(String.valueOf(th.getMessage())));
                zzieVarZzb = zzie.REASON_UNSPECIFIED;
            }
            if (zzieVarZzb == zzie.REASON_UNSPECIFIED) {
                zzieVarZzb = zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            }
            zzie zzieVar11 = zzieVarZzb;
            if (bundle2 != null) {
                try {
                    string = bundle2.getString("ADDITIONAL_LOG_DETAILS");
                } catch (Throwable th2) {
                    zzc.zzn("BillingClient", "Failed to get additional log details from bundle: ".concat(String.valueOf(th2.getMessage())));
                }
            }
            try {
                zzbh(zzieVar11, 2, billingResultZza, string, j5, zZzd);
                zzm(billingResultZza);
                return billingResultZza;
            } catch (CancellationException e7) {
                e = e7;
                r53 = j5;
                zzc.zzo("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                zzie zzieVar92222 = zzie.LAUNCH_BILLING_FLOW_TIMEOUT;
                BillingResult billingResult92222 = zzcj.zzk;
                zzbh(zzieVar92222, 2, billingResult92222, zzcg.zza(e), r53, zZzd);
                zzm(billingResult92222);
                return billingResult92222;
            } catch (TimeoutException e8) {
                e = e8;
                r53 = j5;
                zzc.zzo("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                zzie zzieVar922222 = zzie.LAUNCH_BILLING_FLOW_TIMEOUT;
                BillingResult billingResult922222 = zzcj.zzk;
                zzbh(zzieVar922222, 2, billingResult922222, zzcg.zza(e), r53, zZzd);
                zzm(billingResult922222);
                return billingResult922222;
            } catch (Exception e9) {
                e = e9;
                r52 = j5;
                zzc.zzo("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
                zzie zzieVar102 = zzie.LAUNCH_BILLING_FLOW_EXCEPTION;
                BillingResult billingResult102 = zzcj.zzj;
                zzbh(zzieVar102, 2, billingResult102, zzcg.zza(e), r52, zZzd);
                zzm(billingResult102);
                return billingResult102;
            }
        } catch (CancellationException e10) {
            e = e10;
        } catch (TimeoutException e11) {
            e = e11;
            r53 = r5;
        } catch (Exception e12) {
            e = e12;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (zzG(new Callable() { // from class: com.android.billingclient.api.zzal
            @Override // java.util.concurrent.Callable
            public final Object call() {
                BillingClientImpl.zzs(this.zza, productDetailsResponseListener, queryProductDetailsParams);
                return null;
            }
        }, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, new Runnable() { // from class: com.android.billingclient.api.zzap
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzN(this.zza, productDetailsResponseListener);
            }
        }, zzan(), zzF()) == null) {
            BillingResult billingResultZzaq = zzaq();
            zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 7, billingResultZzaq);
            productDetailsResponseListener.onProductDetailsResponse(billingResultZzaq, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbt.zzk(), com.google.android.gms.internal.play_billing.zzbt.zzk()));
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, final PurchasesResponseListener purchasesResponseListener) {
        if (zzG(new zzaw(this, purchasesResponseListener, queryPurchasesParams.zza(), false), NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, new Runnable() { // from class: com.android.billingclient.api.zzat
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzI(this.zza, purchasesResponseListener);
            }
        }, zzan(), zzF()) == null) {
            BillingResult billingResultZzaq = zzaq();
            zzbd(zzie.MISSING_RESULT_FROM_EXECUTE_ASYNC, 9, billingResultZzaq);
            purchasesResponseListener.onQueryPurchasesResponse(billingResultZzaq, com.google.android.gms.internal.play_billing.zzbt.zzk());
        }
    }

    public final synchronized ExecutorService zzF() {
        try {
            if (this.zzH == null) {
                this.zzH = Executors.newFixedThreadPool(zzc.zza, new zzav(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzH;
    }

    public final void zzag(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            this.zze.post(runnable);
        }
    }

    public final zzbo zzg(QueryProductDetailsParams queryProductDetailsParams) {
        com.google.android.gms.internal.play_billing.zzam zzamVar;
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String strZzb = queryProductDetailsParams.zzb();
        com.google.android.gms.internal.play_billing.zzbt zzbtVarZza = queryProductDetailsParams.zza();
        int size = zzbtVarZza.size();
        int i3 = 0;
        while (i3 < size) {
            int i4 = i3 + 20;
            ArrayList arrayList3 = new ArrayList(zzbtVarZza.subList(i3, i4 > size ? size : i4));
            ArrayList<String> arrayList4 = new ArrayList<>();
            int size2 = arrayList3.size();
            for (int i5 = 0; i5 < size2; i5++) {
                arrayList4.add(((QueryProductDetailsParams.Product) arrayList3.get(i5)).zza());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList4);
            String str = this.zzc;
            bundle.putString("playBillingLibraryVersion", str);
            try {
                synchronized (this.zza) {
                    zzamVar = this.zzi;
                }
                if (zzamVar == null) {
                    return zzao(zzcj.zzj, zzie.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                }
                boolean z = this.zzw && this.zzD.isEnabledForPrepaidPlans();
                zzav(queryProductDetailsParams);
                zzav(queryProductDetailsParams);
                zzav(queryProductDetailsParams);
                zzav(queryProductDetailsParams);
                Bundle bundleZzj = zzamVar.zzj(true != this.zzx ? 17 : 20, this.zzg.getPackageName(), strZzb, bundle, zzc.zzf(str, this.zzd, arrayList3, null, null, zza.zza(z, true, false, true, false, true), this.zzI.longValue()));
                if (bundleZzj == null) {
                    return zzao(zzcj.zzB, zzie.NULL_BUNDLE_FROM_GET_SKU_DETAILS_SERVICE_CALL, "queryProductDetailsAsync got empty product details response.", null);
                }
                if (!bundleZzj.containsKey("DETAILS_LIST")) {
                    int iZzb = zzc.zzb(bundleZzj, "BillingClient");
                    String strZzj = zzc.zzj(bundleZzj, "BillingClient");
                    if (iZzb == 0) {
                        return zzao(zzcj.zza(6, strZzj), zzie.MISSING_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                    }
                    return zzao(zzcj.zza(iZzb, strZzj), zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY, "getSkuDetails() failed for queryProductDetailsAsync. Response code: " + iZzb, null);
                }
                ArrayList<String> stringArrayList = bundleZzj.getStringArrayList("DETAILS_LIST");
                if (stringArrayList == null) {
                    return zzao(zzcj.zzB, zzie.NULL_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "queryProductDetailsAsync got null response list", null);
                }
                ArrayList arrayList5 = new ArrayList();
                int size3 = stringArrayList.size();
                for (int i6 = 0; i6 < size3; i6++) {
                    try {
                        ProductDetails productDetails = new ProductDetails(stringArrayList.get(i6));
                        zzc.zzm("BillingClient", "Got product details: ".concat(productDetails.toString()));
                        arrayList5.add(productDetails);
                    } catch (JSONException e) {
                        return zzao(zzcj.zza(6, "Error trying to decode SkuDetails."), zzie.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e);
                    }
                }
                ArrayList<String> stringArrayList2 = bundleZzj.getStringArrayList("UNFETCHED_PRODUCT_LIST");
                new ArrayList();
                try {
                    ArrayList arrayList6 = new ArrayList();
                    if (stringArrayList2 != null) {
                        int size4 = stringArrayList2.size();
                        int i7 = 0;
                        while (i7 < size4) {
                            String str2 = stringArrayList2.get(i7);
                            i7++;
                            UnfetchedProduct unfetchedProduct = new UnfetchedProduct(str2);
                            zzc.zzm("BillingClient", "Got unfetchedProduct: ".concat(unfetchedProduct.toString()));
                            arrayList6.add(unfetchedProduct);
                        }
                    } else {
                        int size5 = arrayList3.size();
                        int i8 = 0;
                        while (i8 < size5) {
                            Object obj = arrayList3.get(i8);
                            int i9 = i8 + 1;
                            QueryProductDetailsParams.Product product = (QueryProductDetailsParams.Product) obj;
                            int size6 = arrayList5.size();
                            int i10 = 0;
                            while (true) {
                                if (i10 >= size6) {
                                    i = size5;
                                    i2 = i9;
                                    arrayList6.add(new UnfetchedProduct(new JSONObject().put("productId", product.zza()).put("type", product.zzb()).put("statusCode", 0).toString()));
                                    break;
                                }
                                Object obj2 = arrayList5.get(i10);
                                i10++;
                                ProductDetails productDetails2 = (ProductDetails) obj2;
                                i = size5;
                                i2 = i9;
                                if (!product.zza().equals(productDetails2.getProductId()) || !product.zzb().equals(productDetails2.getProductType())) {
                                    size5 = i;
                                    i9 = i2;
                                }
                            }
                            size5 = i;
                            i8 = i2;
                        }
                    }
                    arrayList.addAll(arrayList5);
                    arrayList2.addAll(arrayList6);
                    i3 = i4;
                } catch (JSONException e2) {
                    return zzao(zzcj.zza(6, "Error trying to decode SkuDetails."), zzie.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: ", e2);
                }
            } catch (DeadObjectException e3) {
                return zzao(zzcj.zzj, zzie.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e3);
            } catch (Exception e4) {
                return zzao(zzcj.zzh, zzie.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e4);
            }
        }
        return new zzbo(0, _UrlKt.FRAGMENT_ENCODE_SET, arrayList, arrayList2);
    }

    public final zzch zzj() {
        return this.zzh;
    }

    public final BillingResult zzm(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.zze.post(new Runnable() { // from class: com.android.billingclient.api.zzac
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl.zzP(this.zza, billingResult);
            }
        });
        return billingResult;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void startConnection(BillingClientStateListener billingClientStateListener) {
        zzaU(billingClientStateListener, 0);
    }

    public BillingClientImpl(String str, Context context, zzch zzchVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzI = lValueOf;
        this.zzJ = zzaz.zza();
        this.zzc = "8.0.0";
        String strZzaw = zzaw();
        this.zzd = strZzaw;
        this.zzg = context.getApplicationContext();
        zziq zziqVarZzc = zzis.zzc();
        zziqVarZzc.zzs("8.0.0");
        if (strZzaw != null) {
            zziqVarZzc.zzt(strZzaw);
        }
        zziqVarZzc.zzq(this.zzg.getPackageName());
        zziqVarZzc.zzn(lValueOf.longValue());
        zziqVarZzc.zzr(builder.zza);
        zziqVarZzc.zza(Build.VERSION.SDK_INT);
        zziqVarZzc.zzp(772604006L);
        try {
            zziqVarZzc.zzl(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Error getting app version code.", th);
        }
        this.zzh = new zzcl(this.zzg, (zzis) zziqVarZzc.zze());
        this.zzg.getPackageName();
        this.zzE = builder.zza;
    }

    public BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzco zzcoVar, zzch zzchVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzI = lValueOf;
        this.zzJ = zzaz.zza();
        this.zzc = "8.0.0";
        String strZzaw = zzaw();
        this.zzd = strZzaw;
        this.zzg = context.getApplicationContext();
        zziq zziqVarZzc = zzis.zzc();
        zziqVarZzc.zzs("8.0.0");
        if (strZzaw != null) {
            zziqVarZzc.zzt(strZzaw);
        }
        zziqVarZzc.zzq(this.zzg.getPackageName());
        zziqVarZzc.zzn(lValueOf.longValue());
        zziqVarZzc.zzr(builder.zza);
        zziqVarZzc.zza(Build.VERSION.SDK_INT);
        zziqVarZzc.zzp(772604006L);
        try {
            zziqVarZzc.zzl(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            zzc.zzo("BillingClient", "Error getting app version code.", th);
        }
        this.zzh = new zzcl(this.zzg, (zzis) zziqVarZzc.zze());
        zzc.zzn("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.zzf = new zzs(this.zzg, null, null, null, null, this.zzh);
        this.zzD = pendingPurchasesParams;
        this.zzg.getPackageName();
        this.zzE = builder.zza;
    }

    public BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzb zzbVar, zzch zzchVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzI = Long.valueOf(new Random().nextLong());
        this.zzJ = zzaz.zza();
        this.zzc = "8.0.0";
        this.zzd = zzaw();
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, null, "8.0.0", null, builder);
    }
}
