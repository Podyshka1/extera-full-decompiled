package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class zzyp {
    public static final zzyp zza;
    public static final zzyp zzb;
    public static final zzyp zzc;
    public static final zzyp zzd;
    public static final zzyp zze;
    public static final zzyp zzf;
    public static final zzyp zzg;
    public static final zzyp zzh;
    public static final zzyp zzi;
    public static final zzyp zzj;
    private static final /* synthetic */ zzyp[] zzl;
    private final Class zzk;

    static {
        zzyp zzypVar = new zzyp("VOID", 0, Void.class, Void.class, null);
        zza = zzypVar;
        Class cls = Integer.TYPE;
        zzyp zzypVar2 = new zzyp("INT", 1, cls, Integer.class, 0);
        zzb = zzypVar2;
        zzyp zzypVar3 = new zzyp("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzypVar3;
        zzyp zzypVar4 = new zzyp("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzypVar4;
        zzyp zzypVar5 = new zzyp("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzypVar5;
        zzyp zzypVar6 = new zzyp("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzypVar6;
        zzyp zzypVar7 = new zzyp("STRING", 6, String.class, String.class, _UrlKt.FRAGMENT_ENCODE_SET);
        zzg = zzypVar7;
        zzyp zzypVar8 = new zzyp("BYTE_STRING", 7, zzxk.class, zzxk.class, zzxk.zza);
        zzh = zzypVar8;
        zzyp zzypVar9 = new zzyp("ENUM", 8, cls, Integer.class, null);
        zzi = zzypVar9;
        zzyp zzypVar10 = new zzyp("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzypVar10;
        zzl = new zzyp[]{zzypVar, zzypVar2, zzypVar3, zzypVar4, zzypVar5, zzypVar6, zzypVar7, zzypVar8, zzypVar9, zzypVar10};
    }

    private zzyp(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzk = cls2;
    }

    public static zzyp[] values() {
        return (zzyp[]) zzl.clone();
    }

    public final Class zza() {
        return this.zzk;
    }
}
