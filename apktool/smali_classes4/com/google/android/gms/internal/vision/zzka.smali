.class final Lcom/google/android/gms/internal/vision/zzka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzkl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzki;
    .locals 1

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This should never be called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
