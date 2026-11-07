package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxg {
    private final ExecutorService zza;
    private final String zzb;
    private final zzxj zzc;
    private final Mutex zzd = MutexKt.Mutex$default(false, 1, null);
    private final Map zze = new LinkedHashMap();
    private final Mutex zzf = MutexKt.Mutex$default(false, 1, null);
    private Job zzg;
    private final CoroutineScope zzh;

    public zzxg(ExecutorService executorService, String str, zzxj zzxjVar) {
        this.zza = executorService;
        this.zzb = str;
        this.zzc = zzxjVar;
        this.zzh = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(executorService));
    }

    public static /* synthetic */ Object zza(zzxg zzxgVar, Context context, String str, Continuation continuation) {
        if (str.length() == 0) {
            return null;
        }
        return zzxgVar.zzt(context, new zzwx(str, null), continuation);
    }

    public static /* synthetic */ Object zzc(zzxg zzxgVar, Context context, zzxi zzxiVar, Continuation continuation) throws Throwable {
        Object objZzu = zzxgVar.zzu(context, new zzxb(zzxiVar.zza(), zzxiVar, zzxgVar, context, null), continuation);
        return objZzu == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZzu : Unit.INSTANCE;
    }

    public static final /* synthetic */ boolean zzh(zzxg zzxgVar, Context context, zzxi zzxiVar) {
        File file = new File(zzxgVar.zzz(context), zzxiVar.zzb());
        if (file.exists()) {
            try {
                if (file.delete()) {
                    return true;
                }
                String strZzb = zzxiVar.zzb();
                StringBuilder sb = new StringBuilder(String.valueOf(strZzb).length() + 30);
                sb.append("Failed to delete cache file: ");
                sb.append(strZzb);
                sb.append(".");
                Log.w("CacheFileManager", sb.toString());
                return false;
            } catch (SecurityException e) {
                Log.e("CacheFileManager", "Failed to delete cache file: ".concat(String.valueOf(zzxiVar.zzb())), e);
            }
        }
        return false;
    }

    public static final /* synthetic */ File zzq(zzxg zzxgVar, Context context) {
        return new File(zzxgVar.zzz(context), "index");
    }

    public static final /* synthetic */ Map zzr(zzxg zzxgVar, JSONArray jSONArray) throws JSONException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            zzxi zzxiVarZza = zzxgVar.zzc.zza(jSONArray.getJSONObject(i));
            if (linkedHashMap.containsKey(zzxiVarZza.zza())) {
                String strZza = zzxiVarZza.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(strZza).length() + 36);
                sb.append("Duplicate cache name: ");
                sb.append(strZza);
                sb.append(". Overwriting.");
                Log.w("CacheFileManager", sb.toString());
            }
            linkedHashMap.put(zzxiVarZza.zza(), zzxiVarZza);
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
    
        if (zzv(r7, r0) == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzs(Context context, Continuation continuation) {
        zzws zzwsVar;
        if (continuation instanceof zzws) {
            zzwsVar = (zzws) continuation;
            int i = zzwsVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzwsVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzwsVar = new zzws(this, continuation);
            }
        }
        Object objWithContext = zzwsVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzwsVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithContext);
            zzwsVar.zzc = 1;
            objWithContext = BuildersKt.withContext(this.zzh.getCoroutineContext(), new zzwz(this, context, null), zzwsVar);
            if (objWithContext != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(objWithContext);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(objWithContext);
        Function2 zzwtVar = new zzwt((Map) objWithContext, null);
        zzwsVar.zzc = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzt(Context context, Function2 function2, Continuation continuation) throws Throwable {
        zzxa zzxaVar;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        if (continuation instanceof zzxa) {
            zzxaVar = (zzxa) continuation;
            int i = zzxaVar.zze;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzxaVar.zze = i - Integer.MIN_VALUE;
            } else {
                zzxaVar = new zzxa(this, continuation);
            }
        }
        Object objInvoke = zzxaVar.zzc;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzxaVar.zze;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            zzxaVar.zza = function2;
            zzxaVar.zze = 1;
            if (zzx(context, zzxaVar) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutex2 = (Mutex) zzxaVar.zza;
                try {
                    ResultKt.throwOnFailure(objInvoke);
                    mutex2.unlock(null);
                    return objInvoke;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            mutex = (Mutex) zzxaVar.zzb;
            function2 = (Function2) zzxaVar.zza;
            ResultKt.throwOnFailure(objInvoke);
            try {
                Map map = this.zze;
                zzxaVar.zza = mutex;
                zzxaVar.zzb = null;
                zzxaVar.zze = 3;
                objInvoke = function2.invoke(map, zzxaVar);
                if (objInvoke != coroutine_suspended) {
                    mutex2 = mutex;
                    mutex2.unlock(null);
                    return objInvoke;
                }
                return coroutine_suspended;
            } catch (Throwable th3) {
                Mutex mutex3 = mutex;
                th = th3;
                mutex2 = mutex3;
                mutex2.unlock(null);
                throw th;
            }
        }
        function2 = (Function2) zzxaVar.zza;
        ResultKt.throwOnFailure(objInvoke);
        mutex = this.zzd;
        zzxaVar.zza = function2;
        zzxaVar.zzb = mutex;
        zzxaVar.zze = 2;
        if (mutex.lock(null, zzxaVar) != coroutine_suspended) {
            Map map2 = this.zze;
            zzxaVar.zza = mutex;
            zzxaVar.zzb = null;
            zzxaVar.zze = 3;
            objInvoke = function2.invoke(map2, zzxaVar);
            if (objInvoke != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzu(Context context, Function2 function2, Continuation continuation) throws Throwable {
        zzxc zzxcVar;
        if (continuation instanceof zzxc) {
            zzxcVar = (zzxc) continuation;
            int i = zzxcVar.zze;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzxcVar.zze = i - Integer.MIN_VALUE;
            } else {
                zzxcVar = new zzxc(this, continuation);
            }
        }
        Object obj = zzxcVar.zzc;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzxcVar.zze;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            zzxcVar.zza = context;
            zzxcVar.zzb = function2;
            zzxcVar.zze = 1;
            if (zzx(context, zzxcVar) != coroutine_suspended) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        function2 = (Function2) zzxcVar.zzb;
        context = (Context) zzxcVar.zza;
        ResultKt.throwOnFailure(obj);
        Function2 zzxdVar = new zzxd(function2, this, context, null);
        zzxcVar.zza = null;
        zzxcVar.zzb = null;
        zzxcVar.zze = 2;
        Object objZzv = zzv(zzxdVar, zzxcVar);
        return objZzv == coroutine_suspended ? coroutine_suspended : objZzv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzv(Function2 function2, Continuation continuation) throws Throwable {
        zzxe zzxeVar;
        Function2 function22;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        if (continuation instanceof zzxe) {
            zzxeVar = (zzxe) continuation;
            int i = zzxeVar.zze;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzxeVar.zze = i - Integer.MIN_VALUE;
            } else {
                zzxeVar = new zzxe(this, continuation);
            }
        }
        Object objInvoke = zzxeVar.zzc;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzxeVar.zze;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objInvoke);
                Mutex mutex3 = this.zzd;
                zzxeVar.zza = function2;
                zzxeVar.zzb = mutex3;
                zzxeVar.zze = 1;
                if (mutex3.lock(null, zzxeVar) != coroutine_suspended) {
                    function22 = function2;
                    mutex = mutex3;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutex2 = (Mutex) zzxeVar.zza;
                try {
                    ResultKt.throwOnFailure(objInvoke);
                    mutex2.unlock(null);
                    return objInvoke;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            mutex = (Mutex) zzxeVar.zzb;
            function22 = (Function2) zzxeVar.zza;
            ResultKt.throwOnFailure(objInvoke);
            Map map = this.zze;
            zzxeVar.zza = mutex;
            zzxeVar.zzb = null;
            zzxeVar.zze = 2;
            objInvoke = function22.invoke(map, zzxeVar);
            if (objInvoke != coroutine_suspended) {
                mutex2 = mutex;
                mutex2.unlock(null);
                return objInvoke;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            Mutex mutex4 = mutex;
            th = th3;
            mutex2 = mutex4;
            mutex2.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzw(Context context, String str, Continuation continuation) {
        return BuildersKt.withContext(this.zzh.getCoroutineContext(), new zzwp(this, context, str, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007e, code lost:
    
        if (r12.join(r0) == r1) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzx(Context context, Continuation continuation) {
        zzwq zzwqVar;
        Mutex mutex;
        if (continuation instanceof zzwq) {
            zzwqVar = (zzwq) continuation;
            int i = zzwqVar.zze;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzwqVar.zze = i - Integer.MIN_VALUE;
            } else {
                zzwqVar = new zzwq(this, continuation);
            }
        }
        Object obj = zzwqVar.zzc;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzwqVar.zze;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                mutex = this.zzf;
                zzwqVar.zza = context;
                zzwqVar.zzb = mutex;
                zzwqVar.zze = 1;
                if (mutex.lock(null, zzwqVar) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Mutex mutex2 = (Mutex) zzwqVar.zzb;
            Context context2 = (Context) zzwqVar.zza;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            context = context2;
            if (this.zzg == null) {
                this.zzg = BuildersKt__Builders_commonKt.launch$default(this.zzh, null, null, new zzwr(this, context, null), 3, null);
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            Job job = this.zzg;
            if (job == null) {
                return Unit.INSTANCE;
            }
            zzwqVar.zza = null;
            zzwqVar.zzb = null;
            zzwqVar.zze = 2;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzy(Context context, Map map, Continuation continuation) {
        Object objWithContext = BuildersKt.withContext(this.zzh.getCoroutineContext(), new zzxf(this, context, map, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File zzz(Context context) {
        File file = new File(context.getApplicationContext().getFilesDir(), this.zzb);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
