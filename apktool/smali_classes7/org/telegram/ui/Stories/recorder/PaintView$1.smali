.class Lorg/telegram/ui/Stories/recorder/PaintView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()F
    .locals 3

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetrenderView(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/PaintView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentWeight()F

    move-result v0

    return v0

    .line 214
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/PaintView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Brush;->getDefaultWeight()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getWeight(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public set(F)V
    .locals 3

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/PaintView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetrenderView(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setWeight(Ljava/lang/String;F)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetcolorSwatch(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$fgetcolorSwatch(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->-$$Nest$msetCurrentSwatch(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method
