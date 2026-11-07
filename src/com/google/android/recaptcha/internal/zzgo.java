package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.gms.cast.MediaError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Optional;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzgo extends zzcl {
    public List zza;
    public Deferred zzb;
    private final Application zzc;
    private final zzgz zzd;
    private final zzgp zze;
    private final zzmv zzf;
    private final zzhq zzg;
    private zzd zzh;
    private zzakg zzj;
    private final zzbb zzk;
    private boolean zzm;
    private final zzhr zzn;
    private final zzgy zzo;
    private final zzhu zzp;
    private final HashMap zzi = new HashMap();
    private final Mutex zzl = MutexKt.Mutex$default(false, 1, null);

    public zzgo(Application application, zzhu zzhuVar, zzgz zzgzVar, zzgy zzgyVar, zzfw zzfwVar, zzgp zzgpVar, zzhr zzhrVar, zzmv zzmvVar, zzhq zzhqVar) {
        this.zzc = application;
        this.zzp = zzhuVar;
        this.zzd = zzgzVar;
        this.zzo = zzgyVar;
        this.zze = zzgpVar;
        this.zzn = zzhrVar;
        this.zzf = zzmvVar;
        this.zzg = zzhqVar;
        this.zzk = new zzbb(application, zzhuVar.zzc(), new zzav());
    }

    public static final /* synthetic */ zzhg zzA(zzgo zzgoVar, Exception exc) {
        zzhg zzhgVar = exc instanceof zzhg ? (zzhg) exc : null;
        return zzhgVar == null ? new zzhg(zzhf.zzb, zzhe.zzal, exc.getMessage(), null, 8, null) : zzhgVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Deferred zzD(Long l, Optional optional) {
        return BuildersKt__Builders_commonKt.async$default(this.zzp.zze(), null, null, new zzge(l, this, optional, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzE(zzmd zzmdVar) throws zzhg {
        HashMap map = this.zzi;
        Application application = this.zzc;
        map.put(120, application);
        map.put(416, "18.9.2");
        map.put(518, zzmdVar.zzb());
        map.put(620, zzgp.zzb());
        map.put(722, zzmdVar.zza());
        zzhr zzhrVar = this.zzn;
        map.put(824, Integer.valueOf(zzhrVar.zzd() - 2));
        map.put(926, application.getPackageName());
        map.put(1028, Boolean.valueOf(zzhrVar.zza()));
        map.put(1130, Boolean.valueOf(zzhrVar.zzb()));
        map.put(1232, zzhrVar.zzc());
        map.put(2044, zzfu.class.getMethod("zzb", new Object[0].getClass()));
        zzbb zzbbVar = this.zzk;
        zzfs zzfsVar = new zzfs(zzbbVar);
        zzft zzftVar = new zzft(zzbbVar);
        zzfr zzfrVar = new zzfr(zzbbVar);
        Iterator it = CollectionsKt.listOf((Object[]) new zzfu[]{zzfsVar, zzftVar, zzfrVar}).iterator();
        while (it.hasNext()) {
            Object objZzb = ((zzfu) it.next()).zzb(new Object[]{new zzfv()});
            if (!(objZzb instanceof Boolean) || !((Boolean) objZzb).booleanValue()) {
                throw new zzhg(zzhf.zzb, zzhe.zzaB, null, null, 12, null);
            }
        }
        map.put(3335, zzfsVar);
        map.put(3576, zzftVar);
        map.put(3809, zzfrVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzF(Continuation continuation) throws zzhg {
        zzfy zzfyVar;
        if (continuation instanceof zzfy) {
            zzfyVar = (zzfy) continuation;
            int i = zzfyVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzfyVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzfyVar = new zzfy(this, continuation);
            }
        }
        Object objAwait = zzfyVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzfyVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objAwait);
                Deferred deferredZzD = zzD(null, Optional.empty());
                zzfyVar.zzc = 1;
                objAwait = deferredZzD.await(zzfyVar);
                if (objAwait == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(objAwait);
            }
            Object value = ((Result) objAwait).getValue();
            ResultKt.throwOnFailure(value);
            List list = value instanceof List ? (List) value : null;
            if (list == null || list.size() < 2) {
                throw new zzhg(zzhf.zzb, zzhe.zzaj, null, null, 12, null);
            }
            return list;
        } catch (Exception e) {
            throw new zzhg(zzhf.zzb, zzhe.zzaj, e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzG(zzmg zzmgVar) {
        ArrayList arrayList;
        Object next;
        Object next2;
        Object obj = this.zzi.get(Integer.valueOf(MediaError.DetailedErrorCode.HLS_NETWORK_KEY_LOAD));
        List list = obj instanceof List ? (List) obj : null;
        if (list != null) {
            List list2 = list;
            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(zzalo.zzd((byte[]) it.next()));
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                Long lValueOf = Long.valueOf(((zzalo) obj2).zza());
                Object arrayList2 = linkedHashMap.get(lValueOf);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap.put(lValueOf, arrayList2);
                }
                ((List) arrayList2).add(obj2);
            }
            for (List list3 : linkedHashMap.values()) {
                Iterator it2 = list3.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        next = it2.next();
                        if (((zzalo) next).zzg() == 3) {
                            break;
                        }
                    } else {
                        next = null;
                        break;
                    }
                }
                zzalo zzaloVar = (zzalo) next;
                Iterator it3 = list3.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        next2 = it3.next();
                        if (((zzalo) next2).zzg() == 4) {
                            break;
                        }
                    } else {
                        next2 = null;
                        break;
                    }
                }
                zzalo zzaloVar2 = (zzalo) next2;
                if (zzaloVar != null && zzaloVar2 != null) {
                    int iZzh = zzaloVar.zzh() - 2;
                    int i2 = iZzh != 1 ? iZzh != 2 ? 2 : 46 : 47;
                    zzajh zzajhVarZzd = zzajj.zzd();
                    long jZzc = zzaloVar2.zzc() - zzaloVar.zzc();
                    zzajhVarZzd.zzy(i2);
                    zzajhVarZzd.zza(zzlj.zzd);
                    zzajhVarZzd.zzc(zzmgVar.zzb());
                    zzajhVarZzd.zzb(zzmgVar.zza().zzb());
                    zzajhVarZzd.zzz(zzmgVar.zza().zzd());
                    zzajhVarZzd.zzw(zzaloVar.zzb());
                    int iZzi = zzaloVar2.zzi() - 2;
                    zzajhVarZzd.zzA(iZzi != 1 ? iZzi != 2 ? 2 : 4 : 3);
                    long jZzc2 = zzaloVar.zzc();
                    zzajhVarZzd.zzh(zzaiq.zzd(jZzc2 / 1000000000, (int) (jZzc2 % 1000000000)));
                    zzajhVarZzd.zze(zzaio.zzc(jZzc / 1000000000, (int) (jZzc % 1000000000)));
                    zzmgVar.zzd(zzajhVarZzd, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final zzaku zzH(String str, zzalt zzaltVar) {
        zzakt zzaktVarZza = zzaku.zza();
        zzaktVarZza.zza(str);
        zzakp zzakpVarZza = zzakq.zza();
        zzakpVarZza.zza(zzaltVar);
        zzaktVarZza.zze(zzakpVarZza);
        return (zzaku) zzaktVarZza.zzp();
    }

    public static final /* synthetic */ Object zzk(zzgo zzgoVar, zzakg zzakgVar, Continuation continuation) {
        return new zzmc(new zzgk(zzgoVar, zzakgVar, null));
    }

    public static final /* synthetic */ void zzs(zzgo zzgoVar, zzalm zzalmVar) throws zzhg {
        try {
            zzd zzdVarZza = zzgoVar.zze.zza();
            zzgoVar.zzh = zzdVarZza;
            zzd zzdVar = null;
            if (zzdVarZza == null) {
                zzdVarZza = null;
            }
            zzdVarZza.zzb(zzalmVar.zza().zzy());
            zzd zzdVar2 = zzgoVar.zzh;
            if (zzdVar2 != null) {
                zzdVar = zzdVar2;
            }
            zzdVar.zza();
        } catch (Exception e) {
            throw new zzhg(zzhf.zzb, zzhe.zzai, e.getMessage(), e);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final Object zzb(zzakg zzakgVar, Continuation continuation) {
        return new zzmc(new zzgd(this, zzakgVar, null));
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final Object zzc(String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzgc(this, str, null));
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final Object zzd(String str, Continuation continuation) {
        zzals zzalsVarZzd = zzalt.zzd();
        zzalsVarZzd.zza(str);
        return zzH(str, (zzalt) zzalsVarZzd.zzp());
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final int zzf() {
        return 43;
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final int zzg() {
        return 44;
    }

    public final List zzh() {
        List list = this.zza;
        if (list != null) {
            return list;
        }
        return null;
    }

    public final Deferred zzi() {
        Deferred deferred = this.zzb;
        if (deferred != null) {
            return deferred;
        }
        return null;
    }
}
