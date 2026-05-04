.class final Lcom/google/android/gms/internal/measurement/zzdu;
.super Lcom/google/android/gms/internal/measurement/zzcw;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdv;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdu;->zza:Ljava/lang/Runnable;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdu;->zza:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
