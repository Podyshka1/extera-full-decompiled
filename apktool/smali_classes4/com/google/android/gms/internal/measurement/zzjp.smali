.class final synthetic Lcom/google/android/gms/internal/measurement/zzjp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzju;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzjr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzjr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjr;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zza:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzg()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
