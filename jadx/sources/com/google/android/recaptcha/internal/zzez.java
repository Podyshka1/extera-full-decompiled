package com.google.android.recaptcha.internal;

import android.content.Context;
import android.webkit.WebView;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzez implements zza {
    public static final zzep zza = new zzep(null);
    public CompletableDeferred zzb;
    public zzbu zzc;
    private final WebView zzd;
    private final String zze;
    private final Context zzf;
    private final zzab zzg;
    private final zzbd zzh;
    private final zzbg zzi;
    private final zzbq zzj;
    private final Map zzk = zzfa.zza();
    private final Map zzl;
    private final Map zzm;
    private final zzfh zzn;
    private final zzeq zzo;
    private final zzbd zzp;
    private final zzt zzq;

    public zzez(WebView webView, String str, Context context, zzab zzabVar, zzbd zzbdVar, zzt zztVar, zzbg zzbgVar, zzbq zzbqVar) {
        this.zzd = webView;
        this.zze = str;
        this.zzf = context;
        this.zzg = zzabVar;
        this.zzh = zzbdVar;
        this.zzq = zztVar;
        this.zzi = zzbgVar;
        this.zzj = zzbqVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzl = linkedHashMap;
        this.zzm = linkedHashMap;
        this.zzn = zzfh.zzc();
        zzeq zzeqVar = new zzeq(this);
        this.zzo = zzeqVar;
        zzbd zzbdVarZzb = zzbdVar.zzb();
        zzbdVarZzb.zzc(zzbdVar.zzd());
        this.zzp = zzbdVarZzb;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.addJavascriptInterface(zzeqVar, "RN");
        webView.setWebViewClient(new zzeu(this));
    }

    public static final /* synthetic */ void zzl(zzez zzezVar, zzoe zzoeVar) {
        zzezVar.zzd.clearCache(true);
        zzbb zzbbVarZza = zzezVar.zzp.zza(zzne.INIT_NETWORK);
        zzbg zzbgVar = zzezVar.zzi;
        zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
        BuildersKt__Builders_commonKt.launch$default(zzezVar.zzq.zza(), null, null, new zzey(zzezVar, zzoeVar, zzbbVarZza, null), 3, null);
    }

    public static final /* synthetic */ void zzm(zzez zzezVar, String str) {
        zzbb zzbbVarZza = zzezVar.zzp.zza(zzne.LOAD_WEBVIEW);
        try {
            zzbg zzbgVar = zzezVar.zzi;
            zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
            zzezVar.zzd.loadDataWithBaseURL(zzezVar.zzg.zza(), str, "text/html", "utf-8", null);
        } catch (Exception unused) {
            zzp zzpVar = new zzp(zzn.zzc, zzl.zzag, null);
            zzezVar.zzi.zzb(zzbbVarZza, zzpVar, null);
            zzezVar.zzk().completeExceptionally(zzpVar);
        }
    }

    private final zzp zzp(Exception exc, zzp zzpVar) {
        return exc instanceof TimeoutCancellationException ? new zzp(zzn.zzc, zzl.zzj, null) : exc instanceof zzp ? (zzp) exc : zzpVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zza
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(String str, long j, Continuation continuation) {
        zzer zzerVar;
        Exception e;
        zzez zzezVar;
        CompletableDeferred completableDeferred;
        if (continuation instanceof zzer) {
            zzerVar = (zzer) continuation;
            int i = zzerVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzerVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzerVar = new zzer(this, continuation);
            }
        }
        Object objWithTimeout = zzerVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzerVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithTimeout);
            try {
                zzet zzetVar = new zzet(str, this, null);
                zzerVar.zzd = this;
                zzerVar.zze = str;
                zzerVar.zzc = 1;
                objWithTimeout = TimeoutKt.withTimeout(j, zzetVar, zzerVar);
                if (objWithTimeout == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zzezVar = this;
            } catch (Exception e2) {
                e = e2;
                zzezVar = this;
                zzp zzpVarZzp = zzezVar.zzp(e, new zzp(zzn.zzc, zzl.zzai, e.getClass().getSimpleName()));
                completableDeferred = (CompletableDeferred) zzezVar.zzl.remove(str);
                if (completableDeferred != null) {
                }
                Result.Companion companion = Result.Companion;
                return Result.m3604constructorimpl(ResultKt.createFailure(zzpVarZzp));
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = zzerVar.zze;
            zzezVar = zzerVar.zzd;
            try {
                ResultKt.throwOnFailure(objWithTimeout);
            } catch (Exception e3) {
                e = e3;
                zzp zzpVarZzp2 = zzezVar.zzp(e, new zzp(zzn.zzc, zzl.zzai, e.getClass().getSimpleName()));
                completableDeferred = (CompletableDeferred) zzezVar.zzl.remove(str);
                if (completableDeferred != null) {
                    Boxing.boxBoolean(completableDeferred.completeExceptionally(zzpVarZzp2));
                }
                Result.Companion companion2 = Result.Companion;
                return Result.m3604constructorimpl(ResultKt.createFailure(zzpVarZzp2));
            }
        }
        return Result.m3604constructorimpl((zzog) objWithTimeout);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e3 A[LOOP:0: B:41:0x00dd->B:43:0x00e3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.google.android.recaptcha.internal.zza
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzb(long j, zzoe zzoeVar, Continuation continuation) {
        zzev zzevVar;
        Exception e;
        zzez zzezVar;
        Iterator it;
        if (continuation instanceof zzev) {
            zzevVar = (zzev) continuation;
            int i = zzevVar.zzd;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzevVar.zzd = i - Integer.MIN_VALUE;
            } else {
                zzevVar = new zzev(this, continuation);
            }
        }
        Object objWithTimeout = zzevVar.zzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzevVar.zzd;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithTimeout);
            try {
                zzbg zzbgVar = this.zzi;
                zzbb zzbbVarZza = this.zzp.zza(zzne.INIT_NATIVE);
                zzbgVar.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar.zza, new zzac()));
                this.zzc = zzo(zzoeVar, new zzag(zzoeVar.zzf()));
                this.zzb = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                Boxing.boxInt(zzk().hashCode());
                zzew zzewVar = new zzew(this, zzoeVar, null);
                zzevVar.zze = this;
                zzevVar.zza = j;
                zzevVar.zzd = 1;
                objWithTimeout = TimeoutKt.withTimeout(j, zzewVar, zzevVar);
                if (objWithTimeout == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zzezVar = this;
            } catch (Exception e2) {
                e = e2;
                zzezVar = this;
                e.getMessage();
                boolean z = e instanceof TimeoutCancellationException;
                if (!z) {
                }
                Long lZza = zzezVar.zzo.zza();
                if (z) {
                }
                it = listListOf.iterator();
                while (it.hasNext()) {
                }
                Result.Companion companion = Result.Companion;
                return Result.m3604constructorimpl(ResultKt.createFailure(zzpVar.zzc()));
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = zzevVar.zza;
            zzezVar = zzevVar.zze;
            try {
                ResultKt.throwOnFailure(objWithTimeout);
            } catch (Exception e3) {
                e = e3;
                e.getMessage();
                boolean z2 = e instanceof TimeoutCancellationException;
                List listListOf = !z2 ? CollectionsKt.listOf((Object[]) new zzne[]{zzne.INIT_TOTAL, zzne.LOAD_WEBVIEW}) : CollectionsKt.listOf(zzne.INIT_TOTAL);
                Long lZza2 = zzezVar.zzo.zza();
                zzp zzpVar = (!z2 && (lZza2 == null || lZza2.longValue() > j + (-2000))) ? new zzp(zzn.zze, zzl.zzS, null) : zzezVar.zzp(e, new zzp(zzn.zzc, zzl.zzah, e.getClass().getSimpleName()));
                it = listListOf.iterator();
                while (it.hasNext()) {
                    zzezVar.zzi.zzb(zzezVar.zzp.zza((zzne) it.next()), zzpVar, null);
                }
                Result.Companion companion2 = Result.Companion;
                return Result.m3604constructorimpl(ResultKt.createFailure(zzpVar.zzc()));
            }
        }
        return ((Result) objWithTimeout).m3611unboximpl();
    }

    public final WebView zzc() {
        return this.zzd;
    }

    public final zzbq zzf() {
        return this.zzj;
    }

    public final zzeq zzg() {
        return this.zzo;
    }

    public final CompletableDeferred zzk() {
        CompletableDeferred completableDeferred = this.zzb;
        if (completableDeferred != null) {
            return completableDeferred;
        }
        return null;
    }

    public final zzca zzo(zzoe zzoeVar, zzag zzagVar) {
        zzcd zzcdVar = new zzcd(this.zzd, this.zzq.zzb());
        zzef zzefVar = new zzef();
        zzefVar.zzb(CollectionsKt.toLongArray(zzoeVar.zzK()));
        zzcl zzclVar = new zzcl(zzcdVar, zzagVar, new zzaa());
        zzeg zzegVar = new zzeg(zzefVar, new zzed());
        zzclVar.zzf(3, this.zzf);
        zzclVar.zzf(5, zzen.class.getMethod("cs", new Object[0].getClass()));
        zzclVar.zzf(6, new zzeh(this.zzf));
        zzclVar.zzf(7, new zzej());
        zzclVar.zzf(8, new zzeo(this.zzf));
        zzclVar.zzf(9, new zzek(this.zzf));
        zzclVar.zzf(10, new zzei(this.zzf));
        return new zzca(this.zzq.zzc(), zzclVar, zzegVar, zzbt.zza());
    }
}
