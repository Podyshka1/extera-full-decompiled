.class public final enum Lcom/google/android/gms/measurement/internal/zzls;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzls;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzls;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzls;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzls;

.field public static final enum zze:Lcom/google/android/gms/measurement/internal/zzls;

.field public static final enum zzf:Lcom/google/android/gms/measurement/internal/zzls;

.field private static final synthetic zzh:[Lcom/google/android/gms/measurement/internal/zzls;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzls;

    const-string v1, "GOOGLE_ANALYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/zzls;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzls;->zza:Lcom/google/android/gms/measurement/internal/zzls;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzls;

    .line 2
    const-string v3, "GOOGLE_SIGNAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/measurement/internal/zzls;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzls;->zzb:Lcom/google/android/gms/measurement/internal/zzls;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzls;

    .line 3
    const-string v5, "SGTM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/measurement/internal/zzls;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzls;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzls;

    .line 4
    const-string v7, "SGTM_CLIENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/measurement/internal/zzls;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/measurement/internal/zzls;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzls;

    .line 5
    const-string v9, "GOOGLE_SIGNAL_PENDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/measurement/internal/zzls;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/measurement/internal/zzls;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzls;

    const/16 v11, 0x63

    .line 6
    const-string v12, "UNKNOWN"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lcom/google/android/gms/measurement/internal/zzls;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/measurement/internal/zzls;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/measurement/internal/zzls;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v13

    sput-object v11, Lcom/google/android/gms/measurement/internal/zzls;->zzh:[Lcom/google/android/gms/measurement/internal/zzls;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzls;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzls;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzls;->zzh:[Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzls;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzls;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/measurement/internal/zzls;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzls;->values()[Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/google/android/gms/measurement/internal/zzls;->zzg:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzls;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzls;->zzg:I

    return v0
.end method
