.class public final synthetic Lcom/google/android/gms/internal/mlkit_language_id_common/zzle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzli;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/zzli;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzle;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzli;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzle;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzli;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
