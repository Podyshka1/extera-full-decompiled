.class public abstract Lcom/google/android/gms/internal/measurement/zzmb;
.super Lcom/google/android/gms/internal/measurement/zzkr;
.source "SourceFile"


# instance fields
.field protected zza:Lcom/google/android/gms/internal/measurement/zzmf;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzmf;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzmf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zzb:Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzch()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zznx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzba()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaS([BII)Lcom/google/android/gms/internal/measurement/zzkr;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzlr;->zza:Lcom/google/android/gms/internal/measurement/zzlr;

    .line 2
    sget p2, Lcom/google/android/gms/internal/measurement/zznu;->$r8$clinit:I

    const/4 p2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlr;->zza:Lcom/google/android/gms/internal/measurement/zzlr;

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbe([BIILcom/google/android/gms/internal/measurement/zzlr;)Lcom/google/android/gms/internal/measurement/zzmb;

    return-object p0
.end method

.method public final bridge synthetic zzaT([BIILcom/google/android/gms/internal/measurement/zzlr;)Lcom/google/android/gms/internal/measurement/zzkr;
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbe([BIILcom/google/android/gms/internal/measurement/zzlr;)Lcom/google/android/gms/internal/measurement/zzmb;

    return-object p0
.end method

.method protected final zzaX()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaY()V

    :cond_0
    return-void
.end method

.method protected zzaY()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zzb:Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzch()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    return-void
.end method

.method public final zzba()Lcom/google/android/gms/internal/measurement/zzmb;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zzb:Lcom/google/android/gms/internal/measurement/zzmf;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzmf;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmb;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbb()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    return-object v0
.end method

.method public zzbb()Lcom/google/android/gms/internal/measurement/zzmf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcf()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    return-object v0
.end method

.method public final zzbc()Lcom/google/android/gms/internal/measurement/zzmf;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbb()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcD()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzoh;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzoh;-><init>(Lcom/google/android/gms/internal/measurement/zznm;)V

    .line 4
    throw v1
.end method

.method public final zzbd(Lcom/google/android/gms/internal/measurement/zzmf;)Lcom/google/android/gms/internal/measurement/zzmb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zzb:Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaY()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final zzbe([BIILcom/google/android/gms/internal/measurement/zzlr;)Lcom/google/android/gms/internal/measurement/zzmb;
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcf()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzaY()V

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmb;->zza:Lcom/google/android/gms/internal/measurement/zzmf;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzkw;

    .line 5
    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/zzkw;-><init>(Lcom/google/android/gms/internal/measurement/zzlr;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    .line 6
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zznx;->zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzkw;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 7
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzmr;

    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 9
    throw p1

    .line 10
    :goto_1
    throw p1
.end method

.method public bridge synthetic zzbf()Lcom/google/android/gms/internal/measurement/zznm;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbb()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v0

    return-object v0
.end method
