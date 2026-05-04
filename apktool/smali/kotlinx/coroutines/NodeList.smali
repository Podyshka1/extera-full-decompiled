.class public final Lkotlinx/coroutines/NodeList;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1501
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Lkotlinx/coroutines/NodeList;
    .locals 0

    return-object p0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1520
    invoke-super {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
