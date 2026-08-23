package com.google.android.recaptcha.internal;

import android.app.Application;
import android.webkit.WebView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaErrorCode;
import com.google.android.recaptcha.RecaptchaException;
import java.util.UUID;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzam {
    private static zzaw zzb;
    public static final zzam zza = new zzam();
    private static final String zzc = UUID.randomUUID().toString();
    private static final Mutex zzd = MutexKt.Mutex$default(false, 1, null);
    private static final zzt zze = new zzt();
    private static zzg zzf = new zzg(null, 1, 0 == true ? 1 : 0);

    private zzam() {
    }

    public static final Object zzc(Application application, String str, long j, zzbq zzbqVar, Continuation continuation) {
        return BuildersKt.withContext(zze.zzb().getCoroutineContext(), new zzah(application, str, j, null, null), continuation);
    }

    public static final Task zzd(Application application, String str, long j) {
        return zzj.zza(BuildersKt__Builders_commonKt.async$default(zze.zzb(), null, null, new zzak(application, str, j, null), 3, null));
    }

    public static final zzg zze() {
        return zzf;
    }

    public static final void zzf(zzg zzgVar) {
        zzf = zzgVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Type inference failed for: r0v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.recaptcha.internal.zzai, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(Application application, String str, long j, zzab zzabVar, WebView webView, zzbq zzbqVar, zzt zztVar, Continuation continuation) throws Throwable {
        ?? zzaiVar;
        zzt zztVar2;
        long j2;
        String str2;
        zzab zzabVar2;
        Application application2;
        ?? r4;
        zzaw zzawVar;
        zzbg zzbgVar;
        ?? r1;
        zzbd zzbdVar;
        ?? r42;
        if (continuation instanceof zzai) {
            zzai zzaiVar2 = (zzai) continuation;
            int i = zzaiVar2.zzg;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzaiVar2.zzg = i - Integer.MIN_VALUE;
                zzaiVar = zzaiVar2;
            } else {
                zzaiVar = new zzai(this, continuation);
            }
        }
        Object obj = zzaiVar.zze;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzaiVar.zzg;
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ?? r0 = zzd;
                zzaiVar.zza = application;
                zzaiVar.zzb = str;
                zzaiVar.zzc = zzabVar;
                zzaiVar.zzi = zztVar;
                zzaiVar.zzh = r0;
                zzaiVar.zzd = j;
                zzaiVar.zzg = 1;
                if (r0.lock(null, zzaiVar) != coroutine_suspended) {
                    zztVar2 = zztVar;
                    j2 = j;
                    str2 = str;
                    zzabVar2 = zzabVar;
                    application2 = application;
                    r4 = r0;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                zzbgVar = (zzbg) zzaiVar.zzc;
                zzbdVar = (zzbd) zzaiVar.zzb;
                Mutex mutex = (Mutex) zzaiVar.zza;
                try {
                    ResultKt.throwOnFailure(obj);
                    r1 = mutex;
                    zzawVar = (zzaw) obj;
                    zzb = zzawVar;
                    zzbgVar.zza(zzbdVar.zza(zzne.INIT_TOTAL));
                    r42 = r1;
                    r42.unlock(null);
                    return zzawVar;
                } catch (RecaptchaException e) {
                    throw e;
                } catch (Exception unused) {
                    throw new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null);
                }
            }
            long j3 = zzaiVar.zzd;
            Mutex mutex2 = zzaiVar.zzh;
            zzt zztVar3 = zzaiVar.zzi;
            zzabVar2 = (zzab) zzaiVar.zzc;
            str2 = (String) zzaiVar.zzb;
            Application application3 = (Application) zzaiVar.zza;
            ResultKt.throwOnFailure(obj);
            j2 = j3;
            r4 = mutex2;
            zztVar2 = zztVar3;
            application2 = application3;
            String string = UUID.randomUUID().toString();
            zzbd zzbdVar2 = new zzbd(zzc, string, null);
            zzbdVar2.zzc(string);
            Application application4 = application2;
            zzab zzabVar3 = zzabVar2;
            String str3 = str2;
            zzt zztVar4 = zztVar2;
            zzbg zzbgVar2 = new zzbg(str3, application4, zzabVar3, zztVar4, new zzbm(application2, new zzbo(zzabVar2.zzc()), zztVar2.zza()));
            zzne zzneVar = zzne.INIT_TOTAL;
            zzbb zzbbVarZza = zzbdVar2.zza(zzneVar);
            zzbgVar2.zze.put(zzbbVarZza, new zzbf(zzbbVarZza, zzbgVar2.zza, new zzac()));
            if (j2 < 5000) {
                zzbgVar2.zzb(zzbdVar2.zza(zzneVar), new zzp(zzn.zzm, zzl.zzT, null), null);
                throw new RecaptchaException(RecaptchaErrorCode.INVALID_TIMEOUT, null, 2, null);
            }
            if (ContextCompat.checkSelfPermission(application4, "android.permission.INTERNET") != 0) {
                zzbgVar2.zzb(zzbdVar2.zza(zzneVar), new zzp(zzn.zze, zzl.zzv, null), null);
                throw new RecaptchaException(RecaptchaErrorCode.NETWORK_ERROR, null, 2, null);
            }
            zzbq zzbqVar2 = new zzbq(new zzy(application4), zzbgVar2);
            zzawVar = zzb;
            if (zzawVar != null) {
                if (Intrinsics.areEqual(zzawVar.zzg(), str3)) {
                    zzbgVar2.zza(zzbdVar2.zza(zzneVar));
                    r42 = r4;
                    r42.unlock(null);
                    return zzawVar;
                }
                throw new RecaptchaException(RecaptchaErrorCode.INVALID_SITEKEY, "Only one site key can be used per runtime. The site key you provided " + str3 + " is different than " + zzawVar.zzg());
            }
            zzaiVar.zza = r4;
            zzaiVar.zzb = zzbdVar2;
            zzaiVar.zzc = zzbgVar2;
            zzaiVar.zzi = null;
            zzaiVar.zzh = null;
            zzaiVar.zzg = 2;
            Object objWithTimeout = TimeoutKt.withTimeout(j2, new zzaj(application4, zzabVar3, str3, zzbqVar2, zzbdVar2, zztVar4, null, zzbgVar2, j2, null), zzaiVar);
            if (objWithTimeout != coroutine_suspended) {
                zzbgVar = zzbgVar2;
                obj = objWithTimeout;
                r1 = r4;
                zzbdVar = zzbdVar2;
                zzawVar = (zzaw) obj;
                zzb = zzawVar;
                zzbgVar.zza(zzbdVar.zza(zzne.INIT_TOTAL));
                r42 = r1;
                r42.unlock(null);
                return zzawVar;
            }
            return coroutine_suspended;
        } catch (RecaptchaException e2) {
            throw e2;
        } catch (Exception unused2) {
            throw new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null);
        } catch (Throwable th2) {
            th = th2;
            zzaiVar = r4;
            zzaiVar.unlock(null);
            throw th;
        }
    }
}
