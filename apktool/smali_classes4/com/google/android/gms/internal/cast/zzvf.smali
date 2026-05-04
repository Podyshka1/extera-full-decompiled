.class final Lcom/google/android/gms/internal/cast/zzvf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/cast/zzvf;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/cast/zzvj;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzvf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzvf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzvf;->zza:Lcom/google/android/gms/internal/cast/zzvf;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzvf;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzup;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzup;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzvf;->zzb:Lcom/google/android/gms/internal/cast/zzvj;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/cast/zzvf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzvf;->zza:Lcom/google/android/gms/internal/cast/zzvf;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;
    .locals 2

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/cast/zzty;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzvf;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzvi;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzvf;->zzb:Lcom/google/android/gms/internal/cast/zzvj;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/cast/zzvj;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzvi;

    move-result-object v1

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/cast/zzty;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzvf;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzvi;

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    return-object p1

    :cond_1
    return-object v1
.end method
