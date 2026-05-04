package com.google.android.gms.internal.measurement;

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
public final class zzms {
    public static final zzms zza;
    public static final zzms zzb;
    public static final zzms zzc;
    public static final zzms zzd;
    public static final zzms zze;
    public static final zzms zzf;
    public static final zzms zzg;
    public static final zzms zzh;
    public static final zzms zzi;
    public static final zzms zzj;
    private static final /* synthetic */ zzms[] zzl;
    private final Class zzk;

    static {
        zzms zzmsVar = new zzms("VOID", 0, Void.class, Void.class, null);
        zza = zzmsVar;
        Class cls = Integer.TYPE;
        zzms zzmsVar2 = new zzms("INT", 1, cls, Integer.class, 0);
        zzb = zzmsVar2;
        zzms zzmsVar3 = new zzms("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzmsVar3;
        zzms zzmsVar4 = new zzms("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzmsVar4;
        zzms zzmsVar5 = new zzms("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzmsVar5;
        zzms zzmsVar6 = new zzms("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzmsVar6;
        zzms zzmsVar7 = new zzms("STRING", 6, String.class, String.class, _UrlKt.FRAGMENT_ENCODE_SET);
        zzg = zzmsVar7;
        zzms zzmsVar8 = new zzms("BYTE_STRING", 7, zzlh.class, zzlh.class, zzlh.zzb);
        zzh = zzmsVar8;
        zzms zzmsVar9 = new zzms("ENUM", 8, cls, Integer.class, null);
        zzi = zzmsVar9;
        zzms zzmsVar10 = new zzms("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzmsVar10;
        zzl = new zzms[]{zzmsVar, zzmsVar2, zzmsVar3, zzmsVar4, zzmsVar5, zzmsVar6, zzmsVar7, zzmsVar8, zzmsVar9, zzmsVar10};
    }

    private zzms(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzk = cls2;
    }

    public static zzms[] values() {
        return (zzms[]) zzl.clone();
    }

    public final Class zza() {
        return this.zzk;
    }
}
