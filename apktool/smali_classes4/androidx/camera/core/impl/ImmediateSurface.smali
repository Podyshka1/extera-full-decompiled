.class public final Landroidx/camera/core/impl/ImmediateSurface;
.super Landroidx/camera/core/impl/DeferrableSurface;
.source "SourceFile"


# instance fields
.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Landroid/util/Size;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p2, p3}, Landroidx/camera/core/impl/DeferrableSurface;-><init>(Landroid/util/Size;I)V

    .line 37
    iput-object p1, p0, Landroidx/camera/core/impl/ImmediateSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public provideSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/camera/core/impl/ImmediateSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
