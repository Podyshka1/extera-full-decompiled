.class public abstract Lcom/google/android/gms/internal/measurement/zzmf;
.super Lcom/google/android/gms/internal/measurement/zzks;
.source "SourceFile"


# static fields
.field private static final zzd:Ljava/util/Map;


# instance fields
.field private zzb:I

.field protected zzc:Lcom/google/android/gms/internal/measurement/zzoj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmf;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzks;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zza()Lcom/google/android/gms/internal/measurement/zzoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzc:Lcom/google/android/gms/internal/measurement/zzoj;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zznx;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object p1

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zznx;->zze(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static zzco(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzmf;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmf;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmf;

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmf;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzop;->zzc(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmf;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzmf;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmf;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return-object v1
.end method

.method protected static zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcg()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmf;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static zzcq(Lcom/google/android/gms/internal/measurement/zznm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznw;-><init>(Lcom/google/android/gms/internal/measurement/zznm;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zzcr(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzcs()Lcom/google/android/gms/internal/measurement/zzmm;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzd()Lcom/google/android/gms/internal/measurement/zzmg;

    move-result-object v0

    return-object v0
.end method

.method protected static zzct()Lcom/google/android/gms/internal/measurement/zzmn;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzna;->zze()Lcom/google/android/gms/internal/measurement/zzna;

    move-result-object v0

    return-object v0
.end method

.method protected static zzcu(Lcom/google/android/gms/internal/measurement/zzmn;)Lcom/google/android/gms/internal/measurement/zzmn;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzd(I)Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object p0

    return-object p0
.end method

.method protected static zzcv()Lcom/google/android/gms/internal/measurement/zzmo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zzd()Lcom/google/android/gms/internal/measurement/zznv;

    move-result-object v0

    return-object v0
.end method

.method protected static zzcw(Lcom/google/android/gms/internal/measurement/zzmo;)Lcom/google/android/gms/internal/measurement/zzmo;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmo;->zzg(I)Lcom/google/android/gms/internal/measurement/zzmo;

    move-result-object p0

    return-object p0
.end method

.method private static final zzd(Lcom/google/android/gms/internal/measurement/zzmf;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    return v0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    .line 2
    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/measurement/zznx;->zzk(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_3

    if-eq v0, v2, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmf;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zznx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcf()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzci()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    :cond_0
    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzci()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzno;->zza(Lcom/google/android/gms/internal/measurement/zznm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzcB(Lcom/google/android/gms/internal/measurement/zzlm;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzln;->zza(Lcom/google/android/gms/internal/measurement/zzlm;)Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zznx;->zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzov;)V

    return-void
.end method

.method public final synthetic zzcC()Lcom/google/android/gms/internal/measurement/zznl;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmb;

    return-object v0
.end method

.method public final zzcD()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzd(Lcom/google/android/gms/internal/measurement/zzmf;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic zzcE()Lcom/google/android/gms/internal/measurement/zznm;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    return-object v0
.end method

.method final zzcd(Lcom/google/android/gms/internal/measurement/zznx;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcf()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zznx;->zze(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zznx;->zze(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    return p1

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return v0
.end method

.method final zzcf()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzcg()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    return-void
.end method

.method final zzch()Lcom/google/android/gms/internal/measurement/zzmf;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmf;

    return-object v0
.end method

.method final zzci()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zznx;->zzc(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final zzcj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zza()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zznx;->zzj(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcg()V

    return-void
.end method

.method protected final zzck()Lcom/google/android/gms/internal/measurement/zzmb;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmb;

    return-object v0
.end method

.method public final zzcl()Lcom/google/android/gms/internal/measurement/zzmb;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmf;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmb;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbd(Lcom/google/android/gms/internal/measurement/zzmf;)Lcom/google/android/gms/internal/measurement/zzmb;

    return-object v0
.end method

.method final zzcm(I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    return-void
.end method

.method public final zzcn()I
    .locals 5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcf()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzmf;->zzc(Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2

    return v0

    .line 1
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzmf;->zzc(Lcom/google/android/gms/internal/measurement/zznx;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzmf;->zzb:I

    return v0

    .line 1
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
