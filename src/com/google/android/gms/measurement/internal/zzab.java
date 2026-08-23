package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzab {
    final String zzb;
    final int zzc;
    Boolean zzd;
    Boolean zze;
    Long zzf;
    Long zzg;

    zzab(String str, int i) {
        this.zzb = str;
        this.zzc = i;
    }

    private static Boolean zzd(String str, int i, boolean z, String str2, List list, String str3, zzgu zzguVar) {
        if (i == 7) {
            if (list == null || list.isEmpty()) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && i != 2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i - 1) {
            case 1:
                if (str3 != null) {
                    try {
                    } catch (PatternSyntaxException unused) {
                        if (zzguVar != null) {
                            zzguVar.zze().zzb("Invalid regular expression in REGEXP audience filter. expression", str3);
                        }
                        return null;
                    }
                    break;
                }
                break;
            case 6:
                if (list != null) {
                    break;
                }
                break;
        }
        return null;
    }

    static Boolean zze(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    static Boolean zzf(String str, com.google.android.gms.internal.measurement.zzfr zzfrVar, zzgu zzguVar) {
        List list;
        Preconditions.checkNotNull(zzfrVar);
        if (str == null || !zzfrVar.zza() || zzfrVar.zzj() == 1 || (zzfrVar.zzj() != 7 ? !zzfrVar.zzb() : zzfrVar.zzg() == 0)) {
            return null;
        }
        int iZzj = zzfrVar.zzj();
        boolean zZze = zzfrVar.zze();
        String strZzc = (zZze || iZzj == 2 || iZzj == 7) ? zzfrVar.zzc() : zzfrVar.zzc().toUpperCase(Locale.ENGLISH);
        if (zzfrVar.zzg() == 0) {
            list = null;
        } else {
            List listZzf = zzfrVar.zzf();
            if (!zZze) {
                ArrayList arrayList = new ArrayList(listZzf.size());
                Iterator it = listZzf.iterator();
                while (it.hasNext()) {
                    arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                }
                listZzf = DesugarCollections.unmodifiableList(arrayList);
            }
            list = listZzf;
        }
        return zzd(str, iZzj, zZze, strZzc, list, iZzj == 2 ? strZzc : null, zzguVar);
    }

    static Boolean zzg(long j, com.google.android.gms.internal.measurement.zzfl zzflVar) {
        try {
            return zzj(new BigDecimal(j), zzflVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean zzh(double d, com.google.android.gms.internal.measurement.zzfl zzflVar) {
        try {
            return zzj(new BigDecimal(d), zzflVar, Math.ulp(d));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean zzi(String str, com.google.android.gms.internal.measurement.zzfl zzflVar) {
        if (!zzpk.zzm(str)) {
            return null;
        }
        try {
            return zzj(new BigDecimal(str), zzflVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean zzj(BigDecimal bigDecimal, com.google.android.gms.internal.measurement.zzfl zzflVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzflVar);
        if (zzflVar.zza()) {
            if (zzflVar.zzm() != 1) {
                if (zzflVar.zzm() == 5) {
                    if (!zzflVar.zzf() || !zzflVar.zzh()) {
                        return null;
                    }
                } else if (!zzflVar.zzd()) {
                    return null;
                }
                int iZzm = zzflVar.zzm();
                if (zzflVar.zzm() == 5) {
                    if (zzpk.zzm(zzflVar.zzg()) && zzpk.zzm(zzflVar.zzi())) {
                        try {
                            BigDecimal bigDecimal5 = new BigDecimal(zzflVar.zzg());
                            bigDecimal4 = new BigDecimal(zzflVar.zzi());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    return null;
                }
                if (!zzpk.zzm(zzflVar.zze())) {
                    return null;
                }
                try {
                    bigDecimal2 = new BigDecimal(zzflVar.zze());
                    bigDecimal3 = null;
                    bigDecimal4 = null;
                } catch (NumberFormatException unused2) {
                }
                if (iZzm == 5) {
                    if (bigDecimal3 == null) {
                        return null;
                    }
                } else if (bigDecimal2 == null) {
                    return null;
                }
                int i = iZzm - 1;
                if (i == 1) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                }
                if (i == 2) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                }
                if (i != 3) {
                    if (i == 4 && bigDecimal3 != null) {
                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) >= 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                    }
                    return null;
                }
                if (bigDecimal2 == null) {
                    return null;
                }
                if (d != 0.0d) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) > 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) < 0);
                }
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
            }
        }
        return null;
    }

    abstract int zza();

    abstract boolean zzb();

    abstract boolean zzc();
}
