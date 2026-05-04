.class final Lkotlinx/coroutines/ResumeOnCompletion;
.super Lkotlinx/coroutines/JobNode;
.source "SourceFile"


# instance fields
.field private final continuation:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1539
    invoke-direct {p0}, Lkotlinx/coroutines/JobNode;-><init>()V

    .line 1538
    iput-object p1, p0, Lkotlinx/coroutines/ResumeOnCompletion;->continuation:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method public getOnCancelling()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 1541
    iget-object p1, p0, Lkotlinx/coroutines/ResumeOnCompletion;->continuation:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
