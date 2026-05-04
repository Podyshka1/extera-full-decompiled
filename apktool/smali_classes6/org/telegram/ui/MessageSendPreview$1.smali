.class Lorg/telegram/ui/MessageSendPreview$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetblurMatrix(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetblurBitmap(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetblurMatrix(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetblurBitmapShader(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/BitmapShader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetblurMatrix(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetblurBitmapPaint(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 159
    :goto_0
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {p1}, Lorg/telegram/ui/MessageSendPreview;->onBackPressed()V

    return v1

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 173
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 174
    iget-object p2, p1, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetlayoutDone(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget-boolean p2, p2, Lorg/telegram/ui/MessageSendPreview;->allowRelayout:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 175
    :cond_1
    :goto_0
    iget-object p2, p1, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$mlayout(Lorg/telegram/ui/MessageSendPreview;)V

    .line 176
    iget-object p2, p1, Lorg/telegram/ui/MessageSendPreview$1;->this$0:Lorg/telegram/ui/MessageSendPreview;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fputlayoutDone(Lorg/telegram/ui/MessageSendPreview;Z)V

    return-void
.end method
