.class public abstract Lcom/google/android/gms/internal/cast/zztm;
.super Lcom/google/android/gms/internal/cast/zzsg;
.source "SourceFile"


# instance fields
.field protected zza:Lcom/google/android/gms/internal/cast/zztp;

.field private final zzb:Lcom/google/android/gms/internal/cast/zztp;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/cast/zztp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzsg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zztm;->zzb:Lcom/google/android/gms/internal/cast/zztp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztp;->zzK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztp;->zzx()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvf;->zza()Lcom/google/android/gms/internal/cast/zzvf;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzvf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzvi;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztm;->zzo()Lcom/google/android/gms/internal/cast/zztm;

    move-result-object v0

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/cast/zztm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zzb:Lcom/google/android/gms/internal/cast/zztp;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zztp;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/cast/zztm;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztm;->zzr()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    return-object v0
.end method

.method public final zzp(Lcom/google/android/gms/internal/cast/zztp;)Lcom/google/android/gms/internal/cast/zztm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zzb:Lcom/google/android/gms/internal/cast/zztp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zztp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztm;->zzv()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zztm;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final zzq()Lcom/google/android/gms/internal/cast/zztp;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztm;->zzr()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zztp;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvf;->zza()Lcom/google/android/gms/internal/cast/zzvf;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/cast/zzvf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v3

    .line 5
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/cast/zzvi;->zzh(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/4 v4, 0x2

    .line 8
    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/cast/zztp;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_2

    :goto_1
    return-object v0

    .line 4
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/cast/zzvy;

    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zzvy;-><init>(Lcom/google/android/gms/internal/cast/zzux;)V

    .line 10
    throw v1
.end method

.method public zzr()Lcom/google/android/gms/internal/cast/zztp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzK()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    return-object v0
.end method

.method public bridge synthetic zzs()Lcom/google/android/gms/internal/cast/zzux;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztm;->zzr()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    return-object v0
.end method

.method protected final zzu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztm;->zzv()V

    :cond_0
    return-void
.end method

.method protected zzv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zzb:Lcom/google/android/gms/internal/cast/zztp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzx()Lcom/google/android/gms/internal/cast/zztp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zztm;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zztm;->zza:Lcom/google/android/gms/internal/cast/zztp;

    return-void
.end method
