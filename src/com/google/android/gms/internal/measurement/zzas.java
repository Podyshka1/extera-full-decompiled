package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzas implements Iterable, zzao {
    private final String zza;

    public zzas(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.zza = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzas) {
            return this.zza.equals(((zzas) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzar(this);
    }

    public final String toString() {
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append("\"");
        sb.append(str);
        sb.append("\"");
        return sb.toString();
    }

    final /* synthetic */ String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String zzc() {
        return this.zza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x05ae  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x05ca  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c6 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0256  */
    @Override // com.google.android.gms.internal.measurement.zzao
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzao zzcA(String str, zzg zzgVar, List list) {
        String str2;
        int i;
        String str3;
        String str4;
        String strZzc;
        int i2;
        zzas zzasVar;
        int i3;
        int i4;
        int i5;
        zzg zzgVar2;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || "search".equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str)) {
            str2 = "toLocaleUpperCase";
            i = 0;
        } else {
            str2 = "toLocaleUpperCase";
            i = 0;
            if (!str2.equals(str)) {
                str3 = "hasOwnProperty";
                str4 = "trim";
                if (!str4.equals(str)) {
                    throw new IllegalArgumentException(String.format("%s is not a String function", str));
                }
            }
            strZzc = "undefined";
            switch (str.hashCode()) {
                case -1789698943:
                    int i6 = i;
                    String str5 = str3;
                    if (str.equals(str5)) {
                        zzh.zza(str5, 1, list);
                        String str6 = this.zza;
                        zzao zzaoVarZza = zzgVar.zza((zzao) list.get(i6));
                        if ("length".equals(zzaoVarZza.zzc())) {
                            return zzao.zzk;
                        }
                        double dDoubleValue = zzaoVarZza.zzd().doubleValue();
                        return (dDoubleValue != Math.floor(dDoubleValue) || (i2 = (int) dDoubleValue) < 0 || i2 >= str6.length()) ? zzao.zzl : zzao.zzk;
                    }
                    throw new IllegalArgumentException("Command not supported");
                case -1776922004:
                    int i7 = i;
                    if (str.equals("toString")) {
                        zzh.zza("toString", i7, list);
                        return this;
                    }
                    throw new IllegalArgumentException("Command not supported");
                case -1464939364:
                    if (str.equals("toLocaleLowerCase")) {
                        zzh.zza("toLocaleLowerCase", 0, list);
                        return new zzas(this.zza.toLowerCase());
                    }
                    throw new IllegalArgumentException("Command not supported");
                case -1361633751:
                    if (str.equals("charAt")) {
                        zzh.zzc("charAt", 1, list);
                        int iZzi = !list.isEmpty() ? (int) zzh.zzi(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue()) : 0;
                        String str7 = this.zza;
                        return (iZzi < 0 || iZzi >= str7.length()) ? zzao.zzm : new zzas(String.valueOf(str7.charAt(iZzi)));
                    }
                    throw new IllegalArgumentException("Command not supported");
                case -1354795244:
                    zzasVar = this;
                    if (str.equals("concat")) {
                        if (!list.isEmpty()) {
                            StringBuilder sb = new StringBuilder(zzasVar.zza);
                            for (int i8 = 0; i8 < list.size(); i8++) {
                                sb.append(zzgVar.zza((zzao) list.get(i8)).zzc());
                            }
                            return new zzas(sb.toString());
                        }
                        return zzasVar;
                    }
                    throw new IllegalArgumentException("Command not supported");
                case -1137582698:
                    if (str.equals("toLowerCase")) {
                        zzh.zza("toLowerCase", 0, list);
                        return new zzas(this.zza.toLowerCase(Locale.ENGLISH));
                    }
                    throw new IllegalArgumentException("Command not supported");
                case -906336856:
                    if (str.equals("search")) {
                        zzh.zzc("search", 1, list);
                        return Pattern.compile(list.isEmpty() ? "undefined" : zzgVar.zza((zzao) list.get(0)).zzc()).matcher(this.zza).find() ? new zzah(Double.valueOf(r1.start())) : new zzah(Double.valueOf(-1.0d));
                    }
                    throw new IllegalArgumentException("Command not supported");
                case -726908483:
                    if (str.equals(str2)) {
                        zzh.zza(str2, 0, list);
                        return new zzas(this.zza.toUpperCase());
                    }
                    throw new IllegalArgumentException("Command not supported");
                case -467511597:
                    if (str.equals("lastIndexOf")) {
                        zzh.zzc("lastIndexOf", 2, list);
                        String str8 = this.zza;
                        String strZzc2 = list.size() > 0 ? zzgVar.zza((zzao) list.get(0)).zzc() : "undefined";
                        return new zzah(Double.valueOf(str8.lastIndexOf(strZzc2, (int) (Double.isNaN(list.size() < 2 ? Double.NaN : zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()) ? Double.POSITIVE_INFINITY : zzh.zzi(r3)))));
                    }
                    throw new IllegalArgumentException("Command not supported");
                case -399551817:
                    int i9 = i;
                    if (str.equals("toUpperCase")) {
                        zzh.zza("toUpperCase", i9, list);
                        return new zzas(this.zza.toUpperCase(Locale.ENGLISH));
                    }
                    throw new IllegalArgumentException("Command not supported");
                case 3568674:
                    int i10 = i;
                    if (str.equals(str4)) {
                        zzh.zza("toUpperCase", i10, list);
                        return new zzas(this.zza.trim());
                    }
                    throw new IllegalArgumentException("Command not supported");
                case 103668165:
                    if (str.equals("match")) {
                        zzh.zzc("match", 1, list);
                        Matcher matcher = Pattern.compile(list.size() <= 0 ? _UrlKt.FRAGMENT_ENCODE_SET : zzgVar.zza((zzao) list.get(0)).zzc()).matcher(this.zza);
                        return matcher.find() ? new zzae(Arrays.asList(new zzas(matcher.group()))) : zzao.zzg;
                    }
                    throw new IllegalArgumentException("Command not supported");
                case 109526418:
                    if (str.equals("slice")) {
                        zzh.zzc("slice", 2, list);
                        String str9 = this.zza;
                        double dZzi = zzh.zzi(!list.isEmpty() ? zzgVar.zza((zzao) list.get(0)).zzd().doubleValue() : 0.0d);
                        double dMax = dZzi < 0.0d ? Math.max(((double) str9.length()) + dZzi, 0.0d) : Math.min(dZzi, str9.length());
                        double dZzi2 = zzh.zzi(list.size() > 1 ? zzgVar.zza((zzao) list.get(1)).zzd().doubleValue() : str9.length());
                        int i11 = (int) dMax;
                        return new zzas(str9.substring(i11, Math.max(0, ((int) (dZzi2 < 0.0d ? Math.max(((double) str9.length()) + dZzi2, 0.0d) : Math.min(dZzi2, str9.length()))) - i11) + i11));
                    }
                    throw new IllegalArgumentException("Command not supported");
                case 109648666:
                    if (str.equals("split")) {
                        zzh.zzc("split", 2, list);
                        String str10 = this.zza;
                        if (str10.length() == 0) {
                            return new zzae(Arrays.asList(this));
                        }
                        ArrayList arrayList = new ArrayList();
                        if (list.isEmpty()) {
                            arrayList.add(this);
                        } else {
                            String strZzc3 = zzgVar.zza((zzao) list.get(0)).zzc();
                            long jZzh = list.size() > 1 ? zzh.zzh(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()) : 2147483647L;
                            if (jZzh == 0) {
                                return new zzae();
                            }
                            String[] strArrSplit = str10.split(Pattern.quote(strZzc3), ((int) jZzh) + 1);
                            int length = strArrSplit.length;
                            if (!strZzc3.isEmpty() || length <= 0) {
                                i3 = length;
                                i4 = 0;
                            } else {
                                boolean zIsEmpty = strArrSplit[0].isEmpty();
                                i3 = length - 1;
                                i4 = zIsEmpty;
                                if (!strArrSplit[i3].isEmpty()) {
                                    i3 = length;
                                    i4 = zIsEmpty;
                                }
                            }
                            if (length > jZzh) {
                                i3--;
                            }
                            while (i4 < i3) {
                                arrayList.add(new zzas(strArrSplit[i4]));
                                i4++;
                            }
                        }
                        return new zzae(arrayList);
                    }
                    throw new IllegalArgumentException("Command not supported");
                case 530542161:
                    if (str.equals("substring")) {
                        zzh.zzc("substring", 2, list);
                        String str11 = this.zza;
                        int iZzi2 = !list.isEmpty() ? (int) zzh.zzi(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue()) : 0;
                        int iZzi3 = list.size() > 1 ? (int) zzh.zzi(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()) : str11.length();
                        int iMin = Math.min(Math.max(iZzi2, 0), str11.length());
                        int iMin2 = Math.min(Math.max(iZzi3, 0), str11.length());
                        return new zzas(str11.substring(Math.min(iMin, iMin2), Math.max(iMin, iMin2)));
                    }
                    throw new IllegalArgumentException("Command not supported");
                case 1094496948:
                    zzasVar = this;
                    if (str.equals("replace")) {
                        zzh.zzc("replace", 2, list);
                        zzao zzaoVarZza2 = zzao.zzf;
                        if (!list.isEmpty()) {
                            strZzc = zzgVar.zza((zzao) list.get(0)).zzc();
                            if (list.size() > 1) {
                                zzaoVarZza2 = zzgVar.zza((zzao) list.get(1));
                            }
                        }
                        String str12 = strZzc;
                        String str13 = zzasVar.zza;
                        int iIndexOf = str13.indexOf(str12);
                        if (iIndexOf >= 0) {
                            if (zzaoVarZza2 instanceof zzai) {
                                i5 = 0;
                                zzaoVarZza2 = ((zzai) zzaoVarZza2).zza(zzgVar, Arrays.asList(new zzas(str12), new zzah(Double.valueOf(iIndexOf)), zzasVar));
                            } else {
                                i5 = 0;
                            }
                            String strSubstring = str13.substring(i5, iIndexOf);
                            String strZzc4 = zzaoVarZza2.zzc();
                            String strSubstring2 = str13.substring(iIndexOf + str12.length());
                            StringBuilder sb2 = new StringBuilder(String.valueOf(strSubstring).length() + String.valueOf(strZzc4).length() + String.valueOf(strSubstring2).length());
                            sb2.append(strSubstring);
                            sb2.append(strZzc4);
                            sb2.append(strSubstring2);
                            return new zzas(sb2.toString());
                        }
                        return zzasVar;
                    }
                    throw new IllegalArgumentException("Command not supported");
                case 1943291465:
                    if (str.equals("indexOf")) {
                        zzh.zzc("indexOf", 2, list);
                        String str14 = this.zza;
                        if (list.size() <= 0) {
                            zzgVar2 = zzgVar;
                        } else {
                            zzgVar2 = zzgVar;
                            strZzc = zzgVar2.zza((zzao) list.get(i)).zzc();
                        }
                        return new zzah(Double.valueOf(str14.indexOf(strZzc, (int) zzh.zzi(list.size() < 2 ? 0.0d : zzgVar2.zza((zzao) list.get(1)).zzd().doubleValue()))));
                    }
                default:
                    throw new IllegalArgumentException("Command not supported");
            }
        }
        str3 = "hasOwnProperty";
        str4 = "trim";
        strZzc = "undefined";
        switch (str.hashCode()) {
            case -1789698943:
                break;
            case -1776922004:
                break;
            case -1464939364:
                break;
            case -1361633751:
                break;
            case -1354795244:
                break;
            case -1137582698:
                break;
            case -906336856:
                break;
            case -726908483:
                break;
            case -467511597:
                break;
            case -399551817:
                break;
            case 3568674:
                break;
            case 103668165:
                break;
            case 109526418:
                break;
            case 109648666:
                break;
            case 530542161:
                break;
            case 1094496948:
                break;
            case 1943291465:
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double zzd() {
        String str = this.zza;
        if (str.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean zze() {
        return Boolean.valueOf(!this.zza.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator zzf() {
        return new zzaq(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        return new zzas(this.zza);
    }
}
