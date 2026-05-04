.class public Landroidx/camera/core/processing/Edge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field private mListener:Landroidx/core/util/Consumer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 42
    iget-object v0, p0, Landroidx/camera/core/processing/Edge;->mListener:Landroidx/core/util/Consumer;

    const-string v1, "Listener is not set."

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Landroidx/camera/core/processing/Edge;->mListener:Landroidx/core/util/Consumer;

    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public setListener(Landroidx/core/util/Consumer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Landroidx/camera/core/processing/Edge;->mListener:Landroidx/core/util/Consumer;

    return-void
.end method
