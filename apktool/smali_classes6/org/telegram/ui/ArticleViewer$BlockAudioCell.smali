.class Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockAudioCell"
.end annotation


# instance fields
.field private TAG:I

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

.field private currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private durationLayout:Landroid/text/StaticLayout;

.field private isFirst:Z

.field private lastTimeString:Ljava/lang/String;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private seekBar:Lorg/telegram/ui/Components/SeekBar;

.field private seekBarX:I

.field private seekBarY:I

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;


# direct methods
.method public static synthetic $r8$lambda$_XO76k-9kh4c9yFdVJCAuzu9x44(Lorg/telegram/ui/ArticleViewer$BlockAudioCell;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->lambda$new$0(F)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 7589
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 7590
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p2, 0x42680000    # 58.0f

    .line 7565
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    .line 7591
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 7593
    new-instance p2, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 p3, 0x41c00000    # 24.0f

    .line 7594
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 7595
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->TAG:I

    .line 7597
    new-instance p1, Lorg/telegram/ui/Components/SeekBar;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    .line 7599
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$BlockAudioCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    return-void
.end method

.method private didPressedButton(Z)V
    .locals 10

    .line 7860
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 7861
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetaudioMessages(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7862
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 7863
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 7864
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    if-ne v0, v2, :cond_1

    .line 7867
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7869
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 7870
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 7871
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 7874
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 7875
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 7876
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 7877
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 7878
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    if-ne v0, v3, :cond_3

    .line 7880
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 7881
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 7882
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 7883
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method private getIconForCurrentState()I
    .locals 2

    .line 7779
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$new$0(F)V
    .locals 2

    .line 7600
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 7603
    :cond_0
    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 7604
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    .line 7930
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 7931
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7933
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 7934
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7936
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    .line 7937
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 7625
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 7925
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->TAG:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 7895
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 7896
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 7889
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 7890
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 7729
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 7732
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderSelected:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIconSelected:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    .line 7733
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileProgress:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressColor(I)V

    .line 7734
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 7735
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7736
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7737
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 7738
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7740
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->durationLayout:Landroid/text/StaticLayout;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x42580000    # 54.0f

    if-eqz v0, :cond_1

    .line 7741
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7742
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7743
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 7744
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7746
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 7747
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7748
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v4, v2

    iput v4, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 7749
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 7750
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    int-to-float v2, v2

    iget v0, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7751
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 7752
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 7753
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 7755
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_3

    .line 7756
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7757
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    iput v4, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 7758
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iput v5, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    int-to-float v2, v4

    int-to-float v4, v5

    .line 7759
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7760
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 7761
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 7762
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v4

    .line 7764
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_4

    .line 7765
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7766
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    iput v4, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 7767
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditOffset:I

    add-int v7, v5, v6

    iput v7, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    int-to-float v2, v4

    add-int/2addr v5, v6

    int-to-float v4, v5

    .line 7768
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7769
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mdrawTextSelection(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 7770
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 7771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7773
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_6

    const/high16 v0, 0x41900000    # 18.0f

    .line 7774
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :cond_5
    sub-int/2addr v0, v3

    int-to-float v8, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetquoteLinePaint()Landroid/graphics/Paint;

    move-result-object v9

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 7901
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 23

    move-object/from16 v1, p0

    .line 7662
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    const/high16 v0, 0x42580000    # 54.0f

    .line 7663
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 7665
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    const/4 v10, 0x1

    if-eqz v0, :cond_a

    .line 7667
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/high16 v11, 0x41900000    # 18.0f

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0xe

    int-to-float v0, v0

    .line 7668
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    goto :goto_0

    .line 7670
    :cond_0
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    .line 7672
    :goto_0
    iget v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    sub-int v0, v9, v0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v4, v0, v2

    const/high16 v0, 0x42300000    # 44.0f

    .line 7673
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v0, 0x41800000    # 16.0f

    .line 7674
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 7675
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonY:I

    .line 7676
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v3, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    add-int v5, v3, v12

    add-int v6, v0, v12

    invoke-virtual {v2, v3, v0, v5, v6}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    .line 7678
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iget-object v7, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/high16 v13, 0x41000000    # 8.0f

    if-eqz v0, :cond_1

    .line 7680
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditOffset:I

    .line 7681
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v8, v0

    :cond_1
    move v14, v8

    .line 7683
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iget v5, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditOffset:I

    add-int/2addr v5, v2

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetisRtl(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v2

    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    :goto_2
    iget-object v8, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcreateLayoutForText(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    const/high16 v0, 0x40800000    # 4.0f

    .line 7685
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    .line 7688
    :cond_3
    iget-boolean v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->isFirst:Z

    if-nez v0, :cond_4

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-gtz v0, :cond_4

    .line 7689
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v14, v0

    .line 7692
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor(Z)Ljava/lang/String;

    move-result-object v0

    .line 7693
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessageObject;->getMusicTitle(Z)Ljava/lang/String;

    move-result-object v3

    .line 7694
    iget v4, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v12

    iput v4, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarX:I

    sub-int v4, v9, v4

    .line 7695
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 7696
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x41f00000    # 30.0f

    if-eqz v5, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 7715
    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 7716
    iget v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonY:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v12, v2

    div-int/2addr v12, v6

    add-int/2addr v0, v12

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    goto/16 :goto_5

    .line 7698
    :cond_6
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 7699
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v2

    aput-object v3, v8, v10

    const-string v3, "%s - %s"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 7700
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 7701
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 7703
    :cond_8
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7705
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 7706
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 7707
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x12

    invoke-virtual {v5, v3, v2, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7709
    :cond_9
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_audioTitlePaint:Landroid/text/TextPaint;

    int-to-float v2, v4

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v0, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 7710
    new-instance v0, Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 7711
    new-instance v15, Landroid/text/StaticLayout;

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetaudioTimePaint()Landroid/text/TextPaint;

    move-result-object v17

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v15, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    .line 7712
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 7713
    iget v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonY:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v12, v2

    div-int/2addr v12, v6

    add-int/2addr v0, v12

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    .line 7718
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/SeekBar;->setSize(II)V

    move v10, v14

    .line 7723
    :cond_a
    invoke-virtual {v1, v9, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 7724
    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updatePlayingMessageProgress()V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 7917
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 7918
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 7919
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    :cond_0
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 7906
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 7907
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 7630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 7631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 7633
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBar;->onTouch(IFF)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 7635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 7636
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7638
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    .line 7641
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 7642
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    int-to-float v5, v2

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_2

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonY:I

    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-lez v0, :cond_3

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    if-nez v0, :cond_6

    .line 7643
    :cond_3
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    .line 7644
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 7646
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 7647
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    if-ne v0, v3, :cond_6

    .line 7648
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    .line 7649
    invoke-virtual {p0, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 7650
    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->didPressedButton(Z)V

    .line 7651
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 7653
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 7654
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    .line 7656
    :cond_6
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    if-nez v0, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v10, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    iget v11, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    move-object v8, p0

    move-object v7, p1

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object v5, v8, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v8, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v9, v8, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v10, v8, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    iget p1, v8, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iget v0, v8, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditOffset:I

    add-int v11, p1, v0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-super {p0, v7}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v4

    :cond_8
    :goto_1
    return v3
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;ZZ)V
    .locals 6

    .line 7609
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .line 7611
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->-$$Nest$fgetaudioBlocks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_0

    .line 7613
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 7616
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->isFirst:Z

    .line 7618
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbar:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioCacheSeekbar:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v2

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarFill:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v3

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarSelected:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/SeekBar;->setColors(IIIII)V

    const/4 p1, 0x0

    .line 7620
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    .line 7621
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public updateButtonState(Z)V
    .locals 5

    .line 7823
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 7824
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 7825
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 7826
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 7827
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v4, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    return-void

    :cond_0
    if-eqz v1, :cond_3

    .line 7831
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 7832
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 7833
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7836
    :cond_1
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    goto :goto_1

    .line 7834
    :cond_2
    :goto_0
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 7838
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v4, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_3

    .line 7840
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 7841
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/4 v0, 0x2

    .line 7842
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 7843
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 7844
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v4, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x3

    .line 7846
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 7847
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7849
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_2

    .line 7851
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 7853
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 7856
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updatePlayingMessageProgress()V

    return-void
.end method

.method public updatePlayingMessageProgress()V
    .locals 9

    .line 7790
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 7794
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7795
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 7800
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7801
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 7803
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 7804
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 7805
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_3

    .line 7806
    iget-wide v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    double-to-int v0, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7811
    :cond_4
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v2

    .line 7812
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->lastTimeString:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 7813
    :cond_5
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->lastTimeString:Ljava/lang/String;

    .line 7814
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetaudioTimePaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7815
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetaudioTimePaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 7816
    new-instance v1, Landroid/text/StaticLayout;

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetaudioTimePaint()Landroid/text/TextPaint;

    move-result-object v3

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->durationLayout:Landroid/text/StaticLayout;

    .line 7818
    :cond_6
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$sfgetaudioTimePaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgetTextColor(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7819
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method
