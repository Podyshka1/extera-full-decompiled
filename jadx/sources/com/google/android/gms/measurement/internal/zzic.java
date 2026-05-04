package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzqp;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.internal.url._UrlKt;
import org.json.JSONException;
import org.json.JSONObject;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzic implements zzjg {
    private static volatile zzic zzb;
    private volatile Boolean zzA;
    private volatile boolean zzB;
    private int zzC;
    private int zzD;
    final long zza;
    private final Context zzc;
    private final boolean zzd;
    private final zzae zze;
    private final zzal zzf;
    private final zzhh zzg;
    private final zzgu zzh;
    private final zzhz zzi;
    private final zzoc zzj;
    private final zzpp zzk;
    private final zzgn zzl;
    private final Clock zzm;
    private final zzmb zzn;
    private final zzlj zzo;
    private final zzd zzp;
    private final zzlo zzq;
    private final String zzr;
    private zzgl zzs;
    private zznl zzt;
    private zzba zzu;
    private zzgi zzv;
    private zzlq zzw;
    private Boolean zzy;
    private long zzz;
    private boolean zzx = false;
    private final AtomicInteger zzE = new AtomicInteger(0);

    zzic(zzjs zzjsVar) {
        Preconditions.checkNotNull(zzjsVar);
        Context context = zzjsVar.zza;
        zzae zzaeVar = new zzae(context);
        this.zze = zzaeVar;
        zzfr.zza = zzaeVar;
        this.zzc = context;
        this.zzd = zzjsVar.zze;
        this.zzA = zzjsVar.zzb;
        this.zzr = zzjsVar.zzg;
        this.zzB = true;
        com.google.android.gms.internal.measurement.zzkm.zzb(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.zzm = defaultClock;
        Long l = zzjsVar.zzf;
        this.zza = l != null ? l.longValue() : defaultClock.currentTimeMillis();
        this.zzf = new zzal(this);
        zzhh zzhhVar = new zzhh(this);
        zzhhVar.zzx();
        this.zzg = zzhhVar;
        zzgu zzguVar = new zzgu(this);
        zzguVar.zzx();
        this.zzh = zzguVar;
        zzpp zzppVar = new zzpp(this);
        zzppVar.zzx();
        this.zzk = zzppVar;
        this.zzl = new zzgn(new zzjr(zzjsVar, this));
        this.zzp = new zzd(this);
        zzmb zzmbVar = new zzmb(this);
        zzmbVar.zzc();
        this.zzn = zzmbVar;
        zzlj zzljVar = new zzlj(this);
        zzljVar.zzc();
        this.zzo = zzljVar;
        zzoc zzocVar = new zzoc(this);
        zzocVar.zzc();
        this.zzj = zzocVar;
        zzlo zzloVar = new zzlo(this);
        zzloVar.zzx();
        this.zzq = zzloVar;
        zzhz zzhzVar = new zzhz(this);
        zzhzVar.zzx();
        this.zzi = zzhzVar;
        com.google.android.gms.internal.measurement.zzdd zzddVar = zzjsVar.zzd;
        boolean z = zzddVar == null || zzddVar.zzb == 0;
        if (context.getApplicationContext() instanceof Application) {
            zzO(zzljVar);
            if (zzljVar.zzu.zzc.getApplicationContext() instanceof Application) {
                Application application = (Application) zzljVar.zzu.zzc.getApplicationContext();
                if (zzljVar.zza == null) {
                    zzljVar.zza = new zzky(zzljVar);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(zzljVar.zza);
                    application.registerActivityLifecycleCallbacks(zzljVar.zza);
                    zzgu zzguVar2 = zzljVar.zzu.zzh;
                    zzP(zzguVar2);
                    zzguVar2.zzk().zza("Registered activity lifecycle callback");
                }
            }
        } else {
            zzP(zzguVar);
            zzguVar.zze().zza("Application context is not an Application");
        }
        zzhzVar.zzj(new zzia(this, zzjsVar));
    }

    static final void zzL() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    private static final void zzM(zzf zzfVar) {
        if (zzfVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static final void zzN(zzje zzjeVar) {
        if (zzjeVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static final void zzO(zzg zzgVar) {
        if (zzgVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!zzgVar.zza()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzgVar.getClass())));
        }
    }

    private static final void zzP(zzjf zzjfVar) {
        if (zzjfVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!zzjfVar.zzv()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzjfVar.getClass())));
        }
    }

    public static zzic zzy(Context context, com.google.android.gms.internal.measurement.zzdd zzddVar, Long l) {
        Bundle bundle;
        if (zzddVar != null) {
            Bundle bundle2 = zzddVar.zzd;
            zzddVar = new com.google.android.gms.internal.measurement.zzdd(zzddVar.zza, zzddVar.zzb, zzddVar.zzc, bundle2, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzic.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzic(new zzjs(context, zzddVar, l));
                    }
                } finally {
                }
            }
        } else if (zzddVar != null && (bundle = zzddVar.zzd) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(zzb);
            zzb.zzA = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(zzb);
        return zzb;
    }

    public final boolean zzA() {
        return this.zzA != null && this.zzA.booleanValue();
    }

    public final boolean zzB() {
        return zzC() == 0;
    }

    public final int zzC() {
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        zzal zzalVar = this.zzf;
        if (zzalVar.zzt()) {
            return 1;
        }
        zzP(zzhzVar);
        zzhzVar.zzg();
        if (!this.zzB) {
            return 8;
        }
        zzhh zzhhVar = this.zzg;
        zzN(zzhhVar);
        Boolean boolZzi = zzhhVar.zzi();
        if (boolZzi != null) {
            return boolZzi.booleanValue() ? 0 : 3;
        }
        zzae zzaeVar = zzalVar.zzu.zze;
        Boolean boolZzr = zzalVar.zzr("firebase_analytics_collection_enabled");
        return boolZzr != null ? boolZzr.booleanValue() ? 0 : 4 : (this.zzA == null || this.zzA.booleanValue()) ? 0 : 7;
    }

    public final void zzD(boolean z) {
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        this.zzB = z;
    }

    public final boolean zzE() {
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        return this.zzB;
    }

    final void zzF() {
        this.zzC++;
    }

    final void zzG() {
        this.zzE.incrementAndGet();
    }

    protected final boolean zzH() {
        if (!this.zzx) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        Boolean bool = this.zzy;
        if (bool == null || this.zzz == 0 || (!bool.booleanValue() && Math.abs(this.zzm.elapsedRealtime() - this.zzz) > 1000)) {
            this.zzz = this.zzm.elapsedRealtime();
            zzpp zzppVar = this.zzk;
            zzN(zzppVar);
            boolean z = false;
            if (zzppVar.zzY("android.permission.INTERNET")) {
                zzN(zzppVar);
                if (zzppVar.zzY("android.permission.ACCESS_NETWORK_STATE")) {
                    Context context = this.zzc;
                    if (Wrappers.packageManager(context).isCallerInstantApp() || this.zzf.zzE() || (zzpp.zzau(context) && zzpp.zzQ(context, false))) {
                        z = true;
                    }
                }
            }
            Boolean boolValueOf = Boolean.valueOf(z);
            this.zzy = boolValueOf;
            if (boolValueOf.booleanValue()) {
                zzN(zzppVar);
                this.zzy = Boolean.valueOf(zzppVar.zzA(zzv().zzk()));
            }
        }
        return this.zzy.booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzI() {
        NetworkInfo activeNetworkInfo;
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        zzlo zzloVar = this.zzq;
        zzP(zzloVar);
        zzP(zzloVar);
        String strZzj = zzv().zzj();
        if (!this.zzf.zzu()) {
            zzgu zzguVar = this.zzh;
            zzP(zzguVar);
            zzguVar.zzk().zza("ADID collection is disabled from Manifest. Skipping");
            return false;
        }
        zzhh zzhhVar = this.zzg;
        zzN(zzhhVar);
        Pair pairZzb = zzhhVar.zzb(strZzj);
        if (((Boolean) pairZzb.second).booleanValue() || TextUtils.isEmpty((CharSequence) pairZzb.first)) {
            zzgu zzguVar2 = this.zzh;
            zzP(zzguVar2);
            zzguVar2.zzk().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return false;
        }
        zzP(zzloVar);
        zzloVar.zzw();
        ConnectivityManager connectivityManager = (ConnectivityManager) zzloVar.zzu.zzc.getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
                activeNetworkInfo = null;
            }
        } else {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            zzgu zzguVar3 = this.zzh;
            zzP(zzguVar3);
            zzguVar3.zze().zza("Network is not available for Deferred Deep Link request. Skipping");
            return false;
        }
        StringBuilder sb = new StringBuilder();
        zznl zznlVarZzt = zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.zzb();
        if (zznlVarZzt.zzK()) {
            zzpp zzppVar = zznlVarZzt.zzu.zzk;
            zzN(zzppVar);
            if (zzppVar.zzah() >= 234200) {
            }
        } else {
            zzlj zzljVar = this.zzo;
            zzO(zzljVar);
            zzic zzicVar = zzljVar.zzu;
            zzljVar.zzg();
            zzao zzaoVarZzz = zzicVar.zzt().zzz();
            Bundle bundle = zzaoVarZzz != null ? zzaoVarZzz.zza : null;
            if (bundle == null) {
                int i = this.zzD;
                this.zzD = i + 1;
                boolean z = i < 10;
                zzgu zzguVar4 = this.zzh;
                zzP(zzguVar4);
                String str = i < 10 ? "Retrying." : "Skipping.";
                zzgs zzgsVarZzj = zzguVar4.zzj();
                StringBuilder sb2 = new StringBuilder(str.length() + 60);
                sb2.append("Failed to retrieve DMA consent from the service, ");
                sb2.append(str);
                sb2.append(" retryCount");
                zzgsVarZzj.zzb(sb2.toString(), Integer.valueOf(this.zzD));
                return z;
            }
            zzjl zzjlVarZze = zzjl.zze(bundle, 100);
            sb.append("&gcs=");
            sb.append(zzjlVarZze.zzk());
            zzaz zzazVarZzh = zzaz.zzh(bundle, 100);
            sb.append("&dma=");
            sb.append(!Objects.equals(zzazVarZzh.zzj(), Boolean.FALSE) ? 1 : 0);
            if (!TextUtils.isEmpty(zzazVarZzh.zzk())) {
                sb.append("&dma_cps=");
                sb.append(zzazVarZzh.zzk());
            }
            int i2 = !Objects.equals(zzaz.zzi(bundle), Boolean.TRUE) ? 1 : 0;
            sb.append("&npa=");
            sb.append(i2);
            zzgu zzguVar5 = this.zzh;
            zzP(zzguVar5);
            zzguVar5.zzk().zzb("Consent query parameters to Bow", sb);
        }
        zzpp zzppVar2 = this.zzk;
        zzN(zzppVar2);
        zzv().zzu.zzf.zzi();
        String str2 = (String) pairZzb.first;
        zzN(this.zzg);
        URL urlZzat = zzppVar2.zzat(133005L, strZzj, str2, r1.zzp.zza() - 1, sb.toString());
        if (urlZzat != null) {
            zzlo zzloVar2 = this.zzq;
            zzP(zzloVar2);
            zzll zzllVar = new zzll() { // from class: com.google.android.gms.measurement.internal.zzib
                @Override // com.google.android.gms.measurement.internal.zzll
                public final /* synthetic */ void zza(String str3, int i3, Throwable th, byte[] bArr, Map map) {
                    this.zza.zzJ(str3, i3, th, bArr, map);
                }
            };
            zzloVar2.zzw();
            Preconditions.checkNotNull(urlZzat);
            Preconditions.checkNotNull(zzllVar);
            zzhz zzhzVar2 = zzloVar2.zzu.zzi;
            zzP(zzhzVar2);
            zzhzVar2.zzm(new zzln(zzloVar2, strZzj, urlZzat, null, null, zzllVar));
        }
        return false;
    }

    final /* synthetic */ void zzJ(String str, int i, Throwable th, byte[] bArr, Map map) {
        int i2;
        if (i != 200 && i != 204) {
            i2 = 304;
            if (i != 304) {
                i2 = i;
            }
            zzgu zzguVar = this.zzh;
            zzP(zzguVar);
            zzguVar.zze().zzc("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
        }
        i2 = i;
        if (th == null) {
            zzhh zzhhVar = this.zzg;
            zzN(zzhhVar);
            zzhhVar.zzo.zzb(true);
            if (bArr == null || bArr.length == 0) {
                zzgu zzguVar2 = this.zzh;
                zzP(zzguVar2);
                zzguVar2.zzj().zza("Deferred Deep Link response empty.");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                String strOptString = jSONObject.optString("deeplink", _UrlKt.FRAGMENT_ENCODE_SET);
                if (TextUtils.isEmpty(strOptString)) {
                    zzgu zzguVar3 = this.zzh;
                    zzP(zzguVar3);
                    zzguVar3.zzj().zza("Deferred Deep Link is empty.");
                    return;
                }
                String strOptString2 = jSONObject.optString("gclid", _UrlKt.FRAGMENT_ENCODE_SET);
                String strOptString3 = jSONObject.optString("gbraid", _UrlKt.FRAGMENT_ENCODE_SET);
                String strOptString4 = jSONObject.optString("gad_source", _UrlKt.FRAGMENT_ENCODE_SET);
                double dOptDouble = jSONObject.optDouble("timestamp", 0.0d);
                Bundle bundle = new Bundle();
                zzpp zzppVar = this.zzk;
                zzN(zzppVar);
                zzic zzicVar = zzppVar.zzu;
                if (!TextUtils.isEmpty(strOptString)) {
                    Context context = zzicVar.zzc;
                    List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(strOptString)), 0);
                    if (listQueryIntentActivities != null && !listQueryIntentActivities.isEmpty()) {
                        if (!TextUtils.isEmpty(strOptString3)) {
                            bundle.putString("gbraid", strOptString3);
                        }
                        if (!TextUtils.isEmpty(strOptString4)) {
                            bundle.putString("gad_source", strOptString4);
                        }
                        bundle.putString("gclid", strOptString2);
                        bundle.putString("_cis", "ddp");
                        this.zzo.zzF("auto", "_cmp", bundle);
                        zzN(zzppVar);
                        if (TextUtils.isEmpty(strOptString)) {
                            return;
                        }
                        try {
                            SharedPreferences.Editor editorEdit = context.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                            editorEdit.putString("deeplink", strOptString);
                            editorEdit.putLong("timestamp", Double.doubleToRawLongBits(dOptDouble));
                            if (editorEdit.commit()) {
                                Intent intent = new Intent("android.google.analytics.action.DEEPLINK_ACTION");
                                Context context2 = zzppVar.zzu.zzc;
                                if (Build.VERSION.SDK_INT < 34) {
                                    context2.sendBroadcast(intent);
                                    return;
                                } else {
                                    context2.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                                    return;
                                }
                            }
                            return;
                        } catch (RuntimeException e) {
                            zzgu zzguVar4 = zzppVar.zzu.zzh;
                            zzP(zzguVar4);
                            zzguVar4.zzb().zzb("Failed to persist Deferred Deep Link. exception", e);
                            return;
                        }
                    }
                }
                zzgu zzguVar5 = this.zzh;
                zzP(zzguVar5);
                zzguVar5.zze().zzd("Deferred Deep Link validation failed. gclid, gbraid, deep link", strOptString2, strOptString3, strOptString);
                return;
            } catch (JSONException e2) {
                zzgu zzguVar6 = this.zzh;
                zzP(zzguVar6);
                zzguVar6.zzb().zzb("Failed to parse the Deferred Deep Link response. exception", e2);
                return;
            }
        }
        zzgu zzguVar7 = this.zzh;
        zzP(zzguVar7);
        zzguVar7.zze().zzc("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i2), th);
    }

    final /* synthetic */ void zzK(zzjs zzjsVar) {
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        zzal zzalVar = this.zzf;
        zzalVar.zzb();
        zzba zzbaVar = new zzba(this);
        zzbaVar.zzx();
        this.zzu = zzbaVar;
        com.google.android.gms.internal.measurement.zzdd zzddVar = zzjsVar.zzd;
        zzgi zzgiVar = new zzgi(this, zzjsVar.zzc, zzddVar == null ? 0L : zzddVar.zza);
        zzgiVar.zzc();
        this.zzv = zzgiVar;
        zzgl zzglVar = new zzgl(this);
        zzglVar.zzc();
        this.zzs = zzglVar;
        zznl zznlVar = new zznl(this);
        zznlVar.zzc();
        this.zzt = zznlVar;
        zzpp zzppVar = this.zzk;
        zzppVar.zzy();
        this.zzg.zzy();
        this.zzv.zzd();
        zzlq zzlqVar = new zzlq(this);
        zzlqVar.zzc();
        this.zzw = zzlqVar;
        zzlqVar.zzd();
        zzgu zzguVar = this.zzh;
        zzP(zzguVar);
        zzgs zzgsVarZzi = zzguVar.zzi();
        zzalVar.zzi();
        zzgsVarZzi.zzb("App measurement initialized, version", 133005L);
        zzP(zzguVar);
        zzguVar.zzi().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strZzj = zzgiVar.zzj();
        zzN(zzppVar);
        if (zzppVar.zzaa(strZzj, zzalVar.zzz())) {
            zzP(zzguVar);
            zzguVar.zzi().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
        } else {
            zzP(zzguVar);
            zzguVar.zzi().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strZzj)));
        }
        zzP(zzguVar);
        zzguVar.zzj().zza("Debug-level message logging enabled");
        int i = this.zzC;
        AtomicInteger atomicInteger = this.zzE;
        if (i != atomicInteger.get()) {
            zzP(zzguVar);
            zzguVar.zzb().zzc("Not all components initialized", Integer.valueOf(this.zzC), Integer.valueOf(atomicInteger.get()));
        }
        this.zzx = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final void zza(com.google.android.gms.internal.measurement.zzdd zzddVar) {
        zzjl zzjlVarZza;
        Bundle bundle;
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        zzhzVar.zzg();
        com.google.android.gms.internal.measurement.zzin zzinVarZzj = zzx().zzj();
        com.google.android.gms.internal.measurement.zzin zzinVar = com.google.android.gms.internal.measurement.zzin.CLIENT_UPLOAD_ELIGIBLE;
        zzqp.zza();
        zzfx zzfxVar = zzfy.zzaQ;
        zzal zzalVar = this.zzf;
        boolean zZzp = zzalVar.zzp(null, zzfxVar);
        boolean z = zzinVarZzj == zzinVar;
        if (zZzp) {
            zzpp zzppVar = this.zzk;
            zzN(zzppVar);
            if (zzppVar.zzS()) {
                zzpp zzppVar2 = this.zzk;
                zzN(zzppVar2);
                zzppVar2.zzg();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                intentFilter.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                zzw zzwVar = new zzw(zzppVar2.zzu);
                zzic zzicVar = zzppVar2.zzu;
                ContextCompat.registerReceiver(zzicVar.zzc, zzwVar, intentFilter, 2);
                zzgu zzguVar = zzicVar.zzh;
                zzP(zzguVar);
                zzguVar.zzj().zza("Registered app receiver");
                if (z) {
                }
            } else if (z) {
                z = true;
                zzpp zzppVar22 = this.zzk;
                zzN(zzppVar22);
                zzppVar22.zzg();
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                intentFilter2.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                zzw zzwVar2 = new zzw(zzppVar22.zzu);
                zzic zzicVar2 = zzppVar22.zzu;
                ContextCompat.registerReceiver(zzicVar2.zzc, zzwVar2, intentFilter2, 2);
                zzgu zzguVar2 = zzicVar2.zzh;
                zzP(zzguVar2);
                zzguVar2.zzj().zza("Registered app receiver");
                if (z) {
                    zzx().zzh(((Long) zzfy.zzB.zzb(null)).longValue());
                }
            }
        }
        zzhh zzhhVar = this.zzg;
        zzN(zzhhVar);
        zzjl zzjlVarZzl = zzhhVar.zzl();
        int iZzb = zzjlVarZzl.zzb();
        zzji zzjiVarZzw = zzalVar.zzw("google_analytics_default_allow_ad_storage", false);
        zzji zzjiVarZzw2 = zzalVar.zzw("google_analytics_default_allow_analytics_storage", false);
        zzji zzjiVar = zzji.UNINITIALIZED;
        if (zzjiVarZzw != zzjiVar || zzjiVarZzw2 != zzjiVar) {
            zzN(zzhhVar);
            if (zzhhVar.zzk(-10)) {
                zzjlVarZza = zzjl.zza(zzjiVarZzw, zzjiVarZzw2, -10);
            } else {
                if (!TextUtils.isEmpty(zzv().zzk()) && (iZzb == 0 || iZzb == 30 || iZzb == 10 || iZzb == 40)) {
                    zzlj zzljVar = this.zzo;
                    zzO(zzljVar);
                    zzljVar.zzs(new zzjl(null, null, -10), false);
                }
                zzjlVarZza = null;
            }
        }
        if (zzjlVarZza != null) {
            zzlj zzljVar2 = this.zzo;
            zzO(zzljVar2);
            zzljVar2.zzs(zzjlVarZza, true);
            zzjlVarZzl = zzjlVarZza;
        }
        zzlj zzljVar3 = this.zzo;
        zzO(zzljVar3);
        zzljVar3.zzA(zzjlVarZzl);
        zzN(zzhhVar);
        int iZzb2 = zzhhVar.zzj().zzb();
        zzji zzjiVarZzw3 = zzalVar.zzw("google_analytics_default_allow_ad_personalization_signals", true);
        if (zzjiVarZzw3 != zzjiVar) {
            zzgu zzguVar3 = this.zzh;
            zzP(zzguVar3);
            zzguVar3.zzk().zzb("Default ad personalization consent from Manifest", zzjiVarZzw3);
        }
        zzji zzjiVarZzw4 = zzalVar.zzw("google_analytics_default_allow_ad_user_data", true);
        if (zzjiVarZzw4 != zzjiVar && zzjl.zzu(-10, iZzb2)) {
            zzO(zzljVar3);
            zzljVar3.zzq(zzaz.zza(zzjiVarZzw4, -10), true);
        } else if (!TextUtils.isEmpty(zzv().zzk()) && (iZzb2 == 0 || iZzb2 == 30)) {
            zzO(zzljVar3);
            zzljVar3.zzq(new zzaz((Boolean) null, -10, (Boolean) null, (String) null), true);
        } else if (TextUtils.isEmpty(zzv().zzk()) && zzddVar != null && (bundle = zzddVar.zzd) != null && zzjl.zzu(30, iZzb2)) {
            zzaz zzazVarZzh = zzaz.zzh(bundle, 30);
            if (zzazVarZzh.zzd()) {
                zzO(zzljVar3);
                zzljVar3.zzq(zzazVarZzh, true);
            }
        }
        Boolean boolZzr = zzalVar.zzr("google_analytics_tcf_data_enabled");
        if (boolZzr == null || boolZzr.booleanValue()) {
            zzgu zzguVar4 = this.zzh;
            zzP(zzguVar4);
            zzguVar4.zzj().zza("TCF client enabled.");
            zzO(zzljVar3);
            zzljVar3.zzE();
            zzO(zzljVar3);
            zzljVar3.zzD();
        }
        zzN(zzhhVar);
        zzhe zzheVar = zzhhVar.zzc;
        if (zzheVar.zza() == 0) {
            zzgu zzguVar5 = this.zzh;
            zzP(zzguVar5);
            long j = this.zza;
            zzguVar5.zzk().zzb("Persisting first open", Long.valueOf(j));
            zzN(zzhhVar);
            zzheVar.zzb(j);
        }
        zzO(zzljVar3);
        zzljVar3.zzb.zzc();
        if (zzH()) {
            if (!TextUtils.isEmpty(zzv().zzk())) {
                zzpp zzppVar3 = this.zzk;
                zzN(zzppVar3);
                String strZzk = zzv().zzk();
                zzN(zzhhVar);
                zzhhVar.zzg();
                if (zzppVar3.zzB(strZzk, zzhhVar.zzd().getString("gmp_app_id", null))) {
                    zzgu zzguVar6 = this.zzh;
                    zzP(zzguVar6);
                    zzguVar6.zzi().zza("Rechecking which service to use due to a GMP App Id change");
                    zzN(zzhhVar);
                    zzhhVar.zzg();
                    Boolean boolZzi = zzhhVar.zzi();
                    SharedPreferences.Editor editorEdit = zzhhVar.zzd().edit();
                    editorEdit.clear();
                    editorEdit.apply();
                    if (boolZzi != null) {
                        zzhhVar.zzh(boolZzi);
                    }
                    zzm().zzh();
                    this.zzt.zzM();
                    this.zzt.zzI();
                    zzN(zzhhVar);
                    zzheVar.zzb(this.zza);
                    zzN(zzhhVar);
                    zzhhVar.zze.zzb(null);
                }
                zzN(zzhhVar);
                String strZzk2 = zzv().zzk();
                zzhhVar.zzg();
                SharedPreferences.Editor editorEdit2 = zzhhVar.zzd().edit();
                editorEdit2.putString("gmp_app_id", strZzk2);
                editorEdit2.apply();
            }
            zzN(zzhhVar);
            if (!zzhhVar.zzl().zzo(zzjk.ANALYTICS_STORAGE)) {
                zzN(zzhhVar);
                zzhhVar.zze.zzb(null);
            }
            zzO(zzljVar3);
            zzN(zzhhVar);
            zzljVar3.zzR(zzhhVar.zze.zza());
            zzpp zzppVar4 = this.zzk;
            zzN(zzppVar4);
            try {
                zzppVar4.zzu.zzc.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
            } catch (ClassNotFoundException unused) {
                zzhh zzhhVar2 = this.zzg;
                zzN(zzhhVar2);
                zzhg zzhgVar = zzhhVar2.zzq;
                if (!TextUtils.isEmpty(zzhgVar.zza())) {
                    zzgu zzguVar7 = this.zzh;
                    zzP(zzguVar7);
                    zzguVar7.zze().zza("Remote config removed with active feature rollouts");
                    zzN(zzhhVar2);
                    zzhgVar.zzb(null);
                }
            }
            if (!TextUtils.isEmpty(zzv().zzk())) {
                boolean zZzB = zzB();
                zzhh zzhhVar3 = this.zzg;
                zzN(zzhhVar3);
                if (!zzhhVar3.zzo() && !this.zzf.zzt()) {
                    zzN(zzhhVar3);
                    zzhhVar3.zzn(!zZzB);
                }
                if (zZzB) {
                    zzlj zzljVar4 = this.zzo;
                    zzO(zzljVar4);
                    zzljVar4.zzU();
                }
                zzoc zzocVar = this.zzj;
                zzO(zzocVar);
                zzocVar.zza.zza();
                zzt().zzC(new AtomicReference());
                zznl zznlVarZzt = zzt();
                zzN(zzhhVar3);
                zznlVarZzt.zzH(zzhhVar3.zzt.zza());
            }
        } else if (zzB()) {
            zzpp zzppVar5 = this.zzk;
            zzN(zzppVar5);
            if (!zzppVar5.zzY("android.permission.INTERNET")) {
                zzgu zzguVar8 = this.zzh;
                zzP(zzguVar8);
                zzguVar8.zzb().zza("App is missing INTERNET permission");
            }
            zzN(zzppVar5);
            if (!zzppVar5.zzY("android.permission.ACCESS_NETWORK_STATE")) {
                zzgu zzguVar9 = this.zzh;
                zzP(zzguVar9);
                zzguVar9.zzb().zza("App is missing ACCESS_NETWORK_STATE permission");
            }
            Context context = this.zzc;
            if (!Wrappers.packageManager(context).isCallerInstantApp() && !this.zzf.zzE()) {
                if (!zzpp.zzau(context)) {
                    zzgu zzguVar10 = this.zzh;
                    zzP(zzguVar10);
                    zzguVar10.zzb().zza("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzpp.zzQ(context, false)) {
                    zzgu zzguVar11 = this.zzh;
                    zzP(zzguVar11);
                    zzguVar11.zzb().zza("AppMeasurementService not registered/enabled");
                }
            }
            zzgu zzguVar12 = this.zzh;
            zzP(zzguVar12);
            zzguVar12.zzb().zza("Uploading is not possible. App measurement disabled");
        }
        zzqp.zza();
        if (this.zzf.zzp(null, zzfy.zzaQ)) {
            zzpp zzppVar6 = this.zzk;
            zzN(zzppVar6);
            if (zzppVar6.zzS()) {
                long jMax = Math.max(500L, ((((long) ((Integer) zzfy.zzax.zzb(null)).intValue()) * 1000) + ((long) new Random().nextInt(5000))) - this.zzm.elapsedRealtime());
                if (jMax > 500) {
                    zzgu zzguVar13 = this.zzh;
                    zzP(zzguVar13);
                    zzguVar13.zzk().zzb("Waiting to fetch trigger URIs until some time after boot. Delay in millis", Long.valueOf(jMax));
                }
                zzlj zzljVar5 = this.zzo;
                zzO(zzljVar5);
                zzljVar5.zzu(jMax);
            }
        }
        zzhh zzhhVar4 = this.zzg;
        zzN(zzhhVar4);
        zzhhVar4.zzj.zzb(true);
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzae zzaU() {
        return this.zze;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzgu zzaV() {
        zzgu zzguVar = this.zzh;
        zzP(zzguVar);
        return zzguVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzhz zzaW() {
        zzhz zzhzVar = this.zzi;
        zzP(zzhzVar);
        return zzhzVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Context zzaY() {
        return this.zzc;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Clock zzaZ() {
        return this.zzm;
    }

    public final zzal zzc() {
        return this.zzf;
    }

    public final zzhh zzd() {
        zzhh zzhhVar = this.zzg;
        zzN(zzhhVar);
        return zzhhVar;
    }

    public final zzgu zzf() {
        zzgu zzguVar = this.zzh;
        if (zzguVar == null || !zzguVar.zzv()) {
            return null;
        }
        return zzguVar;
    }

    public final zzoc zzh() {
        zzoc zzocVar = this.zzj;
        zzO(zzocVar);
        return zzocVar;
    }

    final zzhz zzi() {
        return this.zzi;
    }

    public final zzlj zzj() {
        zzlj zzljVar = this.zzo;
        zzO(zzljVar);
        return zzljVar;
    }

    public final zzpp zzk() {
        zzpp zzppVar = this.zzk;
        zzN(zzppVar);
        return zzppVar;
    }

    public final zzgn zzl() {
        return this.zzl;
    }

    public final zzgl zzm() {
        zzO(this.zzs);
        return this.zzs;
    }

    public final zzlo zzn() {
        zzlo zzloVar = this.zzq;
        zzP(zzloVar);
        return zzloVar;
    }

    public final boolean zzp() {
        return this.zzd;
    }

    public final String zzq() {
        return this.zzr;
    }

    public final zzmb zzs() {
        zzmb zzmbVar = this.zzn;
        zzO(zzmbVar);
        return zzmbVar;
    }

    public final zznl zzt() {
        zzO(this.zzt);
        return this.zzt;
    }

    public final zzba zzu() {
        zzP(this.zzu);
        return this.zzu;
    }

    public final zzgi zzv() {
        zzO(this.zzv);
        return this.zzv;
    }

    public final zzd zzw() {
        zzd zzdVar = this.zzp;
        zzM(zzdVar);
        return zzdVar;
    }

    public final zzlq zzx() {
        zzM(this.zzw);
        return this.zzw;
    }

    final void zzz(boolean z) {
        this.zzA = Boolean.valueOf(z);
    }
}
