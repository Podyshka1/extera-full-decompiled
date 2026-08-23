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
public final class zzub {
    public static final zzub zza;
    public static final zzub zzb;
    public static final zzub zzc;
    public static final zzub zzd;
    public static final zzub zze;
    public static final zzub zzf;
    public static final zzub zzg;
    public static final zzub zzh;
    public static final zzub zzi;
    public static final zzub zzj;
    private static final /* synthetic */ zzub[] zzk;
    private final Class zzl;
    private final Class zzm;
    private final Object zzn;

    static {
        zzub zzubVar = new zzub("VOID", 0, Void.class, Void.class, null);
        zza = zzubVar;
        Class cls = Integer.TYPE;
        zzub zzubVar2 = new zzub("INT", 1, cls, Integer.class, 0);
        zzb = zzubVar2;
        zzub zzubVar3 = new zzub("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzubVar3;
        zzub zzubVar4 = new zzub("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzubVar4;
        zzub zzubVar5 = new zzub("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzubVar5;
        zzub zzubVar6 = new zzub("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzubVar6;
        zzub zzubVar7 = new zzub("STRING", 6, String.class, String.class, _UrlKt.FRAGMENT_ENCODE_SET);
        zzg = zzubVar7;
        zzub zzubVar8 = new zzub("BYTE_STRING", 7, zzsu.class, zzsu.class, zzsu.zzb);
        zzh = zzubVar8;
        zzub zzubVar9 = new zzub("ENUM", 8, cls, Integer.class, null);
        zzi = zzubVar9;
        zzub zzubVar10 = new zzub("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzubVar10;
        zzk = new zzub[]{zzubVar, zzubVar2, zzubVar3, zzubVar4, zzubVar5, zzubVar6, zzubVar7, zzubVar8, zzubVar9, zzubVar10};
    }

    private zzub(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }

    public static zzub[] values() {
        return (zzub[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzm;
    }
}
