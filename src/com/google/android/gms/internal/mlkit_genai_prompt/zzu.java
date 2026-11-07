package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzu extends zzco {
    private int zza;
    private String zzb;
    private String zzc;
    private Boolean zzd;
    private List zze;
    private zzcp zzf;
    private Long zzg;
    private Long zzh;
    private List zzi;
    private Double zzj;
    private Double zzk;
    private List zzl;
    private List zzm;
    private String zzn;
    private Map zzo;
    private byte zzp;

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zza(int i) {
        this.zza = i;
        this.zzp = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzb(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzc(String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzd(boolean z) {
        this.zzd = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zze(List list) {
        this.zze = list;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzf(zzcp zzcpVar) {
        this.zzf = zzcpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzg(long j) {
        this.zzg = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzh(long j) {
        this.zzh = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzi(List list) {
        this.zzi = list;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzj(double d) {
        this.zzj = Double.valueOf(d);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzk(double d) {
        this.zzk = Double.valueOf(d);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzl(List list) {
        this.zzl = list;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzm(List list) {
        this.zzm = list;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzn(String str) {
        this.zzn = "FunctionCall";
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzco zzo(Map map) {
        this.zzo = map;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzco
    public final zzcp zzp() {
        zzml zzmlVar;
        zzml zzmlVar2;
        Bundle bundle;
        if (this.zzp != 1) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties: type");
            return null;
        }
        int i = this.zza;
        String str = this.zzb;
        String str2 = this.zzc;
        Boolean bool = this.zzd;
        List list = this.zze;
        zzcp zzcpVar = this.zzf;
        Long l = this.zzg;
        Long l2 = this.zzh;
        List<String> list2 = this.zzi;
        Double d = this.zzj;
        Double d2 = this.zzk;
        List list3 = this.zzl;
        List list4 = this.zzm;
        String str3 = this.zzn;
        Map map = this.zzo;
        Parcelable.Creator<zzcp> creator = zzcp.CREATOR;
        if (list2 != null && !list2.isEmpty()) {
            if (map == null) {
                f$$ExternalSyntheticBUOutline1.m215m("Required property is set but properties are null or empty.");
                return null;
            }
            for (String str4 : list2) {
                if (!map.containsKey(str4)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 50);
                    sb.append("Required property '");
                    sb.append(str4);
                    sb.append("' is not present in properties.");
                    throw new IllegalArgumentException(sb.toString());
                }
            }
        }
        zzml zzmlVarZzq = list == null ? null : zzml.zzq(list);
        zzml zzmlVarZzq2 = list2 == null ? null : zzml.zzq(list2);
        zzml zzmlVarZzq3 = list3 == null ? null : zzml.zzq(list3);
        zzml zzmlVarZzq4 = list4 == null ? null : zzml.zzq(list4);
        if (map == null || map.isEmpty()) {
            zzmlVar = zzmlVarZzq;
            zzmlVar2 = zzmlVarZzq2;
            bundle = null;
        } else {
            Bundle bundle2 = new Bundle();
            Iterator it = ((zzmo) map).entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                zzcp zzcpVar2 = (zzcp) entry.getValue();
                String str5 = (String) entry.getKey();
                Iterator it2 = it;
                Bundle bundle3 = new Bundle();
                zzml zzmlVar3 = zzmlVarZzq;
                Parcel parcelObtain = Parcel.obtain();
                zzcq.zza(zzcpVar2, parcelObtain, 0);
                bundle3.putByteArray("schema_data", parcelObtain.marshall());
                parcelObtain.recycle();
                bundle2.putBundle(str5, bundle3);
                it = it2;
                zzmlVarZzq = zzmlVar3;
                zzmlVarZzq2 = zzmlVarZzq2;
            }
            zzmlVar = zzmlVarZzq;
            zzmlVar2 = zzmlVarZzq2;
            bundle = bundle2;
        }
        return new zzcp(i, str, str2, bool, zzmlVar, zzcpVar, l, l2, zzmlVar2, null, null, d, d2, null, null, null, zzmlVarZzq3, zzmlVarZzq4, str3, bundle);
    }
}
