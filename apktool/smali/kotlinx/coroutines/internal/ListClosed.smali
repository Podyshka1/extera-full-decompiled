.class final Lkotlinx/coroutines/internal/ListClosed;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "SourceFile"


# instance fields
.field public final forbiddenElementsBitmask:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/internal/ListClosed;->forbiddenElementsBitmask:I

    return-void
.end method
