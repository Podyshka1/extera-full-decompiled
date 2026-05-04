.class public final synthetic Lcom/google/android/gms/internal/play_billing/zzbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzcu;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzcu;

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/play_billing/zzch;->zza:[Ljava/lang/Object;

    iget p2, p2, Lcom/google/android/gms/internal/play_billing/zzch;->zzb:I

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzch;->zzb([Ljava/lang/Object;I)V

    return-object p1
.end method
