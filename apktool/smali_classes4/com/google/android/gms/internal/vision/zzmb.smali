.class final Lcom/google/android/gms/internal/vision/zzmb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private zza:Ljava/util/Iterator;

.field private final synthetic zzb:Lcom/google/android/gms/internal/vision/zzlz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/zzlz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzmb;->zzb:Lcom/google/android/gms/internal/vision/zzlz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzlz;->zza(Lcom/google/android/gms/internal/vision/zzlz;)Lcom/google/android/gms/internal/vision/zzjv;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzmb;->zza:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzmb;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzmb;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
