package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzoi extends zzol implements Runnable {
    public static final /* synthetic */ int $r8$clinit = 0;
    ListenableFuture zza;
    Object zzb;

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture = this.zza;
        Object obj = this.zzb;
        if ((isCancelled() | (listenableFuture == null)) || (obj == null)) {
            return;
        }
        this.zza = null;
        if (listenableFuture.isCancelled()) {
            zzj(listenableFuture);
            return;
        }
        try {
            try {
                Object objZzb = zzb(obj, zzot.zzi(listenableFuture));
                this.zzb = null;
                zza(objZzb);
            } catch (Throwable th) {
                try {
                    zzpj.zza(th);
                    zzi(th);
                } finally {
                    this.zzb = null;
                }
            }
        } catch (Error e) {
            zzi(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e2) {
            zzi(e2.getCause());
        } catch (Exception e3) {
            zzi(e3);
        }
    }

    public abstract void zza(Object obj);

    public abstract Object zzb(Object obj, Object obj2);

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoc
    public final void zzc() {
        zzl(this.zza);
        this.zza = null;
        this.zzb = null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoc
    public final String zzd() {
        String string;
        ListenableFuture listenableFuture = this.zza;
        Object obj = this.zzb;
        String strZzd = super.zzd();
        if (listenableFuture != null) {
            String string2 = listenableFuture.toString();
            StringBuilder sb = new StringBuilder(string2.length() + 16);
            sb.append("inputFuture=[");
            sb.append(string2);
            sb.append("], ");
            string = sb.toString();
        } else {
            string = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (obj == null) {
            if (strZzd != null) {
                return string.concat(strZzd);
            }
            return null;
        }
        int length = string.length();
        String string3 = obj.toString();
        StringBuilder sb2 = new StringBuilder(length + 10 + string3.length() + 1);
        sb2.append(string);
        sb2.append("function=[");
        sb2.append(string3);
        sb2.append("]");
        return sb2.toString();
    }

    public zzoi(ListenableFuture listenableFuture, Object obj) {
        listenableFuture.getClass();
        this.zza = listenableFuture;
        this.zzb = obj;
    }
}
