.class public final synthetic Lcom/exteragram/messenger/badges/source/ApiBadgeSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function2;

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

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/badges/source/ApiBadgeSource$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, p2}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->$r8$lambda$k56Kf1gLoZpo2cEpNa8MMgWDGfI(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)Lcom/exteragram/messenger/badges/source/BadgeInfo;

    move-result-object p1

    return-object p1
.end method
