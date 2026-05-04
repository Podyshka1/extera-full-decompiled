package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzky implements Application.ActivityLifecycleCallbacks, zzkw {
    final /* synthetic */ zzlj zza;

    zzky(zzlj zzljVar) {
        Objects.requireNonNull(zzljVar);
        this.zza = zzljVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) throws Throwable {
        zza(com.google.android.gms.internal.measurement.zzdf.zza(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzb(com.google.android.gms.internal.measurement.zzdf.zza(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzc(com.google.android.gms.internal.measurement.zzdf.zza(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzd(com.google.android.gms.internal.measurement.zzdf.zza(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zze(com.google.android.gms.internal.measurement.zzdf.zza(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0082  */
    @Override // com.google.android.gms.measurement.internal.zzkw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(com.google.android.gms.internal.measurement.zzdf zzdfVar, Bundle bundle) throws Throwable {
        zzky zzkyVar;
        zzic zzicVar;
        zzlj zzljVar;
        zzic zzicVar2;
        Intent intent;
        Uri uri;
        try {
            try {
                zzljVar = this.zza;
                zzicVar2 = zzljVar.zzu;
                zzicVar2.zzaV().zzk().zza("onActivityCreated");
                intent = zzdfVar.zzc;
            } catch (Throwable th) {
                th = th;
                zzkyVar.zza.zzu.zzs().zzm(zzdfVar, bundle);
                throw th;
            }
        } catch (RuntimeException e) {
            e = e;
            zzkyVar = this;
        } catch (Throwable th2) {
            th = th2;
            zzkyVar = this;
            zzkyVar.zza.zzu.zzs().zzm(zzdfVar, bundle);
            throw th;
        }
        if (intent != null) {
            Uri data = intent.getData();
            if (data == null || !data.isHierarchical()) {
                Bundle extras = intent.getExtras();
                uri = null;
                if (extras != null) {
                    String string = extras.getString("com.android.vending.referral_url");
                    if (!TextUtils.isEmpty(string)) {
                        data = Uri.parse(string);
                        uri = data;
                    }
                }
                if (uri != null && uri.isHierarchical()) {
                    zzicVar2.zzk();
                    String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    String str = (!"android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "gs" : "auto";
                    String queryParameter = uri.getQueryParameter("referrer");
                    zzkyVar = this;
                    try {
                        zzicVar2.zzaW().zzj(new zzkx(zzkyVar, bundle != null, uri, str, queryParameter));
                    } catch (RuntimeException e2) {
                        e = e2;
                        zzkyVar.zza.zzu.zzaV().zzb().zzb("Throwable caught in onActivityCreated", e);
                    }
                    zzicVar = zzkyVar.zza.zzu;
                }
            } else {
                uri = data;
                if (uri != null) {
                    zzicVar2.zzk();
                    String stringExtra2 = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    if ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra2)) {
                        String str2 = (!"android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra2) || "https://www.google.com".equals(stringExtra2) || "android-app://com.google.appcrawler".equals(stringExtra2)) ? "gs" : "auto";
                        String queryParameter2 = uri.getQueryParameter("referrer");
                        zzkyVar = this;
                        zzicVar2.zzaW().zzj(new zzkx(zzkyVar, bundle != null, uri, str2, queryParameter2));
                        zzicVar = zzkyVar.zza.zzu;
                    }
                }
            }
            zzicVar.zzs().zzm(zzdfVar, bundle);
        }
        zzicVar = zzljVar.zzu;
        zzicVar.zzs().zzm(zzdfVar, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zzb(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        this.zza.zzu.zzs().zzs(zzdfVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zzc(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        zzic zzicVar = this.zza.zzu;
        zzicVar.zzs().zzp(zzdfVar);
        zzoc zzocVarZzh = zzicVar.zzh();
        zzic zzicVar2 = zzocVarZzh.zzu;
        zzicVar2.zzaW().zzj(new zznv(zzocVarZzh, zzicVar2.zzaZ().elapsedRealtime()));
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zzd(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        zzic zzicVar = this.zza.zzu;
        zzoc zzocVarZzh = zzicVar.zzh();
        zzic zzicVar2 = zzocVarZzh.zzu;
        zzicVar2.zzaW().zzj(new zznu(zzocVarZzh, zzicVar2.zzaZ().elapsedRealtime()));
        zzicVar.zzs().zzn(zzdfVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zze(com.google.android.gms.internal.measurement.zzdf zzdfVar, Bundle bundle) {
        this.zza.zzu.zzs().zzq(zzdfVar, bundle);
    }
}
