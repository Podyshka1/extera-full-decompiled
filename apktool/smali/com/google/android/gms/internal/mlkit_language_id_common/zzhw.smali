.class public final enum Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id_common/zzak;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    .line 2
    const-string v3, "TYPE_THIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;->zzb:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    .line 3
    const-string v5, "TYPE_THICK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;->zzc:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    .line 4
    const-string v7, "TYPE_GMV"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;->zzd:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;->zze:[Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;->zze:[Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzhw;->zzf:I

    return v0
.end method
