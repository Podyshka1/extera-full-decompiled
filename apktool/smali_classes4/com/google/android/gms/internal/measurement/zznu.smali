.class final Lcom/google/android/gms/internal/measurement/zznu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zznu;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/measurement/zzny;

.field private final zzd:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznu;->zzb:Lcom/google/android/gms/internal/measurement/zznu;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznu;->zzd:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznd;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznu;->zzc:Lcom/google/android/gms/internal/measurement/zzny;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zznu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznu;->zzb:Lcom/google/android/gms/internal/measurement/zznu;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;
    .locals 3

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzmp;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zznu;->zzd:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zznx;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zznu;->zzc:Lcom/google/android/gms/internal/measurement/zzny;

    .line 3
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/measurement/zzny;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zznx;

    move-result-object v2

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzmp;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zznx;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v2
.end method
