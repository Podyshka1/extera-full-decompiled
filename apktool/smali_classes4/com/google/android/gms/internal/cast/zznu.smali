.class public final Lcom/google/android/gms/internal/cast/zznu;
.super Lcom/google/android/gms/internal/cast/zztp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzuy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/zznu;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/cast/zzok;

.field private zzf:J

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/cast/zztx;

.field private zzi:Lcom/google/android/gms/internal/cast/zztx;

.field private zzj:Lcom/google/android/gms/internal/cast/zztx;

.field private zzk:Lcom/google/android/gms/internal/cast/zztx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zznu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zznu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zznu;->zzb:Lcom/google/android/gms/internal/cast/zznu;

    const-class v1, Lcom/google/android/gms/internal/cast/zznu;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zztp;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zztp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zztp;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzh:Lcom/google/android/gms/internal/cast/zztx;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzi:Lcom/google/android/gms/internal/cast/zztx;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzj:Lcom/google/android/gms/internal/cast/zztx;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/cast/zztp;->zzA()Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzk:Lcom/google/android/gms/internal/cast/zztx;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/cast/zznt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zznu;->zzb:Lcom/google/android/gms/internal/cast/zznu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzv()Lcom/google/android/gms/internal/cast/zztm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zznt;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/cast/zznu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zznu;->zzb:Lcom/google/android/gms/internal/cast/zznu;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/cast/zznu;Lcom/google/android/gms/internal/cast/zzok;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zznu;->zze:Lcom/google/android/gms/internal/cast/zzok;

    iget p1, p0, Lcom/google/android/gms/internal/cast/zznu;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/cast/zznu;->zzd:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/cast/zznu;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zznu;->zzf:J

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/cast/zznu;Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzh:Lcom/google/android/gms/internal/cast/zztx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zztx;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzB(Lcom/google/android/gms/internal/cast/zztx;)Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzh:Lcom/google/android/gms/internal/cast/zztx;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzh:Lcom/google/android/gms/internal/cast/zztx;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 4
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 6
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_2

    .line 11
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/cast/zznu;Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzi:Lcom/google/android/gms/internal/cast/zztx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zztx;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzB(Lcom/google/android/gms/internal/cast/zztx;)Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzi:Lcom/google/android/gms/internal/cast/zztx;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzi:Lcom/google/android/gms/internal/cast/zztx;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 4
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 6
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_2

    .line 11
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/cast/zznu;Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzj:Lcom/google/android/gms/internal/cast/zztx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zztx;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzB(Lcom/google/android/gms/internal/cast/zztx;)Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzj:Lcom/google/android/gms/internal/cast/zztx;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzj:Lcom/google/android/gms/internal/cast/zztx;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 4
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 6
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_2

    .line 11
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/cast/zznu;Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzk:Lcom/google/android/gms/internal/cast/zztx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zztx;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zztp;->zzB(Lcom/google/android/gms/internal/cast/zztx;)Lcom/google/android/gms/internal/cast/zztx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzk:Lcom/google/android/gms/internal/cast/zztx;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zznu;->zzk:Lcom/google/android/gms/internal/cast/zztx;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzty;->zzd:[B

    .line 4
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 6
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_2

    .line 11
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zznu;->zzb:Lcom/google/android/gms/internal/cast/zznu;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zznt;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zznt;-><init>(Lcom/google/android/gms/internal/cast/zzms;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zznu;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zznu;-><init>()V

    return-object p1

    .line 2
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzlq;->zza()Lcom/google/android/gms/internal/cast/zztt;

    move-result-object p1

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "zzd"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "zze"

    aput-object v4, v3, p2

    const-string p2, "zzf"

    aput-object p2, v3, v2

    const-string p2, "zzg"

    aput-object p2, v3, v1

    aput-object p1, v3, v0

    const-string p1, "zzh"

    aput-object p1, v3, p3

    const-class p1, Lcom/google/android/gms/internal/cast/zzns;

    const/4 p2, 0x6

    aput-object p1, v3, p2

    const-string p1, "zzi"

    const/4 p2, 0x7

    aput-object p1, v3, p2

    const-class p1, Lcom/google/android/gms/internal/cast/zznq;

    const/16 p2, 0x8

    aput-object p1, v3, p2

    const-string p1, "zzj"

    const/16 p2, 0x9

    aput-object p1, v3, p2

    const-class p1, Lcom/google/android/gms/internal/cast/zzny;

    const/16 p2, 0xa

    aput-object p1, v3, p2

    const-string p1, "zzk"

    const/16 p2, 0xb

    aput-object p1, v3, p2

    const-class p1, Lcom/google/android/gms/internal/cast/zznw;

    const/16 p2, 0xc

    aput-object p1, v3, p2

    sget-object p1, Lcom/google/android/gms/internal/cast/zznu;->zzb:Lcom/google/android/gms/internal/cast/zznu;

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001\u1009\u0000\u0002\u1005\u0001\u0003\u180c\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u001b"

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/cast/zztp;->zzE(Lcom/google/android/gms/internal/cast/zzux;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
