.class abstract Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ContentPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContentPreviewViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    .line 106
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 117
    instance-of v0, p2, Lorg/telegram/ui/Components/PaintingOverlay;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$monDraw(Lorg/telegram/ui/ContentPreviewViewer;Landroid/graphics/Canvas;)V

    return-void
.end method
