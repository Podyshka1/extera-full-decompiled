package com.google.android.gms.internal.play_billing;

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
/* JADX INFO: loaded from: classes5.dex */
public final class zzfr {
    public static final zzfr zza;
    public static final zzfr zzb;
    public static final zzfr zzc;
    public static final zzfr zzd;
    public static final zzfr zze;
    public static final zzfr zzf;
    public static final zzfr zzg;
    public static final zzfr zzh;
    public static final zzfr zzi;
    public static final zzfr zzj;
    private static final /* synthetic */ zzfr[] zzk;
    private final Class zzl;

    static {
        zzfr zzfrVar = new zzfr("VOID", 0, Void.class, Void.class, null);
        zza = zzfrVar;
        Class cls = Integer.TYPE;
        zzfr zzfrVar2 = new zzfr("INT", 1, cls, Integer.class, 0);
        zzb = zzfrVar2;
        zzfr zzfrVar3 = new zzfr("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzfrVar3;
        zzfr zzfrVar4 = new zzfr("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzfrVar4;
        zzfr zzfrVar5 = new zzfr("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzfrVar5;
        zzfr zzfrVar6 = new zzfr("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzfrVar6;
        zzfr zzfrVar7 = new zzfr("STRING", 6, String.class, String.class, _UrlKt.FRAGMENT_ENCODE_SET);
        zzg = zzfrVar7;
        zzfr zzfrVar8 = new zzfr("BYTE_STRING", 7, zzei.class, zzei.class, zzei.zzb);
        zzh = zzfrVar8;
        zzfr zzfrVar9 = new zzfr("ENUM", 8, cls, Integer.class, null);
        zzi = zzfrVar9;
        zzfr zzfrVar10 = new zzfr("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzfrVar10;
        zzk = new zzfr[]{zzfrVar, zzfrVar2, zzfrVar3, zzfrVar4, zzfrVar5, zzfrVar6, zzfrVar7, zzfrVar8, zzfrVar9, zzfrVar10};
    }

    private zzfr(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzl = cls2;
    }

    public static zzfr[] values() {
        return (zzfr[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzl;
    }
}
