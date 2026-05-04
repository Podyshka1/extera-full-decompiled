.class public final Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1$invokeSuspend$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/db/DatabaseHelper$getBoostySubscribers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 121
    check-cast p2, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;

    .line 108
    invoke-virtual {p2}, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->getTotalAmountRub()Ljava/math/BigDecimal;

    move-result-object p2

    .line 121
    check-cast p1, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;

    .line 108
    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->getTotalAmountRub()Ljava/math/BigDecimal;

    move-result-object p1

    .line 121
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
