.class Lorg/telegram/ui/ThemePreviewActivity$20;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;

.field final synthetic val$num:I

.field final synthetic val$paddings:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;ILandroid/graphics/Rect;)V
    .locals 0

    .line 1862
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iput p3, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->val$num:I

    iput-object p4, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->val$paddings:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1865
    iget v0, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->val$num:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1866
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->-$$Nest$fgetsheetDrawable(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->-$$Nest$fgetcolorPicker(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/ColorPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->val$paddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemePreviewActivity;->-$$Nest$fgetcolorPicker(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/ColorPicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->val$paddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1868
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->-$$Nest$fgetsheetDrawable(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->val$paddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->val$paddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1870
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$20;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->-$$Nest$fgetsheetDrawable(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
