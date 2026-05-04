.class final Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/db/BoostySubscriberDao$-CC;->replaceSubscribers$suspendImpl(Lcom/exteragram/messenger/api/db/BoostySubscriberDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.exteragram.messenger.api.db.BoostySubscriberDao"
    f = "BoostySubscriberDao.kt"
    l = {
        0x22,
        0x23
    }
    m = "replaceSubscribers$suspendImpl"
    v = 0x1
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/api/db/BoostySubscriberDao;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/api/db/BoostySubscriberDao;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->label:I

    iget-object p1, p0, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$replaceSubscribers$1;->this$0:Lcom/exteragram/messenger/api/db/BoostySubscriberDao;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/exteragram/messenger/api/db/BoostySubscriberDao$-CC;->replaceSubscribers$suspendImpl(Lcom/exteragram/messenger/api/db/BoostySubscriberDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
