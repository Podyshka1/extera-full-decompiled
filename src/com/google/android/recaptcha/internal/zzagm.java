package com.google.android.recaptcha.internal;

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
public final class zzagm {
    public static final zzagm zza;
    public static final zzagm zzb;
    public static final zzagm zzc;
    public static final zzagm zzd;
    public static final zzagm zze;
    public static final zzagm zzf;
    public static final zzagm zzg;
    public static final zzagm zzh;
    public static final zzagm zzi;
    public static final zzagm zzj;
    private static final /* synthetic */ zzagm[] zzl;
    private final Class zzk;

    static {
        zzagm zzagmVar = new zzagm("VOID", 0, Void.class, Void.class, null);
        zza = zzagmVar;
        Class cls = Integer.TYPE;
        zzagm zzagmVar2 = new zzagm("INT", 1, cls, Integer.class, 0);
        zzb = zzagmVar2;
        zzagm zzagmVar3 = new zzagm("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzagmVar3;
        zzagm zzagmVar4 = new zzagm("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzagmVar4;
        zzagm zzagmVar5 = new zzagm("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzagmVar5;
        zzagm zzagmVar6 = new zzagm("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzagmVar6;
        zzagm zzagmVar7 = new zzagm("STRING", 6, String.class, String.class, _UrlKt.FRAGMENT_ENCODE_SET);
        zzg = zzagmVar7;
        zzagm zzagmVar8 = new zzagm("BYTE_STRING", 7, zzaer.class, zzaer.class, zzaer.zza);
        zzh = zzagmVar8;
        zzagm zzagmVar9 = new zzagm("ENUM", 8, cls, Integer.class, null);
        zzi = zzagmVar9;
        zzagm zzagmVar10 = new zzagm("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzagmVar10;
        zzl = new zzagm[]{zzagmVar, zzagmVar2, zzagmVar3, zzagmVar4, zzagmVar5, zzagmVar6, zzagmVar7, zzagmVar8, zzagmVar9, zzagmVar10};
    }

    private zzagm(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzk = cls2;
    }

    public static zzagm[] values() {
        return (zzagm[]) zzl.clone();
    }

    public final Class zza() {
        return this.zzk;
    }
}
