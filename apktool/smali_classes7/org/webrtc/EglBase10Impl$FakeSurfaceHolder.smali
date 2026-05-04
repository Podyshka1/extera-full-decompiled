.class Lorg/webrtc/EglBase10Impl$FakeSurfaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/EglBase10Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeSurfaceHolder"
.end annotation


# instance fields
.field private final surface:Landroid/view/Surface;

.field final synthetic this$0:Lorg/webrtc/EglBase10Impl;


# direct methods
.method constructor <init>(Lorg/webrtc/EglBase10Impl;Landroid/view/Surface;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lorg/webrtc/EglBase10Impl$FakeSurfaceHolder;->this$0:Lorg/webrtc/EglBase10Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p2, p0, Lorg/webrtc/EglBase10Impl$FakeSurfaceHolder;->surface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/webrtc/EglBase10Impl$FakeSurfaceHolder;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0

    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0

    return-void
.end method

.method public setSizeFromLayout()V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
