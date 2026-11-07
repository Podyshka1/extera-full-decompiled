package com.google.android.recaptcha.internal;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.webkit.WebView;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzby implements zzbr {
    private final String zza;
    private final zzhq zzb;
    private final zzbi zzc;
    private final Context zzd;
    private final zzcb zze = new zzcb();
    private final AtomicBoolean zzf = new AtomicBoolean(false);
    private final zzhu zzg;

    public /* synthetic */ zzby(String str, zzhu zzhuVar, zzhq zzhqVar, zzbi zzbiVar, Context context, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this.zza = str;
        this.zzg = zzhuVar;
        this.zzb = zzhqVar;
        this.zzc = zzbiVar;
        this.zzd = context;
    }

    public static final /* synthetic */ WebView zze(zzby zzbyVar, CompletableDeferred completableDeferred) {
        WebView webView = new WebView(new MutableContextWrapper(zzbyVar.zzd.getApplicationContext()));
        webView.getSettings().setJavaScriptEnabled(true);
        webView.addJavascriptInterface(zzbyVar.zzc, "recaptchaMobileBridge");
        webView.setWebViewClient(new zzbu(completableDeferred, webView, zzbyVar));
        String languageTag = Locale.getDefault().toLanguageTag();
        String strZzf = zzbyVar.zzb.zzf();
        int length = strZzf.length();
        int length2 = String.valueOf(languageTag).length();
        String str = zzbyVar.zza;
        StringBuilder sb = new StringBuilder(length + 4 + length2 + 3 + String.valueOf(str).length());
        sb.append(strZzf);
        sb.append("?hl=");
        sb.append(languageTag);
        sb.append("&k=");
        sb.append(str);
        webView.loadUrl(sb.toString());
        return webView;
    }

    private final CompletableDeferred zzh() {
        if (this.zzf.compareAndSet(false, true)) {
            this.zzd.getApplicationContext().registerComponentCallbacks(new zzbt(this));
        }
        zzcb zzcbVar = this.zze;
        zzcf zzcfVarZzb = zzcbVar.zzb();
        if (zzcfVarZzb instanceof zzcd) {
            return CompletableDeferredKt.CompletableDeferred(((zzcd) zzcfVarZzb).zza());
        }
        if (zzcfVarZzb instanceof zzcc) {
            return ((zzcc) zzcfVarZzb).zza();
        }
        if (!(zzcfVarZzb instanceof zzce)) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
            return null;
        }
        zzce zzceVar = (zzce) zzcfVarZzb;
        zzcbVar.zze(BuildersKt__Builders_commonKt.launch$default(this.zzg.zza(), null, null, new zzbx(this, zzceVar.zza(), null), 3, null));
        return zzceVar.zza();
    }

    @Override // com.google.android.recaptcha.internal.zzbr
    public final void zza() {
        zzh();
    }

    @Override // com.google.android.recaptcha.internal.zzbr
    public final void zzc() {
        this.zzc.zzb();
    }

    public final void zzd() {
        this.zze.zza();
    }
}
