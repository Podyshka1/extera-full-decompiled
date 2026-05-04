.class public final Lcom/google/android/gms/internal/measurement/zzfg;
.super Lcom/google/android/gms/internal/measurement/zzmb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->zzk()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmb;-><init>(Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfh;->zzj(Ljava/lang/String;)V

    return-object p0
.end method
