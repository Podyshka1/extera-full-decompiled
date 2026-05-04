.class Lorg/telegram/ui/LaunchActivity$4;
.super Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
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

.field private wasPortrait:Z


# direct methods
.method public static synthetic $r8$lambda$sDQh07nqwQvlnIRGIJJA_wTmPFE(Lorg/telegram/ui/LaunchActivity$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity$4;->lambda$onLayout$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onLayout$0()V
    .locals 2

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 522
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 503
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onLayout(ZIIII)V

    move-object p1, p0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    if-le p5, p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 506
    :goto_0
    iget-boolean p3, p1, Lorg/telegram/ui/LaunchActivity$4;->wasPortrait:Z

    if-eq p2, p3, :cond_1

    .line 507
    new-instance p3, Lorg/telegram/ui/LaunchActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/LaunchActivity$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity$4;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 513
    iput-boolean p2, p1, Lorg/telegram/ui/LaunchActivity$4;->wasPortrait:Z

    :cond_1
    return-void
.end method
