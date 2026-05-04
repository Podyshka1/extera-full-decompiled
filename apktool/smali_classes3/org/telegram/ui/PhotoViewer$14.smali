.class Lorg/telegram/ui/PhotoViewer$14;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$qDbzkSgttfE8l3gVb00VEcieGJk(Lorg/telegram/ui/PhotoViewer$14;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$14;->lambda$onLayout$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 4716
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onLayout$0()V
    .locals 4

    .line 4808
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcheckImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4809
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4810
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 4811
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$misStatusBarVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 4812
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_1

    .line 4813
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 4814
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcheckImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4817
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotosCounterView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4818
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$misStatusBarVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_2
    add-int/2addr v1, v3

    .line 4819
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, v1, :cond_3

    .line 4820
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 4821
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotosCounterView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 4898
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4899
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4900
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4901
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 4902
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4903
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4904
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v5, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4905
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4906
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4907
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4908
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 4730
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4731
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisCurrentVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 4732
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    .line 4734
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 4853
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 4854
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4855
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 4857
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$misCaptionOpen(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4858
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcloseCaptionEnter(Lorg/telegram/ui/PhotoViewer;Z)V

    return v0

    .line 4861
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4862
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ContentPreviewViewer;->closeWithMenu()V

    return v0

    .line 4865
    :cond_2
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return v1

    .line 4868
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 4739
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerControlVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisPlaying(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4748
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4749
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mscheduleActionBarHide(Lorg/telegram/ui/PhotoViewer;)V

    goto :goto_0

    .line 4743
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgethideActionBarRunnable(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4754
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 4890
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetwindowViewSkipRender(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4893
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 4761
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 4834
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4835
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 4836
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetleftImage(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 4837
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetrightImage(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 4838
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputattachedToWindow(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 4843
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4844
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 4845
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetleftImage(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 4846
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetrightImage(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 4847
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputattachedToWindow(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 4848
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputwasLayout(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 4873
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetstickerMakerBackgroundView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/StickerMakerBackgroundView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetstickerMakerBackgroundView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/StickerMakerBackgroundView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 4874
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetstickerMakerBackgroundView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/StickerMakerBackgroundView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4875
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetstickerMakerBackgroundView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/StickerMakerBackgroundView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 4877
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v8, v1

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 4878
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetstickerMakerBackgroundView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/StickerMakerBackgroundView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4879
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_1
    move-object/from16 v3, p1

    .line 4882
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4883
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetblackPaint(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4884
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v12, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v13, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetinsets(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    int-to-float v14, v1

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetblackPaint(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Paint;

    move-result-object v15

    const/4 v11, 0x0

    move-object v10, v3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4720
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 4794
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimatingImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimatingImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimatingImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 4795
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 4796
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, p3, p4, p5, v1}, Landroid/view/View;->layout(IIII)V

    .line 4797
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputwasLayout(Lorg/telegram/ui/PhotoViewer;Z)V

    if-eqz p1, :cond_1

    .line 4799
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetdontResetZoomOnFirstLayout(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4800
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mscale1(Lorg/telegram/ui/PhotoViewer;)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputscale(Lorg/telegram/ui/PhotoViewer;F)V

    .line 4801
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputtranslationX(Lorg/telegram/ui/PhotoViewer;F)V

    .line 4802
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputtranslationY(Lorg/telegram/ui/PhotoViewer;F)V

    .line 4803
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetscale(Lorg/telegram/ui/PhotoViewer;)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateMinMax(Lorg/telegram/ui/PhotoViewer;F)V

    .line 4806
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcheckImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4807
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcheckImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$14;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4826
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetdontResetZoomOnFirstLayout(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4827
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$msetScaleToFill(Lorg/telegram/ui/PhotoViewer;)V

    .line 4828
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputdontResetZoomOnFirstLayout(Lorg/telegram/ui/PhotoViewer;Z)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 4770
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4771
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 4772
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetinBubbleMode(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4773
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    if-eqz v0, :cond_1

    .line 4774
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p2, v0, :cond_0

    move p2, v0

    .line 4777
    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p2, v0

    .line 4780
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetinsets(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    .line 4782
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 4783
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 4784
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 4785
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimatingImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4786
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimatingImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 4787
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, v2, p2}, Landroid/view/View;->measure(II)V

    .line 4788
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4725
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$monTouchEvent(Lorg/telegram/ui/PhotoViewer;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
