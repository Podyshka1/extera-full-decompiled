.class final synthetic Lcom/google/android/gms/internal/measurement/zzjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzju;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzjy;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzjy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Lcom/google/android/gms/internal/measurement/zzjy;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Lcom/google/android/gms/internal/measurement/zzjy;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
