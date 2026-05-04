.class public final enum Lcom/google/android/gms/measurement/internal/zzlr;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzlr;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzlr;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzlr;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzlr;

.field private static final synthetic zzf:[Lcom/google/android/gms/measurement/internal/zzlr;


# instance fields
.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlr;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/zzlr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzlr;->zza:Lcom/google/android/gms/measurement/internal/zzlr;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlr;

    .line 2
    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/measurement/internal/zzlr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzlr;->zzb:Lcom/google/android/gms/measurement/internal/zzlr;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlr;

    .line 3
    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/measurement/internal/zzlr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzlr;->zzc:Lcom/google/android/gms/measurement/internal/zzlr;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzlr;

    .line 4
    const-string v7, "BACKOFF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/measurement/internal/zzlr;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/measurement/internal/zzlr;->zzd:Lcom/google/android/gms/measurement/internal/zzlr;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/measurement/internal/zzlr;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/measurement/internal/zzlr;->zzf:[Lcom/google/android/gms/measurement/internal/zzlr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zze:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzlr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzlr;->zzf:[Lcom/google/android/gms/measurement/internal/zzlr;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzlr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzlr;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zze:I

    return v0
.end method
