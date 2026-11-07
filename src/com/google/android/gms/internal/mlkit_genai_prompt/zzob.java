package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzob extends zzol implements Runnable {
    public static final /* synthetic */ int $r8$clinit = 0;
    ListenableFuture zza;
    Class zzb;
    Object zzc;

    public zzob(ListenableFuture listenableFuture, Class cls, Object obj) {
        this.zza = listenableFuture;
        this.zzb = cls;
        this.zzc = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
        if (((obj == null) || ((listenableFuture == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        this.zza = null;
        try {
            th = listenableFuture instanceof zzpn ? ((zzpn) listenableFuture).zzk() : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                String strValueOf = String.valueOf(listenableFuture.getClass());
                String strValueOf2 = String.valueOf(e.getClass());
                StringBuilder sb = new StringBuilder(strValueOf.length() + 19 + strValueOf2.length() + 16);
                sb.append("Future type ");
                sb.append(strValueOf);
                sb.append(" threw ");
                sb.append(strValueOf2);
                sb.append(" without a cause");
                cause = new NullPointerException(sb.toString());
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        Object objZzi = th == null ? zzot.zzi(listenableFuture) : null;
        if (th == null) {
            zzh(objZzi);
            return;
        }
        if (!cls.isInstance(th)) {
            zzj(listenableFuture);
            return;
        }
        try {
            Object objZzb = zzb(obj, th);
            this.zzb = null;
            this.zzc = null;
            zza(objZzb);
        } catch (Throwable th2) {
            try {
                zzpj.zza(th2);
                zzi(th2);
            } finally {
                this.zzb = null;
                this.zzc = null;
            }
        }
    }

    public abstract void zza(Object obj);

    public abstract Object zzb(Object obj, Throwable th);

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoc
    public final void zzc() {
        zzl(this.zza);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoc
    public final String zzd() {
        String string;
        ListenableFuture listenableFuture = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
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
        if (cls == null || obj == null) {
            if (strZzd != null) {
                return string.concat(strZzd);
            }
            return null;
        }
        int length = string.length();
        String string3 = cls.toString();
        int length2 = string3.length();
        String string4 = obj.toString();
        StringBuilder sb2 = new StringBuilder(length + 15 + length2 + 13 + string4.length() + 1);
        sb2.append(string);
        sb2.append("exceptionType=[");
        sb2.append(string3);
        sb2.append("], fallback=[");
        sb2.append(string4);
        sb2.append("]");
        return sb2.toString();
    }
}
