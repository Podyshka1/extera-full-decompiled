.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;
.super Lorg/telegram/ui/Stories/recorder/DualCameraView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method public static synthetic $r8$lambda$hKj6wjVSoicMSRtPAgGHYSiO71c(Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->lambda$onSavedDualCameraSuccess$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ZZ)V
    .locals 0

    .line 6907
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/DualCameraView;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private synthetic lambda$onSavedDualCameraSuccess$0()V
    .locals 4

    .line 6931
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 6934
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetsavedDualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6935
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->StoryCameraSavedDualBackHint:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->StoryCameraSavedDualFrontHint:I

    goto :goto_0

    .line 6936
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetsavedDualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetsavedDualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 6937
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetsavedDualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 6938
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetsavedDualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 6939
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "storysvddualhint"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public onEntityDraggedBottom(Z)V
    .locals 3

    .line 6915
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewHighlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->updateCaption(Ljava/lang/CharSequence;)V

    .line 6916
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewHighlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcontrolContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->show(ZZLandroid/view/View;)V

    return-void
.end method

.method public onEntityDraggedTop(Z)V
    .locals 3

    .line 6910
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewHighlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetactionBarContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->show(ZZLandroid/view/View;)V

    return-void
.end method

.method protected onSavedDualCameraSuccess()V
    .locals 3

    .line 6929
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "storysvddualhint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 6930
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;)V

    const-wide/16 v1, 0x154

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 6943
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetdualButton(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ToggleButton;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ToggleButton;->setValue(Z)V

    return-void
.end method

.method protected receivedAmplitude(D)V
    .locals 3

    .line 6948
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6949
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object v0

    const-wide v1, 0x409c200000000000L    # 1800.0

    div-double/2addr p1, v1

    double-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setAmplitude(FZ)V

    :cond_0
    return-void
.end method

.method public toggleDual()V
    .locals 3

    .line 6921
    invoke-super {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toggleDual()V

    .line 6922
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetdualButton(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ToggleButton;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ToggleButton;->setValue(Z)V

    .line 6924
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mgetCurrentFlashMode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$msetCameraFlashModeIcon(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/String;Z)V

    return-void
.end method
