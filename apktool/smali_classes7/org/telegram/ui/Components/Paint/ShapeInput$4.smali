.class Lorg/telegram/ui/Components/Paint/ShapeInput$4;
.super Lorg/telegram/ui/Components/Paint/ShapeInput$Point;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/ShapeInput;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/ShapeInput;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$4;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;)V

    return-void
.end method


# virtual methods
.method set()V
    .locals 2

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$4;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->-$$Nest$fgetshape(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$4;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->-$$Nest$fgetshape(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$4;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->-$$Nest$fgetshape(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->set(FF)V

    return-void
.end method

.method protected update(FF)V
    .locals 4

    .line 327
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->update(FF)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$4;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->-$$Nest$fgetshape(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$4;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->-$$Nest$fgetshape(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$4;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->-$$Nest$fgetshape(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ShapeInput$4;->this$0:Lorg/telegram/ui/Components/Paint/ShapeInput;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ShapeInput;->-$$Nest$fgetshape(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    invoke-static {v2, v3, p1, p2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    iput p1, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    return-void
.end method
