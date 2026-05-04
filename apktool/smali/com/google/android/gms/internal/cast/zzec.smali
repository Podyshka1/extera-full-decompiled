.class public abstract Lcom/google/android/gms/internal/cast/zzec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/cast/zzdz;

.field private static volatile zzb:Lcom/google/android/gms/internal/cast/zzdz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/cast/zzeb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzeb;-><init>(Lcom/google/android/gms/internal/cast/zzea;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzec;->zza:Lcom/google/android/gms/internal/cast/zzdz;

    sput-object v0, Lcom/google/android/gms/internal/cast/zzec;->zzb:Lcom/google/android/gms/internal/cast/zzdz;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/cast/zzdz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzec;->zzb:Lcom/google/android/gms/internal/cast/zzdz;

    return-object v0
.end method
