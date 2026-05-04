.class final synthetic Lcom/google/android/gms/internal/measurement/zzjq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic zza:Landroid/content/ContentResolver;

.field private final synthetic zzb:Landroid/net/Uri;

.field private final synthetic zzc:Ljava/lang/Runnable;


# direct methods
.method synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjq;->zza:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjq;->zzb:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjq;->zzc:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjq;->zza:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjq;->zzb:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjq;->zzc:Ljava/lang/Runnable;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzjr;->zzf(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzjr;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
