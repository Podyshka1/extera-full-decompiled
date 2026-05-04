.class Lorg/telegram/ui/PhotoViewer$68;
.super Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createPaintView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 13191
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object p1, p0

    invoke-direct/range {p1 .. p11}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 6

    .line 13230
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 13233
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetstartTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetstartTime(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    :cond_1
    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgressMs(J)V

    return-void
.end method

.method protected getPKeyboardHeight()I
    .locals 1

    .line 13208
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13209
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->getKeyboardHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onEmojiViewCloseByClick()V
    .locals 1

    .line 13216
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13217
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    :cond_0
    return-void
.end method

.method protected onOpenCloseStickersAlert(Z)V
    .locals 2

    .line 13194
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 13197
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmanuallyPaused(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 13198
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mcancelVideoPlayRunnable(Lorg/telegram/ui/PhotoViewer;)V

    if-eqz p1, :cond_1

    .line 13200
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    return-void

    .line 13202
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    return-void
.end method

.method protected onTextAdd()V
    .locals 1

    .line 13238
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    return-void
.end method

.method protected updateKeyboard()V
    .locals 1

    .line 13223
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13224
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$68;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_0
    return-void
.end method
