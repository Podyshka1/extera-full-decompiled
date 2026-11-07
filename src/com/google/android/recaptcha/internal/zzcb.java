package com.google.android.recaptcha.internal;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import kotlin.Unit;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes5.dex */
final class zzcb {
    private final Object zza = new Object();
    private WebView zzb;
    private CompletableDeferred zzc;
    private Job zzd;

    public final void zza() {
        synchronized (this.zza) {
            try {
                WebView webView = this.zzb;
                if (webView != null) {
                    Context context = webView.getContext();
                    MutableContextWrapper mutableContextWrapper = context instanceof MutableContextWrapper ? (MutableContextWrapper) context : null;
                    if (mutableContextWrapper != null) {
                        mutableContextWrapper.setBaseContext(webView.getContext().getApplicationContext());
                    }
                    webView.stopLoading();
                    ViewParent parent = webView.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    webView.destroy();
                }
                this.zzb = null;
                CompletableDeferred completableDeferred = this.zzc;
                if (completableDeferred != null) {
                    Job.cancel$default(completableDeferred, null, 1, null);
                }
                this.zzc = null;
                Job job = this.zzd;
                if (job != null) {
                    Job.cancel$default(job, null, 1, null);
                }
                this.zzd = null;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzcf zzb() {
        zzcf zzceVar;
        synchronized (this.zza) {
            try {
                WebView webView = this.zzb;
                CompletableDeferred completableDeferred = this.zzc;
                if (webView != null) {
                    zzceVar = new zzcd(webView);
                } else if (completableDeferred != null) {
                    zzceVar = new zzcc(completableDeferred);
                } else {
                    CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                    this.zzc = completableDeferredCompletableDeferred$default;
                    zzceVar = new zzce(completableDeferredCompletableDeferred$default);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzceVar;
    }

    public final void zzc(WebView webView) {
        synchronized (this.zza) {
            this.zzb = webView;
            this.zzd = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void zzd(CompletableDeferred completableDeferred) {
        synchronized (this.zza) {
            try {
                if (this.zzc == completableDeferred) {
                    this.zzc = null;
                    this.zzd = null;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zze(Job job) {
        synchronized (this.zza) {
            try {
                if (this.zzc != null) {
                    this.zzd = job;
                } else {
                    Job.cancel$default(job, null, 1, null);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
