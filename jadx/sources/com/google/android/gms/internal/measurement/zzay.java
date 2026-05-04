package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzay extends zzav {
    protected zzay() {
        this.zza.add(zzbk.APPLY);
        this.zza.add(zzbk.BLOCK);
        this.zza.add(zzbk.BREAK);
        this.zza.add(zzbk.CASE);
        this.zza.add(zzbk.DEFAULT);
        this.zza.add(zzbk.CONTINUE);
        this.zza.add(zzbk.DEFINE_FUNCTION);
        this.zza.add(zzbk.FN);
        this.zza.add(zzbk.IF);
        this.zza.add(zzbk.QUOTE);
        this.zza.add(zzbk.RETURN);
        this.zza.add(zzbk.SWITCH);
        this.zza.add(zzbk.TERNARY);
    }

    private static zzao zzc(zzg zzgVar, List list) {
        zzh.zzb(zzbk.FN.name(), 2, list);
        zzao zzaoVarZza = zzgVar.zza((zzao) list.get(0));
        zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(1));
        if (!(zzaoVarZza2 instanceof zzae)) {
            throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", zzaoVarZza2.getClass().getCanonicalName()));
        }
        List listZzb = ((zzae) zzaoVarZza2).zzb();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new zzan(zzaoVarZza.zzc(), listZzb, arrayList, zzgVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.zze(str).ordinal();
        if (iOrdinal == 2) {
            zzh.zza(zzbk.APPLY.name(), 3, list);
            zzao zzaoVarZza = zzgVar.zza((zzao) list.get(0));
            String strZzc = zzgVar.zza((zzao) list.get(1)).zzc();
            zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(2));
            if (!(zzaoVarZza2 instanceof zzae)) {
                throw new IllegalArgumentException(String.format("Function arguments for Apply are not a list found %s", zzaoVarZza2.getClass().getCanonicalName()));
            }
            if (strZzc.isEmpty()) {
                throw new IllegalArgumentException("Function name for apply is undefined");
            }
            return zzaoVarZza.zzcA(strZzc, zzgVar, ((zzae) zzaoVarZza2).zzb());
        }
        if (iOrdinal == 15) {
            zzh.zza(zzbk.BREAK.name(), 0, list);
            return zzao.zzh;
        }
        if (iOrdinal == 25) {
            return zzc(zzgVar, list);
        }
        if (iOrdinal == 41) {
            zzh.zzb(zzbk.IF.name(), 2, list);
            zzao zzaoVarZza3 = zzgVar.zza((zzao) list.get(0));
            zzao zzaoVarZza4 = zzgVar.zza((zzao) list.get(1));
            zzao zzaoVarZza5 = list.size() > 2 ? zzgVar.zza((zzao) list.get(2)) : null;
            zzao zzaoVar = zzao.zzf;
            zzao zzaoVarZzb = zzaoVarZza3.zze().booleanValue() ? zzgVar.zzb((zzae) zzaoVarZza4) : zzaoVarZza5 != null ? zzgVar.zzb((zzae) zzaoVarZza5) : zzaoVar;
            return true != (zzaoVarZzb instanceof zzag) ? zzaoVar : zzaoVarZzb;
        }
        if (iOrdinal == 54) {
            return new zzae(list);
        }
        if (iOrdinal == 57) {
            if (list.isEmpty()) {
                return zzao.zzj;
            }
            zzh.zza(zzbk.RETURN.name(), 1, list);
            return new zzag("return", zzgVar.zza((zzao) list.get(0)));
        }
        if (iOrdinal != 19) {
            if (iOrdinal == 20) {
                zzh.zzb(zzbk.DEFINE_FUNCTION.name(), 2, list);
                zzan zzanVar = (zzan) zzc(zzgVar, list);
                if (zzanVar.zzg() == null) {
                    zzgVar.zze(_UrlKt.FRAGMENT_ENCODE_SET, zzanVar);
                    return zzanVar;
                }
                zzgVar.zze(zzanVar.zzg(), zzanVar);
                return zzanVar;
            }
            if (iOrdinal == 60) {
                zzh.zza(zzbk.SWITCH.name(), 3, list);
                zzao zzaoVarZza6 = zzgVar.zza((zzao) list.get(0));
                zzao zzaoVarZza7 = zzgVar.zza((zzao) list.get(1));
                zzao zzaoVarZza8 = zzgVar.zza((zzao) list.get(2));
                if (!(zzaoVarZza7 instanceof zzae)) {
                    throw new IllegalArgumentException("Malformed SWITCH statement, cases are not a list");
                }
                if (!(zzaoVarZza8 instanceof zzae)) {
                    throw new IllegalArgumentException("Malformed SWITCH statement, case statements are not a list");
                }
                zzae zzaeVar = (zzae) zzaoVarZza7;
                zzae zzaeVar2 = (zzae) zzaoVarZza8;
                boolean z = false;
                for (int i = 0; i < zzaeVar.zzh(); i++) {
                    if (z || zzaoVarZza6.equals(zzgVar.zza(zzaeVar.zzl(i)))) {
                        zzao zzaoVarZza9 = zzgVar.zza(zzaeVar2.zzl(i));
                        if (zzaoVarZza9 instanceof zzag) {
                            return ((zzag) zzaoVarZza9).zzg().equals("break") ? zzao.zzf : zzaoVarZza9;
                        }
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (zzaeVar.zzh() + 1 == zzaeVar2.zzh()) {
                    zzao zzaoVarZza10 = zzgVar.zza(zzaeVar2.zzl(zzaeVar.zzh()));
                    if (zzaoVarZza10 instanceof zzag) {
                        String strZzg = ((zzag) zzaoVarZza10).zzg();
                        if (strZzg.equals("return") || strZzg.equals("continue")) {
                            return zzaoVarZza10;
                        }
                    }
                }
                return zzao.zzf;
            }
            if (iOrdinal == 61) {
                zzh.zza(zzbk.TERNARY.name(), 3, list);
                return zzgVar.zza((zzao) list.get(0)).zze().booleanValue() ? zzgVar.zza((zzao) list.get(1)) : zzgVar.zza((zzao) list.get(2));
            }
            switch (iOrdinal) {
                case 11:
                    return zzgVar.zzc().zzb(new zzae(list));
                case 12:
                    zzh.zza(zzbk.BREAK.name(), 0, list);
                    return zzao.zzi;
                case 13:
                    break;
                default:
                    return super.zzb(str);
            }
        }
        if (list.isEmpty()) {
            return zzao.zzf;
        }
        zzao zzaoVarZza11 = zzgVar.zza((zzao) list.get(0));
        return zzaoVarZza11 instanceof zzae ? zzgVar.zzb((zzae) zzaoVarZza11) : zzao.zzf;
    }
}
