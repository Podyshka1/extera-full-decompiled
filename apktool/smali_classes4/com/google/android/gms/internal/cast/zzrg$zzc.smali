.class final Lcom/google/android/gms/internal/cast/zzrg$zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/cast/zzrg$zzc;


# instance fields
.field final zzb:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzrg$zzc;

    new-instance v1, Lcom/google/android/gms/internal/cast/zzrg$zzc$1;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzrg$zzc$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzrg$zzc;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzrg$zzc;->zza:Lcom/google/android/gms/internal/cast/zzrg$zzc;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzrg$zzc;->zzb:Ljava/lang/Throwable;

    return-void
.end method
