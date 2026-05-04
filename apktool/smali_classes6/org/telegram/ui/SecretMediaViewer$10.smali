.class Lorg/telegram/ui/SecretMediaViewer$10;
.super Lorg/telegram/ui/PhotoViewer$CaptionScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretMediaViewer;->setCurrentCaption(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$10;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;-><init>(Landroid/content/Context;Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method protected onScrollEnd()V
    .locals 3

    .line 1011
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$10;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetisVideo(Lorg/telegram/ui/SecretMediaViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$10;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgethideActionBarRunnable(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected onScrollStart()V
    .locals 1

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$10;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgethideActionBarRunnable(Lorg/telegram/ui/SecretMediaViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onScrollUpdate()V
    .locals 4

    .line 1004
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$10;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetimageMoveAnimation(Lorg/telegram/ui/SecretMediaViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$10;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$10;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetisActionBarVisible(Lorg/telegram/ui/SecretMediaViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$mshowPlayButton(Lorg/telegram/ui/SecretMediaViewer;ZZ)V

    :cond_1
    return-void
.end method
