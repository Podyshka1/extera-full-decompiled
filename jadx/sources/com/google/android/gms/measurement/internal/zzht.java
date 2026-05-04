package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzht extends zzos implements zzak {
    final Map zza;
    final Map zzb;
    final Map zzc;
    final LruCache zzd;
    final com.google.android.gms.internal.measurement.zzr zze;
    private final Map zzf;
    private final Map zzh;
    private final Map zzi;
    private final Map zzj;
    private final Map zzk;
    private final Map zzl;

    zzht(zzpg zzpgVar) {
        super(zzpgVar);
        this.zzf = new ArrayMap();
        this.zza = new ArrayMap();
        this.zzb = new ArrayMap();
        this.zzc = new ArrayMap();
        this.zzh = new ArrayMap();
        this.zzj = new ArrayMap();
        this.zzk = new ArrayMap();
        this.zzl = new ArrayMap();
        this.zzi = new ArrayMap();
        this.zzd = new zzhm(this, 20);
        this.zze = new zzhn(this);
    }

    private final void zzE(String str) throws Throwable {
        zzaw();
        zzg();
        Preconditions.checkNotEmpty(str);
        Map map = this.zzh;
        if (map.get(str) == null) {
            zzaq zzaqVarZzy = this.zzg.zzj().zzy(str);
            if (zzaqVarZzy != null) {
                com.google.android.gms.internal.measurement.zzgk zzgkVar = (com.google.android.gms.internal.measurement.zzgk) zzH(str, zzaqVarZzy.zza).zzcl();
                zzF(str, zzgkVar);
                this.zzf.put(str, zzI((com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc()));
                map.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
                zzG(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
                this.zzj.put(str, zzgkVar.zzh());
                this.zzk.put(str, zzaqVarZzy.zzb);
                this.zzl.put(str, zzaqVarZzy.zzc);
                return;
            }
            this.zzf.put(str, null);
            this.zzb.put(str, null);
            this.zza.put(str, null);
            this.zzc.put(str, null);
            map.put(str, null);
            this.zzj.put(str, null);
            this.zzk.put(str, null);
            this.zzl.put(str, null);
            this.zzi.put(str, null);
        }
    }

    private final void zzF(String str, com.google.android.gms.internal.measurement.zzgk zzgkVar) {
        HashSet hashSet = new HashSet();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        Iterator it = zzgkVar.zzg().iterator();
        while (it.hasNext()) {
            hashSet.add(((com.google.android.gms.internal.measurement.zzgh) it.next()).zza());
        }
        for (int i = 0; i < zzgkVar.zza(); i++) {
            com.google.android.gms.internal.measurement.zzgi zzgiVar = (com.google.android.gms.internal.measurement.zzgi) zzgkVar.zzb(i).zzcl();
            if (zzgiVar.zza().isEmpty()) {
                this.zzu.zzaV().zze().zza("EventConfig contained null event name");
            } else {
                String strZza = zzgiVar.zza();
                String strZzb = zzjm.zzb(zzgiVar.zza());
                if (!TextUtils.isEmpty(strZzb)) {
                    zzgiVar.zzb(strZzb);
                    zzgkVar.zzc(i, zzgiVar);
                }
                if (zzgiVar.zzc() && zzgiVar.zzd()) {
                    arrayMap.put(strZza, Boolean.TRUE);
                }
                if (zzgiVar.zze() && zzgiVar.zzf()) {
                    arrayMap2.put(zzgiVar.zza(), Boolean.TRUE);
                }
                if (zzgiVar.zzg()) {
                    if (zzgiVar.zzh() < 2 || zzgiVar.zzh() > 65535) {
                        this.zzu.zzaV().zze().zzc("Invalid sampling rate. Event name, sample rate", zzgiVar.zza(), Integer.valueOf(zzgiVar.zzh()));
                    } else {
                        arrayMap3.put(zzgiVar.zza(), Integer.valueOf(zzgiVar.zzh()));
                    }
                }
            }
        }
        this.zza.put(str, hashSet);
        this.zzb.put(str, arrayMap);
        this.zzc.put(str, arrayMap2);
        this.zzi.put(str, arrayMap3);
    }

    private final void zzG(final String str, com.google.android.gms.internal.measurement.zzgl zzglVar) {
        if (zzglVar.zzj() == 0) {
            this.zzd.remove(str);
            return;
        }
        zzic zzicVar = this.zzu;
        zzicVar.zzaV().zzk().zzb("EES programs found", Integer.valueOf(zzglVar.zzj()));
        com.google.android.gms.internal.measurement.zzja zzjaVar = (com.google.android.gms.internal.measurement.zzja) zzglVar.zzi().get(0);
        try {
            com.google.android.gms.internal.measurement.zzc zzcVar = new com.google.android.gms.internal.measurement.zzc();
            zzcVar.zza("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhs
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return new com.google.android.gms.internal.measurement.zzn("internal.remoteConfig", new zzho(this.zza, str));
                }
            });
            zzcVar.zza("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhp
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    final zzht zzhtVar = this.zza;
                    final String str2 = str;
                    return new com.google.android.gms.internal.measurement.zzu("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhr
                        @Override // java.util.concurrent.Callable
                        public final /* synthetic */ Object call() {
                            zzht zzhtVar2 = zzhtVar;
                            zzav zzavVarZzj = zzhtVar2.zzg.zzj();
                            String str3 = str2;
                            zzh zzhVarZzu = zzavVarZzj.zzu(str3);
                            HashMap map = new HashMap();
                            map.put("platform", "android");
                            map.put("package_name", str3);
                            zzhtVar2.zzu.zzc().zzi();
                            map.put("gmp_version", 133005L);
                            if (zzhVarZzu != null) {
                                String strZzr = zzhVarZzu.zzr();
                                if (strZzr != null) {
                                    map.put("app_version", strZzr);
                                }
                                map.put("app_version_int", Long.valueOf(zzhVarZzu.zzt()));
                                map.put("dynamite_version", Long.valueOf(zzhVarZzu.zzB()));
                            }
                            return map;
                        }
                    });
                }
            });
            zzcVar.zza("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhq
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return new com.google.android.gms.internal.measurement.zzt(this.zza.zze);
                }
            });
            zzcVar.zzf(zzjaVar);
            this.zzd.put(str, zzcVar);
            zzicVar.zzaV().zzk().zzc("EES program loaded for appId, activities", str, Integer.valueOf(zzjaVar.zzb().zzb()));
            Iterator it = zzjaVar.zzb().zza().iterator();
            while (it.hasNext()) {
                zzicVar.zzaV().zzk().zzb("EES program activity", ((com.google.android.gms.internal.measurement.zziy) it.next()).zza());
            }
        } catch (com.google.android.gms.internal.measurement.zzd unused) {
            this.zzu.zzaV().zzb().zzb("Failed to load EES program. appId", str);
        }
    }

    private final com.google.android.gms.internal.measurement.zzgl zzH(String str, byte[] bArr) {
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.zzgl.zzs();
        }
        try {
            com.google.android.gms.internal.measurement.zzgl zzglVar = (com.google.android.gms.internal.measurement.zzgl) ((com.google.android.gms.internal.measurement.zzgk) zzpk.zzw(com.google.android.gms.internal.measurement.zzgl.zzr(), bArr)).zzbc();
            this.zzu.zzaV().zzk().zzc("Parsed config. version, gmp_app_id", zzglVar.zza() ? Long.valueOf(zzglVar.zzb()) : null, zzglVar.zzc() ? zzglVar.zzd() : null);
            return zzglVar;
        } catch (com.google.android.gms.internal.measurement.zzmr e) {
            this.zzu.zzaV().zze().zzc("Unable to merge remote config. appId", zzgu.zzl(str), e);
            return com.google.android.gms.internal.measurement.zzgl.zzs();
        } catch (RuntimeException e2) {
            this.zzu.zzaV().zze().zzc("Unable to merge remote config. appId", zzgu.zzl(str), e2);
            return com.google.android.gms.internal.measurement.zzgl.zzs();
        }
    }

    private static final Map zzI(com.google.android.gms.internal.measurement.zzgl zzglVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzglVar != null) {
            for (com.google.android.gms.internal.measurement.zzgt zzgtVar : zzglVar.zze()) {
                arrayMap.put(zzgtVar.zza(), zzgtVar.zzb());
            }
        }
        return arrayMap;
    }

    private static final zzjk zzJ(int i) {
        int i2 = i - 1;
        if (i2 == 1) {
            return zzjk.AD_STORAGE;
        }
        if (i2 == 2) {
            return zzjk.ANALYTICS_STORAGE;
        }
        if (i2 == 3) {
            return zzjk.AD_USER_DATA;
        }
        if (i2 != 4) {
            return null;
        }
        return zzjk.AD_PERSONALIZATION;
    }

    final zzji zzA(String str, zzjk zzjkVar) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarZzx = zzx(str);
        if (zzgfVarZzx == null) {
            return zzji.UNINITIALIZED;
        }
        for (com.google.android.gms.internal.measurement.zzfu zzfuVar : zzgfVarZzx.zzf()) {
            if (zzJ(zzfuVar.zzb()) == zzjkVar) {
                int iZzc = zzfuVar.zzc() - 1;
                return iZzc != 1 ? iZzc != 2 ? zzji.UNINITIALIZED : zzji.DENIED : zzji.GRANTED;
            }
        }
        return zzji.UNINITIALIZED;
    }

    final boolean zzB(String str) throws Throwable {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarZzx = zzx(str);
        if (zzgfVarZzx == null) {
            return false;
        }
        for (com.google.android.gms.internal.measurement.zzfu zzfuVar : zzgfVarZzx.zza()) {
            if (zzfuVar.zzb() == 3 && zzfuVar.zzd() == 3) {
                return true;
            }
        }
        return false;
    }

    final /* synthetic */ com.google.android.gms.internal.measurement.zzc zzC(String str) throws Throwable {
        zzaw();
        Preconditions.checkNotEmpty(str);
        zzaq zzaqVarZzy = this.zzg.zzj().zzy(str);
        if (zzaqVarZzy == null) {
            return null;
        }
        this.zzu.zzaV().zzk().zzb("Populate EES config from database on cache miss. appId", str);
        zzG(str, zzH(str, zzaqVarZzy.zza));
        return (com.google.android.gms.internal.measurement.zzc) this.zzd.snapshot().get(str);
    }

    final /* synthetic */ Map zzD() {
        return this.zzf;
    }

    @Override // com.google.android.gms.measurement.internal.zzak
    public final String zza(String str, String str2) throws Throwable {
        zzg();
        zzE(str);
        Map map = (Map) this.zzf.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    protected final com.google.android.gms.internal.measurement.zzgl zzb(String str) {
        zzaw();
        zzg();
        Preconditions.checkNotEmpty(str);
        zzE(str);
        return (com.google.android.gms.internal.measurement.zzgl) this.zzh.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    protected final boolean zzbb() {
        return false;
    }

    final String zzc(String str) {
        zzg();
        zzE(str);
        return (String) this.zzj.get(str);
    }

    protected final String zzd(String str) {
        zzg();
        return (String) this.zzk.get(str);
    }

    protected final String zze(String str) {
        zzg();
        return (String) this.zzl.get(str);
    }

    protected final void zzf(String str) {
        zzg();
        this.zzk.put(str, null);
    }

    final void zzh(String str) {
        zzg();
        this.zzh.remove(str);
    }

    protected final boolean zzi(String str, byte[] bArr, String str2, String str3) throws Throwable {
        zzaw();
        zzg();
        Preconditions.checkNotEmpty(str);
        com.google.android.gms.internal.measurement.zzgk zzgkVar = (com.google.android.gms.internal.measurement.zzgk) zzH(str, bArr).zzcl();
        zzF(str, zzgkVar);
        zzG(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
        this.zzh.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
        this.zzj.put(str, zzgkVar.zzh());
        this.zzk.put(str, str2);
        this.zzl.put(str, str3);
        this.zzf.put(str, zzI((com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc()));
        this.zzg.zzj().zzae(str, new ArrayList(zzgkVar.zzd()));
        try {
            zzgkVar.zze();
            bArr = ((com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc()).zzcc();
        } catch (RuntimeException e) {
            this.zzu.zzaV().zze().zzc("Unable to serialize reduced-size config. Storing full config instead. appId", zzgu.zzl(str), e);
        }
        zzav zzavVarZzj = this.zzg.zzj();
        Preconditions.checkNotEmpty(str);
        zzavVarZzj.zzg();
        zzavVarZzj.zzaw();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        contentValues.put("e_tag", str3);
        try {
            if (zzavVarZzj.zze().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzavVarZzj.zzu.zzaV().zzb().zzb("Failed to update remote config (got 0). appId", zzgu.zzl(str));
            }
        } catch (SQLiteException e2) {
            zzavVarZzj.zzu.zzaV().zzb().zzc("Error storing remote config. appId", zzgu.zzl(str), e2);
        }
        zzgkVar.zzf();
        this.zzh.put(str, (com.google.android.gms.internal.measurement.zzgl) zzgkVar.zzbc());
        return true;
    }

    final boolean zzj(String str, String str2) throws Throwable {
        Boolean bool;
        zzg();
        zzE(str);
        if (zzn(str) && zzpp.zzZ(str2)) {
            return true;
        }
        if (zzo(str) && zzpp.zzh(str2)) {
            return true;
        }
        Map map = (Map) this.zzb.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final boolean zzk(String str, String str2) throws Throwable {
        Boolean bool;
        zzg();
        zzE(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.zzc.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final Set zzl(String str) {
        zzg();
        zzE(str);
        return (Set) this.zza.get(str);
    }

    final int zzm(String str, String str2) throws Throwable {
        Integer num;
        zzg();
        zzE(str);
        Map map = (Map) this.zzi.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    final boolean zzn(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    final boolean zzo(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }

    final boolean zzp(String str) throws Throwable {
        zzg();
        zzE(str);
        Map map = this.zza;
        if (map.get(str) != null) {
            return ((Set) map.get(str)).contains("device_model") || ((Set) map.get(str)).contains("device_info");
        }
        return false;
    }

    final boolean zzq(String str) throws Throwable {
        zzg();
        zzE(str);
        Map map = this.zza;
        if (map.get(str) != null) {
            return ((Set) map.get(str)).contains("os_version") || ((Set) map.get(str)).contains("device_info");
        }
        return false;
    }

    final boolean zzr(String str) throws Throwable {
        zzg();
        zzE(str);
        Map map = this.zza;
        return map.get(str) != null && ((Set) map.get(str)).contains("user_id");
    }

    final boolean zzs(String str) throws Throwable {
        zzg();
        zzE(str);
        Map map = this.zza;
        return map.get(str) != null && ((Set) map.get(str)).contains("google_signals");
    }

    final boolean zzt(String str) throws Throwable {
        zzg();
        zzE(str);
        Map map = this.zza;
        return map.get(str) != null && ((Set) map.get(str)).contains("app_instance_id");
    }

    final boolean zzu(String str) throws Throwable {
        zzg();
        zzE(str);
        Map map = this.zza;
        return map.get(str) != null && ((Set) map.get(str)).contains("enhanced_user_id");
    }

    final boolean zzv(String str, zzjk zzjkVar) throws Throwable {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarZzx = zzx(str);
        if (zzgfVarZzx == null) {
            return false;
        }
        Iterator it = zzgfVarZzx.zza().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.google.android.gms.internal.measurement.zzfu zzfuVar = (com.google.android.gms.internal.measurement.zzfu) it.next();
            if (zzjkVar == zzJ(zzfuVar.zzb())) {
                if (zzfuVar.zzc() == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    final zzjk zzw(String str, zzjk zzjkVar) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarZzx = zzx(str);
        if (zzgfVarZzx == null) {
            return null;
        }
        for (com.google.android.gms.internal.measurement.zzfw zzfwVar : zzgfVarZzx.zzb()) {
            if (zzjkVar == zzJ(zzfwVar.zzb())) {
                return zzJ(zzfwVar.zzc());
            }
        }
        return null;
    }

    final com.google.android.gms.internal.measurement.zzgf zzx(String str) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgl zzglVarZzb = zzb(str);
        if (zzglVarZzb == null || !zzglVarZzb.zzn()) {
            return null;
        }
        return zzglVarZzb.zzo();
    }

    final boolean zzy(String str) {
        zzg();
        zzE(str);
        com.google.android.gms.internal.measurement.zzgf zzgfVarZzx = zzx(str);
        return zzgfVarZzx == null || !zzgfVarZzx.zzd() || zzgfVarZzx.zze();
    }

    final SortedSet zzz(String str) {
        zzg();
        zzE(str);
        TreeSet treeSet = new TreeSet();
        com.google.android.gms.internal.measurement.zzgf zzgfVarZzx = zzx(str);
        if (zzgfVarZzx != null) {
            Iterator it = zzgfVarZzx.zzc().iterator();
            while (it.hasNext()) {
                treeSet.add(((com.google.android.gms.internal.measurement.zzgc) it.next()).zza());
            }
        }
        return treeSet;
    }
}
