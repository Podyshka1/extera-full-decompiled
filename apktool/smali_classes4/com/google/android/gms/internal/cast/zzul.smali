.class abstract Lcom/google/android/gms/internal/cast/zzul;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/cast/zzul;

.field private static final zzb:Lcom/google/android/gms/internal/cast/zzul;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzuh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzuh;-><init>(Lcom/google/android/gms/internal/cast/zzug;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzul;->zza:Lcom/google/android/gms/internal/cast/zzul;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzuj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzuj;-><init>(Lcom/google/android/gms/internal/cast/zzui;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzul;->zzb:Lcom/google/android/gms/internal/cast/zzul;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzuk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()Lcom/google/android/gms/internal/cast/zzul;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzul;->zza:Lcom/google/android/gms/internal/cast/zzul;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/cast/zzul;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cast/zzul;->zzb:Lcom/google/android/gms/internal/cast/zzul;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
