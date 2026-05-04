package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.chaquo.python.internal.Common;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmb extends zzg {
    protected zzlu zza;
    private volatile zzlu zzb;
    private volatile zzlu zzc;
    private final Map zzd;
    private com.google.android.gms.internal.measurement.zzdf zze;
    private volatile boolean zzf;
    private volatile zzlu zzg;
    private zzlu zzh;
    private boolean zzi;
    private final Object zzj;

    public zzmb(zzic zzicVar) {
        super(zzicVar);
        this.zzj = new Object();
        this.zzd = new ConcurrentHashMap();
    }

    private final void zzA(zzlu zzluVar, boolean z, long j) {
        zzic zzicVar = this.zzu;
        zzicVar.zzw().zzc(zzicVar.zzaZ().elapsedRealtime());
        if (!zzicVar.zzh().zzb.zzd(zzluVar != null && zzluVar.zzd, z, j) || zzluVar == null) {
            return;
        }
        zzluVar.zzd = false;
    }

    private final zzlu zzB(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        Preconditions.checkNotNull(zzdfVar);
        Integer numValueOf = Integer.valueOf(zzdfVar.zza);
        Map map = this.zzd;
        zzlu zzluVar = (zzlu) map.get(numValueOf);
        if (zzluVar == null) {
            zzlu zzluVar2 = new zzlu(null, zzi(zzdfVar.zzb, "Activity"), this.zzu.zzk().zzd());
            map.put(numValueOf, zzluVar2);
            zzluVar = zzluVar2;
        }
        return this.zzg != null ? this.zzg : zzluVar;
    }

    private final void zzy(String str, zzlu zzluVar, boolean z) {
        zzlu zzluVar2;
        zzlu zzluVar3 = this.zzb == null ? this.zzc : this.zzb;
        if (zzluVar.zzb == null) {
            zzluVar2 = new zzlu(zzluVar.zza, str != null ? zzi(str, "Activity") : null, zzluVar.zzc, zzluVar.zze, zzluVar.zzf);
        } else {
            zzluVar2 = zzluVar;
        }
        this.zzc = this.zzb;
        this.zzb = zzluVar2;
        zzic zzicVar = this.zzu;
        zzicVar.zzaW().zzj(new zzlw(this, zzluVar2, zzluVar3, zzicVar.zzaZ().elapsedRealtime(), z));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzz(zzlu zzluVar, zzlu zzluVar2, long j, boolean z, Bundle bundle) {
        boolean z2;
        zzg();
        boolean z3 = false;
        if (zzluVar2 != null) {
            z2 = (zzluVar2.zzc == zzluVar.zzc && Objects.equals(zzluVar2.zzb, zzluVar.zzb) && Objects.equals(zzluVar2.zza, zzluVar.zza)) ? false : true;
        }
        if (z && this.zza != null) {
            z3 = true;
        }
        if (z2) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            zzpp.zzav(zzluVar, bundle2, true);
            if (zzluVar2 != null) {
                String str = zzluVar2.zza;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = zzluVar2.zzb;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", zzluVar2.zzc);
            }
            if (z3) {
                zzoa zzoaVar = this.zzu.zzh().zzb;
                long j2 = j - zzoaVar.zzb;
                zzoaVar.zzb = j;
                if (j2 > 0) {
                    this.zzu.zzk().zzak(bundle2, j2);
                }
            }
            zzic zzicVar = this.zzu;
            if (!zzicVar.zzc().zzv()) {
                bundle2.putLong("_mst", 1L);
            }
            boolean z4 = zzluVar.zze;
            String str3 = true != z4 ? "auto" : Common.ASSET_APP;
            long jCurrentTimeMillis = zzicVar.zzaZ().currentTimeMillis();
            if (z4) {
                long j3 = zzluVar.zzf;
                long j4 = j3 == 0 ? jCurrentTimeMillis : j3;
                this.zzu.zzj().zzG(str3, "_vs", j4, bundle2);
            }
        }
        if (z3) {
            zzA(this.zza, true, j);
        }
        this.zza = zzluVar;
        if (zzluVar.zze) {
            this.zzh = zzluVar;
        }
        this.zzu.zzt().zzG(zzluVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    protected final boolean zze() {
        return false;
    }

    public final zzlu zzh(boolean z) {
        zzb();
        zzg();
        if (!z) {
            return this.zza;
        }
        zzlu zzluVar = this.zza;
        return zzluVar != null ? zzluVar : this.zzh;
    }

    final String zzi(String str, String str2) {
        if (str == null) {
            return "Activity";
        }
        String[] strArrSplit = str.split("\\.");
        int length = strArrSplit.length;
        String str3 = length > 0 ? strArrSplit[length - 1] : _UrlKt.FRAGMENT_ENCODE_SET;
        zzic zzicVar = this.zzu;
        return str3.length() > zzicVar.zzc().zze(null, false) ? str3.substring(0, zzicVar.zzc().zze(null, false)) : str3;
    }

    public final void zzj(Bundle bundle, long j) {
        synchronized (this.zzj) {
            try {
                if (!this.zzi) {
                    this.zzu.zzaV().zzh().zza("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String string = bundle.getString("screen_name");
                if (string != null && (string.length() <= 0 || string.length() > this.zzu.zzc().zze(null, false))) {
                    this.zzu.zzaV().zzh().zzb("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                    return;
                }
                String string2 = bundle.getString("screen_class");
                if (string2 != null && (string2.length() <= 0 || string2.length() > this.zzu.zzc().zze(null, false))) {
                    this.zzu.zzaV().zzh().zzb("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                    return;
                }
                if (string2 == null) {
                    com.google.android.gms.internal.measurement.zzdf zzdfVar = this.zze;
                    string2 = zzdfVar != null ? zzi(zzdfVar.zzb, "Activity") : "Activity";
                }
                zzlu zzluVar = this.zzb;
                if (this.zzf && zzluVar != null) {
                    this.zzf = false;
                    boolean zEquals = Objects.equals(zzluVar.zzb, string2);
                    boolean zEquals2 = Objects.equals(zzluVar.zza, string);
                    if (zEquals && zEquals2) {
                        this.zzu.zzaV().zzh().zza("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                zzic zzicVar = this.zzu;
                zzicVar.zzaV().zzk().zzc("Logging screen view with name, class", string == null ? "null" : string, string2 == null ? "null" : string2);
                zzlu zzluVar2 = this.zzb == null ? this.zzc : this.zzb;
                zzlu zzluVar3 = new zzlu(string, string2, zzicVar.zzk().zzd(), true, j);
                this.zzb = zzluVar3;
                this.zzc = zzluVar2;
                this.zzg = zzluVar3;
                zzicVar.zzaW().zzj(new zzlv(this, bundle, zzluVar3, zzluVar2, zzicVar.zzaZ().elapsedRealtime()));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzk(com.google.android.gms.internal.measurement.zzdf zzdfVar, String str, String str2) {
        zzic zzicVar = this.zzu;
        if (!zzicVar.zzc().zzv()) {
            zzicVar.zzaV().zzh().zza("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        zzlu zzluVar = this.zzb;
        if (zzluVar == null) {
            zzicVar.zzaV().zzh().zza("setCurrentScreen cannot be called while no activity active");
            return;
        }
        Map map = this.zzd;
        Integer numValueOf = Integer.valueOf(zzdfVar.zza);
        if (map.get(numValueOf) == null) {
            zzicVar.zzaV().zzh().zza("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = zzi(zzdfVar.zzb, "Activity");
        }
        String str3 = zzluVar.zzb;
        String str4 = zzluVar.zza;
        boolean zEquals = Objects.equals(str3, str2);
        boolean zEquals2 = Objects.equals(str4, str);
        if (zEquals && zEquals2) {
            zzicVar.zzaV().zzh().zza("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > zzicVar.zzc().zze(null, false))) {
            zzicVar.zzaV().zzh().zzb("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > zzicVar.zzc().zze(null, false))) {
            zzicVar.zzaV().zzh().zzb("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        zzicVar.zzaV().zzk().zzc("Setting current screen to name, class", str == null ? "null" : str, str2);
        zzlu zzluVar2 = new zzlu(str, str2, zzicVar.zzk().zzd());
        map.put(numValueOf, zzluVar2);
        zzy(zzdfVar.zzb, zzluVar2, true);
    }

    public final zzlu zzl() {
        return this.zzb;
    }

    public final void zzm(com.google.android.gms.internal.measurement.zzdf zzdfVar, Bundle bundle) {
        Bundle bundle2;
        if (!this.zzu.zzc().zzv() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.zzd.put(Integer.valueOf(zzdfVar.zza), new zzlu(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void zzn(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        Object obj = this.zzj;
        synchronized (obj) {
            this.zzi = true;
            if (!Objects.equals(zzdfVar, this.zze)) {
                synchronized (obj) {
                    this.zze = zzdfVar;
                    this.zzf = false;
                    zzic zzicVar = this.zzu;
                    if (zzicVar.zzc().zzv()) {
                        this.zzg = null;
                        zzicVar.zzaW().zzj(new zzma(this));
                    }
                }
            }
        }
        zzic zzicVar2 = this.zzu;
        if (!zzicVar2.zzc().zzv()) {
            this.zzb = this.zzg;
            zzicVar2.zzaW().zzj(new zzlx(this));
            return;
        }
        zzy(zzdfVar.zzb, zzB(zzdfVar), false);
        zzd zzdVarZzw = this.zzu.zzw();
        zzic zzicVar3 = zzdVarZzw.zzu;
        zzicVar3.zzaW().zzj(new zzc(zzdVarZzw, zzicVar3.zzaZ().elapsedRealtime()));
    }

    public final void zzp(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        synchronized (this.zzj) {
            this.zzi = false;
            this.zzf = true;
        }
        zzic zzicVar = this.zzu;
        long jElapsedRealtime = zzicVar.zzaZ().elapsedRealtime();
        if (!zzicVar.zzc().zzv()) {
            this.zzb = null;
            zzicVar.zzaW().zzj(new zzly(this, jElapsedRealtime));
        } else {
            zzlu zzluVarZzB = zzB(zzdfVar);
            this.zzc = this.zzb;
            this.zzb = null;
            zzicVar.zzaW().zzj(new zzlz(this, zzluVarZzB, jElapsedRealtime));
        }
    }

    public final void zzq(com.google.android.gms.internal.measurement.zzdf zzdfVar, Bundle bundle) {
        zzlu zzluVar;
        if (!this.zzu.zzc().zzv() || bundle == null || (zzluVar = (zzlu) this.zzd.get(Integer.valueOf(zzdfVar.zza))) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzluVar.zzc);
        bundle2.putString("name", zzluVar.zza);
        bundle2.putString("referrer_name", zzluVar.zzb);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    public final void zzs(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        synchronized (this.zzj) {
            try {
                if (Objects.equals(this.zze, zzdfVar)) {
                    this.zze = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.zzu.zzc().zzv()) {
            this.zzd.remove(Integer.valueOf(zzdfVar.zza));
        }
    }

    final /* synthetic */ void zzt(Bundle bundle, zzlu zzluVar, zzlu zzluVar2, long j) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        zzz(zzluVar, zzluVar2, j, true, this.zzu.zzk().zzF(null, "screen_view", bundle, null, false));
    }

    final /* synthetic */ void zzu(zzlu zzluVar, zzlu zzluVar2, long j, boolean z, Bundle bundle) {
        zzz(zzluVar, zzluVar2, j, z, null);
    }

    final /* synthetic */ void zzv(zzlu zzluVar, boolean z, long j) {
        zzA(zzluVar, false, j);
    }

    final /* synthetic */ zzlu zzw() {
        return this.zzh;
    }

    final /* synthetic */ void zzx(zzlu zzluVar) {
        this.zzh = null;
    }
}
