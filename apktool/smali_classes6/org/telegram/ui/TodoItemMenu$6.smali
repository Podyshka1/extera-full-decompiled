.class Lorg/telegram/ui/TodoItemMenu$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TodoItemMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TodoItemMenu;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TodoItemMenu;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$6;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 268
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    .line 269
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$6;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetinsets(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v1}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Insets;)I

    move-result v4

    invoke-static {v1}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/Insets;)I

    move-result v5

    invoke-static {v1}, Landroidx/appcompat/widget/DrawableUtils$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/Insets;)I

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu$6;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v1}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetinsets(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 274
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu$6;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v1}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/TodoItemMenu;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$6;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetinsets(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/telegram/ui/TodoItemMenu$6;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v3}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetinsets(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lorg/telegram/ui/TodoItemMenu$6;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v4}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetinsets(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/telegram/ui/TodoItemMenu$6;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v5}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetinsets(Lorg/telegram/ui/TodoItemMenu;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 275
    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu$6;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v1}, Lorg/telegram/ui/TodoItemMenu;->-$$Nest$fgetwindowView(Lorg/telegram/ui/TodoItemMenu;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    if-lt p1, v0, :cond_1

    .line 277
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 279
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
