.class final Lcom/google/android/gms/internal/cast/zzup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzvj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/cast/zzuv;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/cast/zzuv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzun;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzun;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzup;->zza:Lcom/google/android/gms/internal/cast/zzuv;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzuo;

    invoke-static {}, Lcom/google/android/gms/internal/cast/zztl;->zza()Lcom/google/android/gms/internal/cast/zztl;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/cast/zzuv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/cast/zzup;->zza:Lcom/google/android/gms/internal/cast/zzuv;

    :goto_0
    const/4 v3, 0x2

    .line 2
    new-array v3, v3, [Lcom/google/android/gms/internal/cast/zzuv;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/cast/zzuo;-><init>([Lcom/google/android/gms/internal/cast/zzuv;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzup;->zzb:Lcom/google/android/gms/internal/cast/zzuv;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/cast/zzuu;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/cast/zzuu;->zzc()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzvk;->zzp(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzup;->zzb:Lcom/google/android/gms/internal/cast/zzuv;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzuv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzuu;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/cast/zzuu;->zzb()Z

    move-result v0

    const-class v1, Lcom/google/android/gms/internal/cast/zztp;

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzn()Lcom/google/android/gms/internal/cast/zzvz;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzth;->zzb()Lcom/google/android/gms/internal/cast/zztf;

    move-result-object v0

    .line 27
    invoke-interface {v2}, Lcom/google/android/gms/internal/cast/zzuu;->zza()Lcom/google/android/gms/internal/cast/zzux;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzvb;->zzi(Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzux;)Lcom/google/android/gms/internal/cast/zzvb;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzm()Lcom/google/android/gms/internal/cast/zzvz;

    move-result-object p1

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzth;->zza()Lcom/google/android/gms/internal/cast/zztf;

    move-result-object v0

    .line 29
    invoke-interface {v2}, Lcom/google/android/gms/internal/cast/zzuu;->zza()Lcom/google/android/gms/internal/cast/zzux;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzvb;->zzi(Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzux;)Lcom/google/android/gms/internal/cast/zzvb;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzup;->zzb(Lcom/google/android/gms/internal/cast/zzuu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvd;->zzb()Lcom/google/android/gms/internal/cast/zzvc;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzul;->zzd()Lcom/google/android/gms/internal/cast/zzul;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzn()Lcom/google/android/gms/internal/cast/zzvz;

    move-result-object v5

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzth;->zzb()Lcom/google/android/gms/internal/cast/zztf;

    move-result-object v6

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzut;->zzb()Lcom/google/android/gms/internal/cast/zzus;

    move-result-object v7

    move-object v1, p1

    .line 10
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/cast/zzva;->zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v1, p1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvd;->zzb()Lcom/google/android/gms/internal/cast/zzvc;

    move-result-object v3

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzul;->zzd()Lcom/google/android/gms/internal/cast/zzul;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzn()Lcom/google/android/gms/internal/cast/zzvz;

    move-result-object v5

    const/4 v6, 0x0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzut;->zzb()Lcom/google/android/gms/internal/cast/zzus;

    move-result-object v7

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/cast/zzva;->zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v1, p1

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzup;->zzb(Lcom/google/android/gms/internal/cast/zzuu;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvd;->zza()Lcom/google/android/gms/internal/cast/zzvc;

    move-result-object v3

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzul;->zzc()Lcom/google/android/gms/internal/cast/zzul;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzm()Lcom/google/android/gms/internal/cast/zzvz;

    move-result-object v5

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzth;->zza()Lcom/google/android/gms/internal/cast/zztf;

    move-result-object v6

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzut;->zza()Lcom/google/android/gms/internal/cast/zzus;

    move-result-object v7

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/cast/zzva;->zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;

    move-result-object p1

    return-object p1

    .line 21
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvd;->zza()Lcom/google/android/gms/internal/cast/zzvc;

    move-result-object v3

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzul;->zzc()Lcom/google/android/gms/internal/cast/zzul;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/cast/zzvk;->zzm()Lcom/google/android/gms/internal/cast/zzvz;

    move-result-object v5

    const/4 v6, 0x0

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzut;->zza()Lcom/google/android/gms/internal/cast/zzus;

    move-result-object v7

    .line 24
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/cast/zzva;->zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzuu;Lcom/google/android/gms/internal/cast/zzvc;Lcom/google/android/gms/internal/cast/zzul;Lcom/google/android/gms/internal/cast/zzvz;Lcom/google/android/gms/internal/cast/zztf;Lcom/google/android/gms/internal/cast/zzus;)Lcom/google/android/gms/internal/cast/zzva;

    move-result-object p1

    return-object p1
.end method
