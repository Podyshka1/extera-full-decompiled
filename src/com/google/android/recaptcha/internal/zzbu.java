package com.google.android.recaptcha.internal;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbu extends WebViewClient {
    final /* synthetic */ CompletableDeferred zza;
    final /* synthetic */ WebView zzb;
    final /* synthetic */ zzby zzc;

    public zzbu(CompletableDeferred completableDeferred, WebView webView, zzby zzbyVar) {
        this.zza = completableDeferred;
        this.zzb = webView;
        this.zzc = zzbyVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.zza.complete(this.zzb);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            return;
        }
        this.zza.completeExceptionally(new zzhg(zzhf.zzc, new zzhe(webResourceError != null ? webResourceError.getErrorCode() : -1), null, null, 12, null));
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        CompletableDeferred completableDeferred = this.zza;
        if (!completableDeferred.isCompleted()) {
            completableDeferred.completeExceptionally(new zzhg(zzhf.zzb, zzhe.zzaC, null, null, 12, null));
            return true;
        }
        zzby zzbyVar = this.zzc;
        zzbyVar.zzd();
        zzbyVar.zzc.zzd();
        return true;
    }
}
