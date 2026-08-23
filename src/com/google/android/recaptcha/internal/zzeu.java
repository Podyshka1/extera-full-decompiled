package com.google.android.recaptcha.internal;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.ByteArrayInputStream;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;

/* JADX INFO: loaded from: classes5.dex */
public final class zzeu extends WebViewClient {
    final /* synthetic */ zzez zza;

    public zzeu(zzez zzezVar) {
        this.zza = zzezVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        System.currentTimeMillis();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        zzez zzezVar = this.zza;
        zzezVar.zzi.zza(zzezVar.zzp.zza(zzne.INIT_NETWORK));
        long jZza = this.zza.zzn.zza(TimeUnit.MICROSECONDS);
        zzv zzvVar = zzv.zza;
        zzv.zza(zzx.zzl.zza(), jZza);
    }

    @Override // android.webkit.WebViewClient
    @Deprecated(message = "Use onReceivedError(WebView,request,error) instead")
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        zzn zznVar = zzn.zze;
        zzl zzlVar = (zzl) this.zza.zzk.get(Integer.valueOf(i));
        if (zzlVar == null) {
            zzlVar = zzl.zzY;
        }
        zzp zzpVar = new zzp(zznVar, zzlVar, null);
        this.zza.zzk().hashCode();
        zzpVar.getMessage();
        this.zza.zzk().completeExceptionally(zzpVar);
    }

    @Override // android.webkit.WebViewClient
    @Deprecated(message = "Use shouldInterceptRequest(WebView,WebResourceRequest) instead")
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        Uri uri = Uri.parse(str);
        if (!zzfb.zzb(uri) || zzfb.zza(uri)) {
            return super.shouldInterceptRequest(webView, str);
        }
        zzp zzpVar = new zzp(zzn.zzc, zzl.zzac, null);
        this.zza.zzk().hashCode();
        uri.toString();
        this.zza.zzk().completeExceptionally(zzpVar);
        return new WebResourceResponse("text/plain", "UTF-8", new ByteArrayInputStream(new byte[0]));
    }
}
