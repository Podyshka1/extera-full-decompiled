package com.google.android.recaptcha.internal;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.ProgressBar;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbp implements zzbk, zzbq {
    private final zzalc zza;
    private final zzbr zzb;
    private final CoroutineScope zzc;
    private final CompletableDeferred zzd = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    private WebView zze;
    private ProgressBar zzf;
    private Function0 zzg;

    public zzbp(zzalc zzalcVar, zzbr zzbrVar, CoroutineScope coroutineScope) {
        this.zza = zzalcVar;
        this.zzb = zzbrVar;
        this.zzc = coroutineScope;
    }

    private final void zzn(Exception exc, WebView webView) {
        this.zzd.completeExceptionally(exc);
        BuildersKt__Builders_commonKt.launch$default(this.zzc, null, null, new zzbm(this, webView, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzo(WebView webView) {
        this.zzb.zzc();
        zzp();
        if (webView != null) {
            try {
                Context context = webView.getContext();
                MutableContextWrapper mutableContextWrapper = context instanceof MutableContextWrapper ? (MutableContextWrapper) context : null;
                if (mutableContextWrapper != null) {
                    mutableContextWrapper.setBaseContext(webView.getContext().getApplicationContext());
                    Unit unit = Unit.INSTANCE;
                }
                ViewParent parent = webView.getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(webView);
                }
            } catch (Throwable th) {
                ViewParent parent2 = webView.getParent();
                ViewGroup viewGroup2 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
                if (viewGroup2 != null) {
                    viewGroup2.removeView(webView);
                }
                throw th;
            }
        }
        if (webView == this.zze) {
            this.zze = null;
        }
        Function0 function0 = this.zzg;
        if (function0 != null) {
            function0.invoke();
        }
        this.zzg = null;
    }

    private final void zzp() {
        ProgressBar progressBar = this.zzf;
        if (progressBar != null) {
            ViewParent parent = progressBar.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(progressBar);
            }
            this.zzf = null;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzbk
    public final Object zza(Continuation continuation) {
        return this.zzd.await(continuation);
    }

    @Override // com.google.android.recaptcha.internal.zzbk
    public final void zzc() {
        zzo(this.zze);
    }

    @Override // com.google.android.recaptcha.internal.zzbq
    public final void zzg() {
        zzn(new zzhg(zzhf.zzb, zzhe.zzaC, "WebView render process is gone.", null, 8, null), this.zze);
    }
}
