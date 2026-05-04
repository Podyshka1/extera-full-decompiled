.class public final synthetic Lcom/exteragram/messenger/utils/ui/UIUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/ui/UIUtil$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/ui/UIUtil$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/utils/ui/UIUtil;->$r8$lambda$RGvokeN_aAPjUBh4yeW4UrgcAX0(Lkotlin/jvm/functions/Function1;Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
