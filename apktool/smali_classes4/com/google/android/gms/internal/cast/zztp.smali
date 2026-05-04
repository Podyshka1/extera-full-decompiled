.class public abstract Lcom/google/android/gms/internal/cast/zztp;
.super Lcom/google/android/gms/internal/cast/zzsh;
.source "SourceFile"


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/cast/zzwa;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zztp;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzsh;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzwa;->zzc()Lcom/google/android/gms/internal/cast/zzwa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zztp;->zzc:Lcom/google/android/gms/internal/cast/zzwa;

    return-void
.end method

.method protected static zzA()Lcom/google/android/gms/internal/cast/zztx;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvg;->zzd()Lcom/google/android/gms/internal/cast/zzvg;

    move-result-object v0

    return-object v0
.end method

.method protected static zzB(Lcom/google/android/gms/internal/cast/zztx;)Lcom/google/android/gms/internal/cast/zztx;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/cast/zztx;->zzg(I)Lcom/google/android/gms/internal/cast/zztx;

    move-result-object p0

    return-object p0
.end method

.method static varargs zzD(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method protected static zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzvh;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzvh;-><init>(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zztp;->zzG()V

    sget-object v0, Lcom/google/android/gms/internal/cast/zztp;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/cast/zzvi;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvf;->zza()Lcom/google/android/gms/internal/cast/zzvf;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzvf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object p1

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/cast/zzvi;->zza(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static zzw(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zztp;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zztp;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zztp;

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

    check-cast v1, Lcom/google/android/gms/internal/cast/zztp;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzwj;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zztp;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/cast/zztp;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/cast/zztp;

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 8
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return-object v1
.end method

.method protected static zzy()Lcom/google/android/gms/internal/cast/zztu;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztq;->zze()Lcom/google/android/gms/internal/cast/zztq;

    move-result-object v0

    return-object v0
.end method

.method protected static zzz()Lcom/google/android/gms/internal/cast/zztw;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzum;->zze()Lcom/google/android/gms/internal/cast/zzum;

    move-result-object v0

    return-object v0
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

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvf;->zza()Lcom/google/android/gms/internal/cast/zzvf;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cast/zzvf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zztp;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzvi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztp;->zzK()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzsh;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztp;->zzs()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzsh;->zza:I

    :cond_0
    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztp;->zzs()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/cast/zzuz;->zza(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzC()Lcom/google/android/gms/internal/cast/zzuw;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/cast/zztp;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/cast/zztm;

    return-object v0
.end method

.method protected final zzF()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvf;->zza()Lcom/google/android/gms/internal/cast/zzvf;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzvf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/cast/zzvi;->zzd(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztp;->zzG()V

    return-void
.end method

.method final zzG()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    return-void
.end method

.method final zzI(I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/internal/cast/zztc;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvf;->zza()Lcom/google/android/gms/internal/cast/zzvf;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzvf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zztd;->zza(Lcom/google/android/gms/internal/cast/zztc;)Lcom/google/android/gms/internal/cast/zztd;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzvi;->zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzwq;)V

    return-void
.end method

.method final zzK()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzq(Lcom/google/android/gms/internal/cast/zzvi;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztp;->zzK()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/cast/zzvi;->zza(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/cast/zzvi;->zza(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    return p1

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return v0
.end method

.method final zzs()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvf;->zza()Lcom/google/android/gms/internal/cast/zzvf;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzvf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/cast/zzvi;->zzb(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final synthetic zzt()Lcom/google/android/gms/internal/cast/zzux;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/cast/zztp;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/cast/zztp;

    return-object v0
.end method

.method public final zzu()I
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zztp;->zzK()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/cast/zztp;->zza(Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2

    return v0

    .line 1
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/cast/zztp;->zza(Lcom/google/android/gms/internal/cast/zzvi;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/cast/zztp;->zzd:I

    return v0

    .line 1
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final zzv()Lcom/google/android/gms/internal/cast/zztm;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/cast/zztp;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/cast/zztm;

    return-object v0
.end method

.method final zzx()Lcom/google/android/gms/internal/cast/zztp;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/cast/zztp;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/cast/zztp;

    return-object v0
.end method
