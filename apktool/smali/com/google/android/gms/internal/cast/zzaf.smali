.class public final Lcom/google/android/gms/internal/cast/zzaf;
.super Lcom/google/android/gms/cast/framework/zzad;
.source "SourceFile"


# static fields
.field static final zzb:I

.field private static final zzc:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final zza:Ljava/util/Set;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "AppVisibilityProxy"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzaf;->zzc:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/cast/zzaf;->zzb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzad;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzaf;->zza:Ljava/util/Set;

    sget v0, Lcom/google/android/gms/internal/cast/zzaf;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzaf;->zzd:I

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzaf;->zzc:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onAppEnteredBackground"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzaf;->zzd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaf;->zza:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzae;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzae;->zza()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzaf;->zzc:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onAppEnteredForeground"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzaf;->zzd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaf;->zza:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzae;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzae;->zzb()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zze()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzaf;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
