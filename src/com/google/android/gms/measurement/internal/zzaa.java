package com.google.android.gms.measurement.internal;

import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzpu;
import java.util.HashSet;
import java.util.Iterator;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzaa extends zzab {
    final /* synthetic */ zzad zza;
    private final com.google.android.gms.internal.measurement.zzff zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaa(zzad zzadVar, String str, int i, com.google.android.gms.internal.measurement.zzff zzffVar) {
        super(str, i);
        Objects.requireNonNull(zzadVar);
        this.zza = zzadVar;
        this.zzh = zzffVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    final int zza() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    final boolean zzc() {
        return this.zzh.zzg();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final boolean zzd(Long l, Long l2, com.google.android.gms.internal.measurement.zzhs zzhsVar, long j, zzbc zzbcVar, boolean z) {
        Boolean boolZzi;
        zzpu.zza();
        zzad zzadVar = this.zza;
        zzic zzicVar = zzadVar.zzu;
        zzal zzalVarZzc = zzicVar.zzc();
        String str = this.zzb;
        boolean zZzp = zzalVarZzc.zzp(str, zzfy.zzaF);
        com.google.android.gms.internal.measurement.zzff zzffVar = this.zzh;
        long j2 = zzffVar.zzm() ? zzbcVar.zze : j;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        Boolean bool = null;
        if (Log.isLoggable(zzicVar.zzaV().zzn(), 2)) {
            zzicVar.zzaV().zzk().zzd("Evaluating filter. audience, filter, event", Integer.valueOf(this.zzc), zzffVar.zza() ? Integer.valueOf(zzffVar.zzb()) : null, zzicVar.zzl().zza(zzffVar.zzc()));
            zzicVar.zzaV().zzk().zzb("Filter definition", zzadVar.zzg.zzp().zzj(zzffVar));
        }
        if (!zzffVar.zza() || zzffVar.zzb() > 256) {
            zzicVar.zzaV().zze().zzc("Invalid event filter ID. appId, id", zzgu.zzl(str), String.valueOf(zzffVar.zza() ? Integer.valueOf(zzffVar.zzb()) : null));
            return false;
        }
        Object[] objArr = zzffVar.zzi() || zzffVar.zzj() || zzffVar.zzm();
        if (z && objArr != true) {
            zzicVar.zzaV().zzk().zzc("Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzc), zzffVar.zza() ? Integer.valueOf(zzffVar.zzb()) : null);
            return true;
        }
        String strZzd = zzhsVar.zzd();
        if (!zzffVar.zzg()) {
            HashSet hashSet = new HashSet();
            Iterator it = zzffVar.zzd().iterator();
            while (true) {
                if (!it.hasNext()) {
                    ArrayMap arrayMap = new ArrayMap();
                    Iterator it2 = zzhsVar.zza().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            Iterator it3 = zzffVar.zzd().iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    bool = Boolean.TRUE;
                                    break;
                                }
                                com.google.android.gms.internal.measurement.zzfh zzfhVar = (com.google.android.gms.internal.measurement.zzfh) it3.next();
                                boolean z2 = zzfhVar.zze() && zzfhVar.zzf();
                                String strZzh = zzfhVar.zzh();
                                if (strZzh.isEmpty()) {
                                    zzicVar.zzaV().zze().zzb("Event has empty param name. event", zzicVar.zzl().zza(strZzd));
                                    break;
                                }
                                Object obj = arrayMap.get(strZzh);
                                if (obj instanceof Long) {
                                    if (!zzfhVar.zzc()) {
                                        zzicVar.zzaV().zze().zzc("No number filter for long param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                        break;
                                    }
                                    Boolean boolZzg = zzab.zzg(((Long) obj).longValue(), zzfhVar.zzd());
                                    if (boolZzg == null) {
                                        break;
                                    }
                                    if (boolZzg.booleanValue() == z2) {
                                        bool = Boolean.FALSE;
                                        break;
                                    }
                                } else if (obj instanceof Double) {
                                    if (!zzfhVar.zzc()) {
                                        zzicVar.zzaV().zze().zzc("No number filter for double param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                        break;
                                    }
                                    Boolean boolZzh = zzab.zzh(((Double) obj).doubleValue(), zzfhVar.zzd());
                                    if (boolZzh == null) {
                                        break;
                                    }
                                    if (boolZzh.booleanValue() == z2) {
                                        bool = Boolean.FALSE;
                                        break;
                                    }
                                } else if (obj instanceof String) {
                                    if (!zzfhVar.zza()) {
                                        if (!zzfhVar.zzc()) {
                                            zzicVar.zzaV().zze().zzc("No filter for String param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                            break;
                                        }
                                        String str2 = (String) obj;
                                        if (!zzpk.zzm(str2)) {
                                            zzicVar.zzaV().zze().zzc("Invalid param value for number filter. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                            break;
                                        }
                                        boolZzi = zzab.zzi(str2, zzfhVar.zzd());
                                    } else {
                                        boolZzi = zzab.zzf((String) obj, zzfhVar.zzb(), zzicVar.zzaV());
                                    }
                                    if (boolZzi == null) {
                                        break;
                                    }
                                    if (boolZzi.booleanValue() == z2) {
                                        bool = Boolean.FALSE;
                                        break;
                                    }
                                } else if (obj == null) {
                                    zzicVar.zzaV().zzk().zzc("Missing param for filter. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                    bool = Boolean.FALSE;
                                } else {
                                    zzicVar.zzaV().zze().zzc("Unknown param type. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(strZzh));
                                }
                            }
                        } else {
                            com.google.android.gms.internal.measurement.zzhw zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it2.next();
                            if (hashSet.contains(zzhwVar.zzb())) {
                                if (!zzhwVar.zze()) {
                                    if (!zzhwVar.zzi()) {
                                        if (!zzhwVar.zzc()) {
                                            zzicVar.zzaV().zze().zzc("Unknown value for param. event, param", zzicVar.zzl().zza(strZzd), zzicVar.zzl().zzb(zzhwVar.zzb()));
                                            break;
                                        }
                                        arrayMap.put(zzhwVar.zzb(), zzhwVar.zzd());
                                    } else {
                                        arrayMap.put(zzhwVar.zzb(), zzhwVar.zzi() ? Double.valueOf(zzhwVar.zzj()) : null);
                                    }
                                } else {
                                    arrayMap.put(zzhwVar.zzb(), zzhwVar.zze() ? Long.valueOf(zzhwVar.zzf()) : null);
                                }
                            }
                        }
                    }
                } else {
                    com.google.android.gms.internal.measurement.zzfh zzfhVar2 = (com.google.android.gms.internal.measurement.zzfh) it.next();
                    if (zzfhVar2.zzh().isEmpty()) {
                        zzicVar.zzaV().zze().zzb("null or empty param name in filter. event", zzicVar.zzl().zza(strZzd));
                        break;
                    }
                    hashSet.add(zzfhVar2.zzh());
                }
            }
        } else {
            Boolean boolZzg2 = zzab.zzg(j2, zzffVar.zzh());
            if (boolZzg2 != null) {
                if (!boolZzg2.booleanValue()) {
                    bool = Boolean.FALSE;
                }
            }
        }
        zzicVar.zzaV().zzk().zzb("Event filter result", bool == null ? "null" : bool);
        if (bool == null) {
            return false;
        }
        Boolean bool2 = Boolean.TRUE;
        this.zzd = bool2;
        if (!bool.booleanValue()) {
            return true;
        }
        this.zze = bool2;
        if (objArr != false && zzhsVar.zze()) {
            Long lValueOf = Long.valueOf(zzhsVar.zzf());
            if (zzffVar.zzj()) {
                if (zZzp && zzffVar.zzg()) {
                    lValueOf = l;
                }
                this.zzg = lValueOf;
            } else {
                if (zZzp && zzffVar.zzg()) {
                    lValueOf = l2;
                }
                this.zzf = lValueOf;
            }
        }
        return true;
    }
}
