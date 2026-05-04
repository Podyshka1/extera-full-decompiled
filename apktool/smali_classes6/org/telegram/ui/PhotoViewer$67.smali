.class Lorg/telegram/ui/PhotoViewer$67;
.super Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createMaskPaintView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$CropState;)V
    .locals 0

    .line 13104
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$67;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;-><init>(Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$CropState;)V

    return-void
.end method


# virtual methods
.method protected onDrawn()V
    .locals 2

    .line 13113
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$67;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mshowEditStickerMode(Lorg/telegram/ui/PhotoViewer;ZZ)V

    return-void
.end method

.method protected onRenderViewAlphaUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 13107
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->onRenderViewAlphaUpdate(Landroid/animation/ValueAnimator;)V

    .line 13108
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$67;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
