.class public final synthetic Lcom/google/android/gms/internal/cast/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/cast/zze;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zze;->zza:Lcom/google/android/gms/internal/cast/zze;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/cast/zzno;

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/cast/zzux;->zzu()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/cast/zztc;->zzz([BII)Lcom/google/android/gms/internal/cast/zztc;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/cast/zzux;->zzJ(Lcom/google/android/gms/internal/cast/zztc;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zztc;->zzA()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serializing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
