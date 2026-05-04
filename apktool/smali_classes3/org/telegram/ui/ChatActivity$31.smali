.class Lorg/telegram/ui/ChatActivity$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 7349
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic addCaptionToGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$addCaptionToGif(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/Object;Ljava/lang/Object;ZII)V

    return-void
.end method

.method public synthetic addToFavoriteSelected(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$addToFavoriteSelected(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;)V

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

.method public canSchedule()Z
    .locals 1

    .line 7362
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->canScheduleMessage()Z

    move-result v0

    return v0
.end method

.method public synthetic canSendSticker()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$canSendSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

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

    .line 7386
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

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

.method public isInScheduleMode()Z
    .locals 2

    .line 7367
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic isPhotoEditor()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isPhotoEditor(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isReplacedSticker()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isReplacedSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isSettingIntroSticker()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isSettingIntroSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isStickerEditor()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$isStickerEditor(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)Z

    move-result v0

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

.method public needSend(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic newStickerPackSelected(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$newStickerPackSelected(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
    .locals 9

    if-eqz p1, :cond_1

    .line 7372
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7375
    :cond_0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 7376
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    iput-wide v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 7377
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    iput-wide v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 7378
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v7, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 7379
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 7380
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/StickersAlert;->setClearsInputField(Z)V

    .line 7381
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
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

.method public synthetic sendSticker(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$sendSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZII)V
    .locals 10

    .line 7352
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$31;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZII)V

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

.method public synthetic setIntroSticker(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$setIntroSticker(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic stickerSetSelected(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$stickerSetSelected(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/lang/String;)V

    return-void
.end method
