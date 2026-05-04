.class final Lcom/google/android/gms/internal/cast/zzfo;
.super Lcom/google/android/gms/internal/cast/zzfg;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/cast/zzfq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzfq;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzfo;->zza:Lcom/google/android/gms/internal/cast/zzfq;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzfo;->zza:Lcom/google/android/gms/internal/cast/zzfq;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
