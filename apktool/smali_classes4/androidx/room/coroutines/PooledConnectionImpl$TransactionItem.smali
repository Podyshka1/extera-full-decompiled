.class final Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/PooledConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransactionItem"
.end annotation


# instance fields
.field private final id:I

.field private shouldRollback:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;->id:I

    iput-boolean p2, p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;->shouldRollback:Z

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 527
    iget v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;->id:I

    return v0
.end method

.method public final getShouldRollback()Z
    .locals 1

    .line 527
    iget-boolean v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;->shouldRollback:Z

    return v0
.end method
