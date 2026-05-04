.class Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()F
    .locals 3

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->-$$Nest$fgetrenderView(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentWeight()F

    move-result v0

    return v0

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Brush;->getDefaultWeight()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getWeight(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public set(F)V
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setWeight(Ljava/lang/String;F)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->-$$Nest$fgetrenderView(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    return-void
.end method
