.class public final enum Lcom/google/android/gms/measurement/internal/zzji;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzji;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzji;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzji;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzji;

.field private static final synthetic zzf:[Lcom/google/android/gms/measurement/internal/zzji;


# instance fields
.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzji;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    const-string v3, "uninitialized"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzji;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzji;->zza:Lcom/google/android/gms/measurement/internal/zzji;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzji;

    .line 2
    const-string v3, "POLICY"

    const/4 v4, 0x1

    const-string v5, "eu_consent_policy"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzji;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzji;->zzb:Lcom/google/android/gms/measurement/internal/zzji;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzji;

    .line 3
    const-string v5, "DENIED"

    const/4 v6, 0x2

    const-string v7, "denied"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzji;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzji;->zzc:Lcom/google/android/gms/measurement/internal/zzji;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzji;

    .line 4
    const-string v7, "GRANTED"

    const/4 v8, 0x3

    const-string v9, "granted"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzji;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/measurement/internal/zzji;->zzd:Lcom/google/android/gms/measurement/internal/zzji;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/measurement/internal/zzji;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/measurement/internal/zzji;->zzf:[Lcom/google/android/gms/measurement/internal/zzji;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzji;->zze:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzji;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzji;->zzf:[Lcom/google/android/gms/measurement/internal/zzji;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzji;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzji;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzji;->zze:Ljava/lang/String;

    return-object v0
.end method
