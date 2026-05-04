.class public abstract Lcom/google/android/gms/internal/measurement/zzca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field static final zza:Lcom/google/android/gms/internal/measurement/zzca;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbt;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbz;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzbz;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzbz;

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzbz;->zzd(I)Lcom/google/android/gms/internal/measurement/zzbz;

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzbz;->zze(I)Lcom/google/android/gms/internal/measurement/zzbz;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbz;->zzc()Lcom/google/android/gms/internal/measurement/zzca;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbt;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbz;

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzbz;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzbz;

    const/4 v4, 0x4

    .line 8
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzbz;->zzd(I)Lcom/google/android/gms/internal/measurement/zzbz;

    .line 9
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzbz;->zze(I)Lcom/google/android/gms/internal/measurement/zzbz;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbz;->zzc()Lcom/google/android/gms/internal/measurement/zzca;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzca;->zza:Lcom/google/android/gms/internal/measurement/zzca;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbt;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbz;

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzbz;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzbz;

    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbz;->zzd(I)Lcom/google/android/gms/internal/measurement/zzbz;

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzbz;->zze(I)Lcom/google/android/gms/internal/measurement/zzbz;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbz;->zzc()Lcom/google/android/gms/internal/measurement/zzca;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza()Ljava/lang/String;
.end method

.method public abstract zzb()Z
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/measurement/zzbr;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/measurement/zzbs;
.end method

.method public abstract zze()I
.end method

.method public abstract zzf()I
.end method
