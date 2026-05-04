package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbj extends zzav {
    protected zzbj() {
        this.zza.add(zzbk.ASSIGN);
        this.zza.add(zzbk.CONST);
        this.zza.add(zzbk.CREATE_ARRAY);
        this.zza.add(zzbk.CREATE_OBJECT);
        this.zza.add(zzbk.EXPRESSION_LIST);
        this.zza.add(zzbk.GET);
        this.zza.add(zzbk.GET_INDEX);
        this.zza.add(zzbk.GET_PROPERTY);
        this.zza.add(zzbk.NULL);
        this.zza.add(zzbk.SET_PROPERTY);
        this.zza.add(zzbk.TYPEOF);
        this.zza.add(zzbk.UNDEFINED);
        this.zza.add(zzbk.VAR);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        String str2;
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.zze(str).ordinal();
        int i = 0;
        if (iOrdinal == 3) {
            zzh.zza(zzbk.ASSIGN.name(), 2, list);
            zzao zzaoVarZza = zzgVar.zza((zzao) list.get(0));
            if (!(zzaoVarZza instanceof zzas)) {
                throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", zzaoVarZza.getClass().getCanonicalName()));
            }
            if (!zzgVar.zzd(zzaoVarZza.zzc())) {
                throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", zzaoVarZza.zzc()));
            }
            zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(1));
            zzgVar.zze(zzaoVarZza.zzc(), zzaoVarZza2);
            return zzaoVarZza2;
        }
        if (iOrdinal == 14) {
            zzh.zzb(zzbk.CONST.name(), 2, list);
            if (list.size() % 2 != 0) {
                throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(list.size())));
            }
            for (int i2 = 0; i2 < list.size() - 1; i2 += 2) {
                zzao zzaoVarZza3 = zzgVar.zza((zzao) list.get(i2));
                if (!(zzaoVarZza3 instanceof zzas)) {
                    throw new IllegalArgumentException(String.format("Expected string for const name. got %s", zzaoVarZza3.getClass().getCanonicalName()));
                }
                zzgVar.zzg(zzaoVarZza3.zzc(), zzgVar.zza((zzao) list.get(i2 + 1)));
            }
            return zzao.zzf;
        }
        if (iOrdinal == 24) {
            zzh.zzb(zzbk.EXPRESSION_LIST.name(), 1, list);
            zzao zzaoVarZza4 = zzao.zzf;
            while (i < list.size()) {
                zzaoVarZza4 = zzgVar.zza((zzao) list.get(i));
                if (zzaoVarZza4 instanceof zzag) {
                    throw new IllegalStateException("ControlValue cannot be in an expression list");
                }
                i++;
            }
            return zzaoVarZza4;
        }
        if (iOrdinal == 33) {
            zzh.zza(zzbk.GET.name(), 1, list);
            zzao zzaoVarZza5 = zzgVar.zza((zzao) list.get(0));
            if (zzaoVarZza5 instanceof zzas) {
                return zzgVar.zzh(zzaoVarZza5.zzc());
            }
            throw new IllegalArgumentException(String.format("Expected string for get var. got %s", zzaoVarZza5.getClass().getCanonicalName()));
        }
        if (iOrdinal == 49) {
            zzh.zza(zzbk.NULL.name(), 0, list);
            return zzao.zzg;
        }
        if (iOrdinal == 58) {
            zzh.zza(zzbk.SET_PROPERTY.name(), 3, list);
            zzao zzaoVarZza6 = zzgVar.zza((zzao) list.get(0));
            zzao zzaoVarZza7 = zzgVar.zza((zzao) list.get(1));
            zzao zzaoVarZza8 = zzgVar.zza((zzao) list.get(2));
            if (zzaoVarZza6 == zzao.zzf || zzaoVarZza6 == zzao.zzg) {
                throw new IllegalStateException(String.format("Can't set property %s of %s", zzaoVarZza7.zzc(), zzaoVarZza6.zzc()));
            }
            if ((zzaoVarZza6 instanceof zzae) && (zzaoVarZza7 instanceof zzah)) {
                ((zzae) zzaoVarZza6).zzn(zzaoVarZza7.zzd().intValue(), zzaoVarZza8);
                return zzaoVarZza8;
            }
            if (!(zzaoVarZza6 instanceof zzak)) {
                return zzaoVarZza8;
            }
            ((zzak) zzaoVarZza6).zzm(zzaoVarZza7.zzc(), zzaoVarZza8);
            return zzaoVarZza8;
        }
        if (iOrdinal == 17) {
            if (list.isEmpty()) {
                return new zzae();
            }
            zzae zzaeVar = new zzae();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzao zzaoVarZza9 = zzgVar.zza((zzao) it.next());
                if (zzaoVarZza9 instanceof zzag) {
                    throw new IllegalStateException("Failed to evaluate array element");
                }
                zzaeVar.zzn(i, zzaoVarZza9);
                i++;
            }
            return zzaeVar;
        }
        if (iOrdinal == 18) {
            if (list.isEmpty()) {
                return new zzal();
            }
            if (list.size() % 2 != 0) {
                throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(list.size())));
            }
            zzal zzalVar = new zzal();
            while (i < list.size() - 1) {
                zzao zzaoVarZza10 = zzgVar.zza((zzao) list.get(i));
                zzao zzaoVarZza11 = zzgVar.zza((zzao) list.get(i + 1));
                if ((zzaoVarZza10 instanceof zzag) || (zzaoVarZza11 instanceof zzag)) {
                    throw new IllegalStateException("Failed to evaluate map entry");
                }
                zzalVar.zzm(zzaoVarZza10.zzc(), zzaoVarZza11);
                i += 2;
            }
            return zzalVar;
        }
        if (iOrdinal == 35 || iOrdinal == 36) {
            zzh.zza(zzbk.GET_PROPERTY.name(), 2, list);
            zzao zzaoVarZza12 = zzgVar.zza((zzao) list.get(0));
            zzao zzaoVarZza13 = zzgVar.zza((zzao) list.get(1));
            if ((zzaoVarZza12 instanceof zzae) && zzh.zzd(zzaoVarZza13)) {
                return ((zzae) zzaoVarZza12).zzl(zzaoVarZza13.zzd().intValue());
            }
            if (zzaoVarZza12 instanceof zzak) {
                return ((zzak) zzaoVarZza12).zzk(zzaoVarZza13.zzc());
            }
            if (zzaoVarZza12 instanceof zzas) {
                if ("length".equals(zzaoVarZza13.zzc())) {
                    return new zzah(Double.valueOf(zzaoVarZza12.zzc().length()));
                }
                if (zzh.zzd(zzaoVarZza13) && zzaoVarZza13.zzd().doubleValue() < zzaoVarZza12.zzc().length()) {
                    return new zzas(String.valueOf(zzaoVarZza12.zzc().charAt(zzaoVarZza13.zzd().intValue())));
                }
            }
            return zzao.zzf;
        }
        switch (iOrdinal) {
            case 62:
                zzh.zza(zzbk.TYPEOF.name(), 1, list);
                zzao zzaoVarZza14 = zzgVar.zza((zzao) list.get(0));
                if (zzaoVarZza14 instanceof zzat) {
                    str2 = "undefined";
                } else if (zzaoVarZza14 instanceof zzaf) {
                    str2 = "boolean";
                } else if (zzaoVarZza14 instanceof zzah) {
                    str2 = "number";
                } else if (zzaoVarZza14 instanceof zzas) {
                    str2 = "string";
                } else if (zzaoVarZza14 instanceof zzan) {
                    str2 = "function";
                } else {
                    if ((zzaoVarZza14 instanceof zzap) || (zzaoVarZza14 instanceof zzag)) {
                        throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", zzaoVarZza14));
                    }
                    str2 = "object";
                }
                return new zzas(str2);
            case 63:
                zzh.zza(zzbk.UNDEFINED.name(), 0, list);
                return zzao.zzf;
            case 64:
                zzh.zzb(zzbk.VAR.name(), 1, list);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    zzao zzaoVarZza15 = zzgVar.zza((zzao) it2.next());
                    if (!(zzaoVarZza15 instanceof zzas)) {
                        throw new IllegalArgumentException(String.format("Expected string for var name. got %s", zzaoVarZza15.getClass().getCanonicalName()));
                    }
                    zzgVar.zzf(zzaoVarZza15.zzc(), zzao.zzf);
                }
                return zzao.zzf;
            default:
                return super.zzb(str);
        }
    }
}
