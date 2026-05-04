.class final Lcom/exteragram/messenger/api/ApiController$performSync$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/ApiController;->performSync(Landroid/content/SharedPreferences;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.exteragram.messenger.api.ApiController"
    f = "ApiController.kt"
    l = {
        0x4d,
        0x4f,
        0x5e,
        0x60,
        0x67,
        0x6a
    }
    m = "performSync"
    v = 0x1
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/exteragram/messenger/api/ApiController;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/api/ApiController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/exteragram/messenger/api/ApiController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/exteragram/messenger/api/ApiController$performSync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/exteragram/messenger/api/ApiController$performSync$1;->this$0:Lcom/exteragram/messenger/api/ApiController;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/exteragram/messenger/api/ApiController$performSync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/exteragram/messenger/api/ApiController$performSync$1;->label:I

    iget-object p1, p0, Lcom/exteragram/messenger/api/ApiController$performSync$1;->this$0:Lcom/exteragram/messenger/api/ApiController;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/exteragram/messenger/api/ApiController;->performSync(Landroid/content/SharedPreferences;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
