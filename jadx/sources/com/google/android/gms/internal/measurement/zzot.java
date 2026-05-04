package com.google.android.gms.internal.measurement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzc' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class zzot {
    public static final zzot zza;
    public static final zzot zzb;
    public static final zzot zzc;
    public static final zzot zzd;
    public static final zzot zze;
    public static final zzot zzf;
    public static final zzot zzg;
    public static final zzot zzh;
    public static final zzot zzi;
    public static final zzot zzj;
    public static final zzot zzk;
    public static final zzot zzl;
    public static final zzot zzm;
    public static final zzot zzn;
    public static final zzot zzo;
    public static final zzot zzp;
    public static final zzot zzq;
    public static final zzot zzr;
    private static final /* synthetic */ zzot[] zzu;
    private final zzou zzs;
    private final int zzt;

    static {
        zzot zzotVar = new zzot("DOUBLE", 0, zzou.DOUBLE, 1);
        zza = zzotVar;
        zzot zzotVar2 = new zzot("FLOAT", 1, zzou.FLOAT, 5);
        zzb = zzotVar2;
        zzou zzouVar = zzou.LONG;
        zzot zzotVar3 = new zzot("INT64", 2, zzouVar, 0);
        zzc = zzotVar3;
        zzot zzotVar4 = new zzot("UINT64", 3, zzouVar, 0);
        zzd = zzotVar4;
        zzou zzouVar2 = zzou.INT;
        zzot zzotVar5 = new zzot("INT32", 4, zzouVar2, 0);
        zze = zzotVar5;
        zzot zzotVar6 = new zzot("FIXED64", 5, zzouVar, 1);
        zzf = zzotVar6;
        zzot zzotVar7 = new zzot("FIXED32", 6, zzouVar2, 5);
        zzg = zzotVar7;
        zzot zzotVar8 = new zzot("BOOL", 7, zzou.BOOLEAN, 0);
        zzh = zzotVar8;
        zzot zzotVar9 = new zzot("STRING", 8, zzou.STRING, 2);
        zzi = zzotVar9;
        zzou zzouVar3 = zzou.MESSAGE;
        zzot zzotVar10 = new zzot("GROUP", 9, zzouVar3, 3);
        zzj = zzotVar10;
        zzot zzotVar11 = new zzot("MESSAGE", 10, zzouVar3, 2);
        zzk = zzotVar11;
        zzot zzotVar12 = new zzot("BYTES", 11, zzou.BYTE_STRING, 2);
        zzl = zzotVar12;
        zzot zzotVar13 = new zzot("UINT32", 12, zzouVar2, 0);
        zzm = zzotVar13;
        zzot zzotVar14 = new zzot("ENUM", 13, zzou.ENUM, 0);
        zzn = zzotVar14;
        zzot zzotVar15 = new zzot("SFIXED32", 14, zzouVar2, 5);
        zzo = zzotVar15;
        zzot zzotVar16 = new zzot("SFIXED64", 15, zzouVar, 1);
        zzp = zzotVar16;
        zzot zzotVar17 = new zzot("SINT32", 16, zzouVar2, 0);
        zzq = zzotVar17;
        zzot zzotVar18 = new zzot("SINT64", 17, zzouVar, 0);
        zzr = zzotVar18;
        zzu = new zzot[]{zzotVar, zzotVar2, zzotVar3, zzotVar4, zzotVar5, zzotVar6, zzotVar7, zzotVar8, zzotVar9, zzotVar10, zzotVar11, zzotVar12, zzotVar13, zzotVar14, zzotVar15, zzotVar16, zzotVar17, zzotVar18};
    }

    private zzot(String str, int i, zzou zzouVar, int i2) {
        this.zzs = zzouVar;
        this.zzt = i2;
    }

    public static zzot[] values() {
        return (zzot[]) zzu.clone();
    }

    public final zzou zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
