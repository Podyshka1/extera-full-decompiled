.class Lorg/telegram/ui/LaunchActivity$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 474
    invoke-static {p1, p0}, Lorg/telegram/messenger/AndroidUtilities;->fixedDispatchApplyWindowInsets(Landroid/view/WindowInsets;Landroid/view/ViewGroup;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 468
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$2;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$mdrawRippleAbove(Lorg/telegram/ui/LaunchActivity;Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method
