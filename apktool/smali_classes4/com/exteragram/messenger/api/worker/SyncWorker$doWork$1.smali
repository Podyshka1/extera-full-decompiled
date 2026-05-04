.class final Lcom/exteragram/messenger/api/worker/SyncWorker$doWork$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/worker/SyncWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.exteragram.messenger.api.worker.SyncWorker"
    f = "SyncWorker.kt"
    l = {
        0xe
    }
    m = "doWork"
    v = 0x1
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/exteragram/messenger/api/worker/SyncWorker;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/api/worker/SyncWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/api/worker/SyncWorker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/exteragram/messenger/api/worker/SyncWorker$doWork$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/exteragram/messenger/api/worker/SyncWorker$doWork$1;->this$0:Lcom/exteragram/messenger/api/worker/SyncWorker;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/exteragram/messenger/api/worker/SyncWorker$doWork$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/exteragram/messenger/api/worker/SyncWorker$doWork$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/exteragram/messenger/api/worker/SyncWorker$doWork$1;->label:I

    iget-object p1, p0, Lcom/exteragram/messenger/api/worker/SyncWorker$doWork$1;->this$0:Lcom/exteragram/messenger/api/worker/SyncWorker;

    invoke-virtual {p1, p0}, Lcom/exteragram/messenger/api/worker/SyncWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
