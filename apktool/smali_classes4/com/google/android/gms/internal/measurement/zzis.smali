.class public final Lcom/google/android/gms/internal/measurement/zzis;
.super Lcom/google/android/gms/internal/measurement/zzmf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzis;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzis;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzis;->zzg:Lcom/google/android/gms/internal/measurement/zzis;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzis;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzil;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzis;->zzg:Lcom/google/android/gms/internal/measurement/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzck()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzil;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzis;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzis;->zzg:Lcom/google/android/gms/internal/measurement/zzis;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/measurement/zzis;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzis;->zzg:Lcom/google/android/gms/internal/measurement/zzis;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzin;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzin;->zzb(I)Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzin;->zza:Lcom/google/android/gms/internal/measurement/zzin;

    :cond_0
    return-object v0
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/measurement/zzin;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzin;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzb:I

    return-void
.end method

.method public final zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzir;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzip;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final synthetic zzh(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzb:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzb:I

    return-void
.end method

.method final synthetic zzi(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzb:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzis;->zzb:I

    return-void
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzis;->zzg:Lcom/google/android/gms/internal/measurement/zzis;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzil;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzil;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzis;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzis;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zzd"

    aput-object v3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzmk;

    aput-object p2, p1, v2

    const-string p2, "zze"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzim;->zza:Lcom/google/android/gms/internal/measurement/zzmk;

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzio;->zza:Lcom/google/android/gms/internal/measurement/zzmk;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzis;->zzg:Lcom/google/android/gms/internal/measurement/zzis;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcq(Lcom/google/android/gms/internal/measurement/zznm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
