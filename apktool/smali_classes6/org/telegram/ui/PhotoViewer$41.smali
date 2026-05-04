.class Lorg/telegram/ui/PhotoViewer$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->sendPressed(ZIIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$finalVideoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field final synthetic val$forceDocument:Z

.field final synthetic val$fullStickerPath:Ljava/lang/String;

.field final synthetic val$notify:Z

.field final synthetic val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field final synthetic val$scheduleDate:I

.field final synthetic val$scheduleRepeatPeriod:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIIZ)V
    .locals 0

    .line 8564
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$41;->val$fullStickerPath:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$41;->val$finalVideoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p4, p0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-boolean p5, p0, Lorg/telegram/ui/PhotoViewer$41;->val$notify:Z

    iput p6, p0, Lorg/telegram/ui/PhotoViewer$41;->val$scheduleDate:I

    iput p7, p0, Lorg/telegram/ui/PhotoViewer$41;->val$scheduleRepeatPeriod:I

    iput-boolean p8, p0, Lorg/telegram/ui/PhotoViewer$41;->val$forceDocument:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateThumb()V
    .locals 11

    .line 8589
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v1

    .line 8590
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8592
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8594
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 8596
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 8598
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x200

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 8599
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8600
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 8601
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 8602
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v5, v5, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 8603
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 8605
    :cond_1
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    if-eqz v2, :cond_2

    .line 8606
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 8607
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8608
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/PaintingOverlay;->setAlpha(F)V

    .line 8609
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 8610
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 8611
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8612
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 8613
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 8614
    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 8615
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 8617
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetCompressFormat(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    const/16 v9, 0x65

    const/16 v10, 0x65

    const/high16 v5, 0x44000000    # 512.0f

    const/high16 v6, 0x44000000    # 512.0f

    const/16 v7, 0x53

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 8618
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic addCaptionToGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$addCaptionToGif(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/Object;Ljava/lang/Object;ZII)V

    return-void
.end method

.method public addToFavoriteSelected(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 8623
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerEmptySent:Z

    .line 8624
    invoke-direct {v0}, Lorg/telegram/ui/PhotoViewer$41;->generateThumb()V

    .line 8625
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$41;->val$fullStickerPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$41;->val$finalVideoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getOriginalSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v15}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->uploadStickerFile(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public synthetic can()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$can(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic canAddCaption(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$canAddCaption(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    return p1
.end method

.method public synthetic canDeleteSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$canDeleteSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    return p1
.end method

.method public synthetic canEditSticker()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$canEditSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic canSchedule()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$canSchedule(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public canSendSticker()Z
    .locals 1

    .line 8567
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isEditingSticker()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic canSetAsStatus(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$canSetAsStatus(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic copyEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$copyEmoji(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public synthetic deleteSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$deleteSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public synthetic editSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$editSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public getDialogId()J
    .locals 2

    .line 8661
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentDialogId(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getQuery(Z)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$getQuery(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic gifAddedOrDeleted()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$gifAddedOrDeleted(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V

    return-void
.end method

.method public synthetic isInScheduleMode()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isInScheduleMode(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isPhotoEditor()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isPhotoEditor(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public isReplacedSticker()Z
    .locals 1

    .line 8651
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->replacedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSettingIntroSticker()Z
    .locals 1

    .line 8656
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStickerEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic needCopy(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needCopy(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    return p1
.end method

.method public synthetic needMenu()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needMenu(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic needOpen()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needOpen(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic needRemove()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needRemove(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic needRemoveFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needRemoveFromRecent(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    return p1
.end method

.method public synthetic needSend(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$needSend(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;I)Z

    move-result p1

    return p1
.end method

.method public newStickerPackSelected(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 16

    move-object/from16 v0, p0

    .line 8637
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerEmptySent:Z

    .line 8638
    invoke-direct {v0}, Lorg/telegram/ui/PhotoViewer$41;->generateThumb()V

    .line 8639
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$41;->val$fullStickerPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$41;->val$finalVideoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getOriginalSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v2 .. v15}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->uploadStickerFile(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public synthetic openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$openSet(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V

    return-void
.end method

.method public synthetic remove(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$remove(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    return-void
.end method

.method public synthetic removeFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$removeFromRecent(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public synthetic resetTouch()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$resetTouch(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V

    return-void
.end method

.method public synthetic sendEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$sendEmoji(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public synthetic sendGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$sendGif(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/Object;Ljava/lang/Object;ZII)V

    return-void
.end method

.method public sendSticker(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 8572
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 8574
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isEditingSticker()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 8575
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 8576
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerEmptySent:Z

    .line 8577
    invoke-direct {v0}, Lorg/telegram/ui/PhotoViewer$41;->generateThumb()V

    .line 8578
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$41;->val$fullStickerPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$41;->val$finalVideoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v8

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getOriginalSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v15}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->uploadStickerFile(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    .line 8580
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerEmptySent:Z

    .line 8581
    invoke-direct {v0}, Lorg/telegram/ui/PhotoViewer$41;->generateThumb()V

    .line 8582
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    .line 8583
    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$41;->val$fullStickerPath:Ljava/lang/String;

    iput-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    .line 8584
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v4

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentIndex(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$41;->val$finalVideoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v7, v0, Lorg/telegram/ui/PhotoViewer$41;->val$notify:Z

    iget v8, v0, Lorg/telegram/ui/PhotoViewer$41;->val$scheduleDate:I

    iget v9, v0, Lorg/telegram/ui/PhotoViewer$41;->val$scheduleRepeatPeriod:I

    iget-boolean v10, v0, Lorg/telegram/ui/PhotoViewer$41;->val$forceDocument:Z

    invoke-interface/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIIZ)V

    .line 8585
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->customStickerCreated:I

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$sendSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZII)V

    return-void
.end method

.method public synthetic setAsBadge(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$setAsBadge(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public synthetic setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$setAsEmojiStatus(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    return-void
.end method

.method public setIntroSticker(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 8644
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerEmptySent:Z

    .line 8645
    invoke-direct {v0}, Lorg/telegram/ui/PhotoViewer$41;->generateThumb()V

    .line 8646
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$41;->val$fullStickerPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$41;->val$finalVideoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getOriginalSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v15, v1, Lorg/telegram/ui/PhotoViewer;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v15}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->uploadStickerFile(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public stickerSetSelected(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 8630
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerEmptySent:Z

    .line 8631
    invoke-direct {v0}, Lorg/telegram/ui/PhotoViewer$41;->generateThumb()V

    .line 8632
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$41;->val$fullStickerPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$41;->val$finalVideoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v11, v1, Lorg/telegram/ui/PhotoViewer;->replacedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getOriginalSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$41;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v10, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v15}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->uploadStickerFile(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Ljava/lang/CharSequence;ZJLorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method
