.class Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideTextView"
.end annotation


# instance fields
.field arrowPaint:Landroid/graphics/Paint;

.field arrowPath:Landroid/graphics/Path;

.field bluePaint:Landroid/text/TextPaint;

.field cancelAlpha:F

.field cancelCharOffset:I

.field cancelLayout:Landroid/text/StaticLayout;

.field public cancelRect:Landroid/graphics/Rect;

.field cancelString:Ljava/lang/String;

.field cancelToProgress:F

.field cancelWidth:F

.field grayPaint:Landroid/text/TextPaint;

.field private lastSize:I

.field lastUpdateTime:J

.field moveForward:Z

.field private pressed:Z

.field selectableBackground:Landroid/graphics/drawable/Drawable;

.field slideProgress:F

.field slideToAlpha:F

.field slideToCancelString:Ljava/lang/String;

.field slideToCancelWidth:F

.field slideToLayout:Landroid/text/StaticLayout;

.field smallSize:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field xOffset:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 3

    .line 13760
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 13761
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13678
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 13691
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 13697
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    .line 13703
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    .line 13762
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-gt p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    .line 13763
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    .line 13764
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    const/high16 v2, 0x41700000    # 15.0f

    if-eqz v1, :cond_1

    const/high16 v1, 0x41500000    # 13.0f

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 13766
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    .line 13767
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 13769
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13771
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13772
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13773
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    if-eqz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const p2, 0x3fcccccd    # 1.6f

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13774
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 13775
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 13777
    sget p1, Lorg/telegram/messenger/R$string;->SlideToCancel2:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    .line 13779
    const-string p1, "Cancel"

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelString:Ljava/lang/String;

    .line 13781
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelCharOffset:I

    .line 13783
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->updateColors()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 13797
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 13798
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public getSlideToCancelWidth()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 13941
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelWidth:F

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 13808
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 13809
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 13810
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 14

    .line 13739
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13740
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetonFinishInitCameraRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 13741
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v5, :cond_0

    const v5, 0x7fffffff

    move v9, v5

    goto :goto_0

    :cond_0
    move v9, v3

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v4 .. v13}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIIJJ)V

    .line 13742
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputeffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto :goto_1

    .line 13744
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 13745
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const-wide/16 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    .line 13747
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputaudioToSend(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$TL_document;)V

    .line 13748
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputaudioToSendMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;)V

    .line 13749
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputvideoToSendMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 13750
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmillisecondsRecorded(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    .line 13751
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 13752
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v1

    :cond_2
    move-wide v6, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MediaDataController;->pushDraftVoiceMessage(JJLorg/telegram/messenger/MediaDataController$DraftVoice;)V

    .line 13753
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    .line 13754
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 13844
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_b

    .line 13847
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    .line 13849
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 13850
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToAlpha:F

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13851
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelAlpha:F

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13852
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 13854
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_1

    .line 13855
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    goto :goto_0

    .line 13857
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastUpdateTime:J

    sub-long/2addr v9, v11

    .line 13858
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastUpdateTime:J

    .line 13859
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    const v11, 0x3f4ccccd    # 0.8f

    cmpl-float v4, v4, v11

    if-lez v4, :cond_3

    .line 13860
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->moveForward:Z

    const/high16 v11, 0x437a0000    # 250.0f

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v13, 0x40c00000    # 6.0f

    if-eqz v4, :cond_2

    .line 13861
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    long-to-float v9, v9

    mul-float/2addr v12, v9

    add-float/2addr v4, v12

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 13862
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_3

    .line 13863
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 13864
    iput-boolean v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->moveForward:Z

    goto :goto_0

    .line 13867
    :cond_2
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    long-to-float v9, v9

    mul-float/2addr v12, v9

    sub-float/2addr v4, v12

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 13868
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v4, v4, v9

    if-gez v4, :cond_3

    .line 13869
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    .line 13870
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->moveForward:Z

    .line 13876
    :cond_3
    :goto_0
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelCharOffset:I

    if-ltz v4, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    .line 13878
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelWidth:F

    sub-float/2addr v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    float-to-int v4, v4

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v4, v10

    .line 13879
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelWidth:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v9

    float-to-int v10, v10

    if-eqz v5, :cond_5

    .line 13880
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    iget v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelCharOffset:I

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    goto :goto_2

    :cond_5
    move v11, v8

    :goto_2
    if-eqz v5, :cond_6

    int-to-float v12, v4

    add-float/2addr v12, v11

    int-to-float v13, v10

    sub-float/2addr v12, v13

    goto :goto_3

    :cond_6
    move v12, v8

    :goto_3
    int-to-float v4, v4

    .line 13882
    iget v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->xOffset:F

    iget v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    sub-float v15, v7, v14

    mul-float/2addr v13, v15

    iget v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    mul-float/2addr v13, v15

    add-float/2addr v4, v13

    mul-float/2addr v12, v14

    sub-float/2addr v4, v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v4, v12

    const/high16 v12, 0x41400000    # 12.0f

    if-eqz v5, :cond_7

    move v13, v8

    goto :goto_4

    .line 13884
    :cond_7
    iget v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 13886
    :goto_4
    iget v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    cmpl-float v14, v14, v7

    if-eqz v14, :cond_a

    .line 13887
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    neg-int v14, v14

    div-int/lit8 v14, v14, 0x4

    int-to-float v14, v14

    iget v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    sub-float v15, v7, v15

    mul-float/2addr v14, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTranslationX()F

    move-result v15

    const v16, 0x3e99999a    # 0.3f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v14, v14

    .line 13888
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 13889
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordTimerView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v15

    if-nez v15, :cond_8

    move v15, v8

    goto :goto_5

    :cond_8
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordTimerView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->getLeftProperty()F

    move-result v15

    :goto_5
    const/high16 v16, 0x40800000    # 4.0f

    move/from16 v17, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v15, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    move/from16 v16, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v15, v8, v3, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 13890
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    float-to-int v3, v4

    .line 13891
    iget-boolean v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    if-eqz v7, :cond_9

    const/high16 v7, 0x40e00000    # 7.0f

    :goto_6
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_7

    :cond_9
    const/high16 v7, 0x41200000    # 10.0f

    goto :goto_6

    :goto_7
    sub-int v7, v3, v7

    add-int/2addr v7, v14

    int-to-float v7, v7

    invoke-virtual {v1, v7, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13892
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13893
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 13895
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr v3, v14

    int-to-float v3, v3

    .line 13896
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/Layout;->getHeight()I

    move-result v14

    sub-int/2addr v7, v14

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v7, v13

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13897
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 13898
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 13899
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_a
    move/from16 v17, v3

    move/from16 v16, v7

    .line 13903
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    sub-int/2addr v3, v7

    int-to-float v3, v3

    div-float/2addr v3, v9

    if-nez v5, :cond_b

    .line 13905
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v13

    sub-float/2addr v3, v7

    :cond_b
    if-eqz v5, :cond_c

    add-float/2addr v4, v11

    goto :goto_9

    :cond_c
    int-to-float v4, v10

    .line 13912
    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    float-to-int v7, v4

    float-to-int v9, v3

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    float-to-int v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v3

    float-to-int v11, v11

    invoke-virtual {v5, v7, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 13913
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 13914
    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_d

    .line 13915
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    .line 13916
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v2

    .line 13917
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v2

    .line 13915
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13919
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13921
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 13922
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13923
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 13924
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    .line 13926
    :cond_d
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 13929
    :goto_a
    iget v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_e

    .line 13930
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_e
    :goto_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 13817
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 13818
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    .line 13819
    iget p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastSize:I

    if-eq p2, p1, :cond_1

    .line 13820
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastSize:I

    .line 13821
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelWidth:F

    .line 13822
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelWidth:F

    .line 13823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->lastUpdateTime:J

    .line 13825
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    .line 13826
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 13827
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->smallSize:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 13828
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    int-to-float p1, p1

    const v3, 0x4047ae14    # 3.12f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, p1, v4

    invoke-virtual {p2, v2, v4}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 13829
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13830
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 13832
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    int-to-float p1, p1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, p1, v4

    invoke-virtual {p2, v2, v4}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 13833
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13834
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->arrowPath:Landroid/graphics/Path;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13837
    :goto_0
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelString:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToCancelWidth:F

    float-to-int v4, p1

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToLayout:Landroid/text/StaticLayout;

    move-object v9, v5

    .line 13838
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelString:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelWidth:F

    float-to-int v8, p1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelLayout:Landroid/text/StaticLayout;

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 13710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 13711
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 13713
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 13716
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 13717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 13718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 13719
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->pressed:Z

    if-eqz p1, :cond_3

    .line 13721
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 13722
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 13724
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->pressed:Z

    return p1

    .line 13725
    :cond_4
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->pressed:Z

    if-eqz v4, :cond_7

    .line 13726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_5

    .line 13727
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    return v2

    .line 13730
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13731
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->onCancelButtonPressed()V

    :cond_6
    return v3

    :cond_7
    return v4

    :cond_8
    :goto_0
    return v2
.end method

.method public setCancelToProgress(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 13936
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelToProgress:F

    return-void
.end method

.method public setSlideX(F)V
    .locals 0

    .line 13945
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideProgress:F

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 13787
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordTime:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13788
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordVoiceCancel:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13789
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->grayPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->slideToAlpha:F

    .line 13790
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->bluePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->cancelAlpha:F

    const/high16 v0, 0x42700000    # 60.0f

    .line 13791
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    const/16 v2, 0x1a

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    .line 13792
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 13803
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
