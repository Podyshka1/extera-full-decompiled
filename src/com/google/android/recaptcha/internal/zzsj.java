package com.google.android.recaptcha.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.internal.cast.zzxk$$ExternalSyntheticBUOutline0;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzsj implements zzsk {
    private final List zza;
    private final Map zzb;

    private zzsj(List list, Map map) {
        this.zza = list;
        this.zzb = map;
    }

    @Deprecated
    public static final zzsj zzf(byte[] bArr) throws GeneralSecurityException {
        try {
            zzsc zzscVarZza = zzsx.zza();
            zzwy zzwyVarZzd = zzwy.zzd(bArr, zzafh.zzb());
            for (zzwx zzwxVar : zzwyVarZzd.zzb()) {
                if (zzwxVar.zzb().zzi() == 2 || zzwxVar.zzb().zzi() == 3 || zzwxVar.zzb().zzi() == 4) {
                    int iZzi = zzwxVar.zzb().zzi();
                    throw new GeneralSecurityException(String.format("keyset contains key material of type %s for type url %s", iZzi != 2 ? iZzi != 3 ? iZzi != 4 ? iZzi != 5 ? iZzi != 6 ? "UNRECOGNIZED" : "REMOTE" : "ASYMMETRIC_PUBLIC" : "ASYMMETRIC_PRIVATE" : "SYMMETRIC" : "UNKNOWN_KEYMATERIAL", zzwxVar.zzb().zza()));
                }
            }
            if (zzwyVarZzd.zzc() <= 0) {
                throw new GeneralSecurityException("empty keyset");
            }
            List<zzsi> listZzi = zzi(zzwyVarZzd, zzscVarZza);
            if (zzh(zzscVarZza)) {
                HashSet hashSet = new HashSet();
                boolean zZzd = false;
                for (zzsi zzsiVar : listZzi) {
                    if (hashSet.contains(Integer.valueOf(zzsiVar.zzc()))) {
                        int iZzc = zzsiVar.zzc();
                        StringBuilder sb = new StringBuilder(String.valueOf(iZzc).length() + 121);
                        sb.append("KeyID ");
                        sb.append(iZzc);
                        sb.append(" is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
                        throw new GeneralSecurityException(sb.toString());
                    }
                    hashSet.add(Integer.valueOf(zzsiVar.zzc()));
                    zZzd |= zzsiVar.zzd();
                }
                if (!zZzd) {
                    throw new GeneralSecurityException("Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
                }
            }
            return new zzsj(listZzi, new HashMap());
        } catch (zzagk unused) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("invalid keyset");
            return null;
        }
    }

    private static boolean zzh(zzsc zzscVar) {
        return zzscVar.zzb(zzvz.class) == null;
    }

    private static List zzi(zzwy zzwyVar, zzsc zzscVar) throws GeneralSecurityException {
        zzse zzuiVar;
        boolean z;
        ArrayList arrayList = new ArrayList(zzwyVar.zzc());
        for (zzwx zzwxVar : zzwyVar.zzb()) {
            int iZzc = zzwxVar.zzc();
            try {
                zzsp zzspVarZzj = zzj(zzwxVar);
                zzsq zzsqVar = (zzsq) zzscVar.zzb(zzsq.class);
                if (zzsqVar == null) {
                    throw new GeneralSecurityException("Passed in configuration cannot be used to serialize into proto keyset format.");
                }
                zzuiVar = zzsqVar.zza(zzspVarZzj, zzsy.zza());
                z = false;
            } catch (GeneralSecurityException e) {
                if (zzh(zzscVar)) {
                    throw e;
                }
                zzuiVar = new zzui(zzj(zzwxVar), zzsy.zza());
                z = true;
            }
            if (zzh(zzscVar) && !zzk(zzwxVar.zzi())) {
                zzsj$$ExternalSyntheticBUOutline1.m480m("Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets.");
                return null;
            }
            arrayList.add(new zzsi(zzuiVar, zzwxVar.zzi(), iZzc, iZzc == zzwyVar.zza(), z, zzsi.zzf, null));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static zzsp zzj(zzwx zzwxVar) throws GeneralSecurityException {
        zzsn zzsnVar;
        zzso zzsoVar;
        Integer numValueOf = zzwxVar.zzj() == 5 ? null : Integer.valueOf(zzwxVar.zzc());
        String strZza = zzwxVar.zzb().zza();
        zzaer zzaerVarZzb = zzwxVar.zzb().zzb();
        int iZzi = zzwxVar.zzb().zzi() - 2;
        if (iZzi == 0) {
            zzsnVar = zzsn.zza;
        } else if (iZzi == 1) {
            zzsnVar = zzsn.zzb;
        } else if (iZzi == 2) {
            zzsnVar = zzsn.zzc;
        } else if (iZzi == 3) {
            zzsnVar = zzsn.zzd;
        } else {
            if (iZzi != 4) {
                throw new GeneralSecurityException("Unknown KeyMaterialType: ".concat(Integer.toString(iZzi)));
            }
            zzsnVar = zzsn.zze;
        }
        int iZzj = zzwxVar.zzj() - 2;
        if (iZzj == 0) {
            zzsoVar = zzso.zza;
        } else if (iZzj == 1) {
            zzsoVar = zzso.zzb;
        } else if (iZzj == 2) {
            zzsoVar = zzso.zzc;
        } else if (iZzj == 3) {
            zzsoVar = zzso.zzd;
        } else if (iZzj == 4) {
            zzsoVar = zzso.zze;
        } else {
            if (iZzj != 5) {
                throw new GeneralSecurityException("Unknown OutputPrefixType: ".concat(Integer.toString(iZzj)));
            }
            zzsoVar = zzso.zzf;
        }
        return zzsp.zza(strZza, zzaerVarZzb, zzsnVar, zzsoVar, numValueOf);
    }

    private static boolean zzk(int i) {
        int i2 = i - 2;
        return i2 == 1 || i2 == 2 || i2 == 3;
    }

    public final String toString() {
        zzwy zzwyVarZza = zza();
        int i = zzta.$r8$clinit;
        zzwz zzwzVarZza = zzxc.zza();
        zzwzVarZza.zza(zzwyVarZza.zza());
        for (zzwx zzwxVar : zzwyVarZza.zzb()) {
            zzxa zzxaVarZza = zzxb.zza();
            zzxaVarZza.zza(zzwxVar.zzb().zza());
            zzxaVarZza.zzc(zzwxVar.zzi());
            zzxaVarZza.zzd(zzwxVar.zzj());
            zzxaVarZza.zzb(zzwxVar.zzc());
            zzwzVarZza.zzb((zzxb) zzxaVarZza.zzp());
        }
        return ((zzxc) zzwzVarZza.zzp()).toString();
    }

    public final zzwy zza() {
        int i;
        try {
            zzsc zzscVarZza = zzsx.zza();
            zzwv zzwvVarZze = zzwy.zze();
            for (zzsi zzsiVar : this.zza) {
                zzse zzseVarZza = zzsiVar.zza();
                int iZzh = zzsiVar.zzh();
                int iZzc = zzsiVar.zzc();
                zzsq zzsqVar = (zzsq) zzscVarZza.zzb(zzsq.class);
                if (zzsqVar == null) {
                    throw new GeneralSecurityException("Passed in configuration cannot be used to parse and serialize proto keysets.");
                }
                zzsp zzspVarZzb = zzsqVar.zzb(zzseVarZza, zzsy.zza());
                Integer numZzb = zzseVarZza.zzb();
                if (numZzb != null && numZzb.intValue() != iZzc) {
                    throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
                }
                zzww zzwwVarZzd = zzwx.zzd();
                zzwq zzwqVarZzc = zzwr.zzc();
                zzwqVarZzc.zza(zzspVarZzb.zzb());
                zzwqVarZzc.zzb(zzspVarZzb.zzc());
                zzsn zzsnVarZzd = zzspVarZzb.zzd();
                int i2 = 6;
                if (zzsnVarZzd.equals(zzsn.zza)) {
                    i = 2;
                } else if (zzsnVarZzd == zzsn.zzb) {
                    i = 3;
                } else if (zzsnVarZzd == zzsn.zzc) {
                    i = 4;
                } else if (zzsnVarZzd == zzsn.zzd) {
                    i = 5;
                } else {
                    if (zzsnVarZzd != zzsn.zze) {
                        throw new GeneralSecurityException("Unknown KeyMaterialType: ".concat(zzsnVarZzd.toString()));
                    }
                    i = 6;
                }
                zzwqVarZzc.zzc(i);
                zzwwVarZzd.zza(zzwqVarZzc);
                zzwwVarZzd.zzc(iZzh);
                zzwwVarZzd.zzb(iZzc);
                zzso zzsoVarZze = zzspVarZzb.zze();
                if (zzsoVarZze.equals(zzso.zza)) {
                    i2 = 2;
                } else if (zzsoVarZze == zzso.zzb) {
                    i2 = 3;
                } else if (zzsoVarZze == zzso.zzc) {
                    i2 = 4;
                } else if (zzsoVarZze == zzso.zzd) {
                    i2 = 5;
                } else if (zzsoVarZze != zzso.zze) {
                    if (zzsoVarZze != zzso.zzf) {
                        throw new GeneralSecurityException("Unknown OutputPrefixType: ".concat(zzsoVarZze.toString()));
                    }
                    i2 = 7;
                }
                zzwwVarZzd.zzd(i2);
                zzwvVarZze.zzb((zzwx) zzwwVarZzd.zzp());
                if (zzsiVar.zzd()) {
                    zzwvVarZze.zza(zzsiVar.zzc());
                }
            }
            return (zzwy) zzwvVarZze.zzp();
        } catch (GeneralSecurityException e) {
            throw new zzwb(e);
        }
    }

    public final zzsi zzb() {
        for (zzsi zzsiVar : this.zza) {
            if (zzsiVar != null && zzsiVar.zzd()) {
                if (zzsiVar.zzb() == zzsg.zza) {
                    return zzsiVar;
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("Keyset has primary which isn't enabled");
                return null;
            }
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Keyset has no valid primary");
        return null;
    }

    @Override // com.google.android.recaptcha.internal.zzsk
    public final int zzc() {
        return this.zza.size();
    }

    public final zzsi zzd(int i) {
        if (i < 0 || i >= zzc()) {
            int iZzc = zzc();
            zzxk$$ExternalSyntheticBUOutline0.m339m(String.valueOf(i).length() + 34 + String.valueOf(iZzc).length(), "Invalid index ", i, " for keyset of size ", iZzc);
            return null;
        }
        List list = this.zza;
        zzsi zzsiVar = (zzsi) list.get(i);
        if (!zzk(zzsiVar.zzh())) {
            zzsj$$ExternalSyntheticBUOutline0.m479m(String.valueOf(i).length() + 42, "Keyset-Entry at position ", i, " has wrong status");
            return null;
        }
        if (!zzsiVar.zzf()) {
            return (zzsi) list.get(i);
        }
        zzsj$$ExternalSyntheticBUOutline0.m479m(String.valueOf(i).length() + 48, "Keyset-Entry at position ", i, " didn't parse correctly");
        return null;
    }

    @Override // com.google.android.recaptcha.internal.zzsk
    public final zzsb zze(Class cls) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.zzb.get(cls));
        return null;
    }

    public final Object zzg(zzsc zzscVar, Class cls) throws GeneralSecurityException {
        zzwy zzwyVarZza = zza();
        int i = zzta.$r8$clinit;
        int iZza = zzwyVarZza.zza();
        int i2 = 0;
        boolean z = false;
        for (zzwx zzwxVar : zzwyVarZza.zzb()) {
            if (zzwxVar.zzi() == 3) {
                if (!zzwxVar.zza()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzwxVar.zzc())));
                }
                if (zzwxVar.zzj() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzwxVar.zzc())));
                }
                if (zzwxVar.zzi() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzwxVar.zzc())));
                }
                if (zzwxVar.zzc() == iZza) {
                    if (z) {
                        zzsj$$ExternalSyntheticBUOutline1.m480m("keyset contains multiple primary keys");
                        return null;
                    }
                    z = true;
                }
                i2++;
            }
        }
        if (i2 == 0) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("keyset must contain at least one ENABLED key");
            return null;
        }
        for (int i3 = 0; i3 < zzc(); i3++) {
            List list = this.zza;
            if (((zzsi) list.get(i3)).zzf() || !zzk(((zzsi) list.get(i3)).zzh())) {
                zzse zzseVarZze = ((zzsi) list.get(i3)).zze();
                String strZzb = zzseVarZze instanceof zzui ? ((zzui) zzseVarZze).zzc(zzsy.zza()).zzb() : "(unknown)";
                StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 44 + String.valueOf(strZzb).length() + 32);
                sb.append("Key parsing of key with index ");
                sb.append(i3);
                sb.append(" and type_url ");
                sb.append(strZzb);
                sb.append(" failed, unable to get primitive");
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return zzscVar.zza(this, cls);
    }
}
