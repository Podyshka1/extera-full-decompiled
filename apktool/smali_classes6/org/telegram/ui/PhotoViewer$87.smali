.class Lorg/telegram/ui/PhotoViewer$87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->processOpenVideo(Ljava/lang/String;ZFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$compressQuality:I

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$EFNN0v0s0mtPMN6P3_0H6vi-Kb0(Lorg/telegram/ui/PhotoViewer$87;Ljava/lang/Runnable;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$87;->lambda$run$0(Ljava/lang/Runnable;[I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;I)V
    .locals 0

    .line 21837
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$87;->val$videoPath:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/PhotoViewer$87;->val$compressQuality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/Runnable;[I)V
    .locals 4

    .line 21865
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentLoadingVideoRunnable(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 21868
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentLoadingVideoRunnable(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)V

    .line 21869
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x5

    aget v0, p2, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputaudioFramesSize(Lorg/telegram/ui/PhotoViewer;J)V

    .line 21870
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x4

    aget v0, p2, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputvideoDuration(Lorg/telegram/ui/PhotoViewer;F)V

    .line 21871
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x7

    aget v0, p2, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputvideoFramerate(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21872
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetbitrate(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/16 v1, 0x8

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoDuration(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-long v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputvideoFramesSize(Lorg/telegram/ui/PhotoViewer;J)V

    .line 21874
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoConvertSupported(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 21875
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    aget p2, p2, v1

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputrotationValue(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21876
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateWidthHeightBitrateForCompression(Lorg/telegram/ui/PhotoViewer;)V

    .line 21878
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedCompression(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    if-le p1, p2, :cond_1

    .line 21879
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputselectedCompression(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21882
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoCompressButton;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    if-le p2, v1, :cond_2

    move v0, v1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetresultWidth(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetresultHeight(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Components/VideoCompressButton;->setState(ZZI)V

    .line 21883
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_3

    .line 21884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "compressionsCount = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressionsCount(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " w = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetoriginalWidth(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " h = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetoriginalHeight(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " r = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetrotationValue(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 21886
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetqualityChooseView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 21888
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcompressItem(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoCompressButton;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetresultWidth(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetresultHeight(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Components/VideoCompressButton;->setState(ZZI)V

    .line 21889
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcompressionsCount(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21892
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateVideoInfo(Lorg/telegram/ui/PhotoViewer;)V

    .line 21893
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->updateMuteButton()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 21840
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentLoadingVideoRunnable(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto/16 :goto_1

    .line 21843
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->val$videoPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->getVideoBitrate(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    .line 21844
    new-array v1, v1, [I

    .line 21845
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$87;->val$videoPath:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    const/16 v2, 0xa

    .line 21847
    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 21848
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    aget v6, v1, v3

    if-eqz v6, :cond_3

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    aget v2, v1, v2

    if-eqz v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-static {v5, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputvideoConvertSupported(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 21849
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    const/4 v0, 0x3

    aget v0, v1, v0

    :cond_4
    invoke-static {v2, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputbitrate(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-static {v2, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputoriginalBitrate(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21851
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoConvertSupported(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21852
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    aget v2, v1, v4

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputoriginalWidth(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputresultWidth(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21853
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x2

    aget v2, v1, v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputoriginalHeight(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputresultHeight(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21854
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetoriginalWidth(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetoriginalHeight(Lorg/telegram/ui/PhotoViewer;)I

    move-result v4

    invoke-static {v0, v2, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateCompressionsCount(Lorg/telegram/ui/PhotoViewer;II)V

    .line 21855
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$87;->val$compressQuality:I

    if-ne v2, v3, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mselectCompression(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    :cond_5
    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputselectedCompression(Lorg/telegram/ui/PhotoViewer;I)V

    .line 21856
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mprepareRealEncoderBitrate(Lorg/telegram/ui/PhotoViewer;)V

    .line 21857
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$87;->val$videoPath:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->isH264Video(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputisH264Video(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 21860
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$87;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentLoadingVideoRunnable(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_7

    :goto_1
    return-void

    .line 21864
    :cond_7
    new-instance v0, Lorg/telegram/ui/PhotoViewer$87$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p0, v1}, Lorg/telegram/ui/PhotoViewer$87$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$87;Ljava/lang/Runnable;[I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
