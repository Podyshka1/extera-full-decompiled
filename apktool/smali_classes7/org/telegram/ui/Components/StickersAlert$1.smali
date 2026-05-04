.class Lorg/telegram/ui/Components/StickersAlert$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickersAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method public static synthetic $r8$lambda$b6LdHrmpIYabq4pGhBDZEgL53Mk(Lorg/telegram/ui/Components/StickersAlert$1;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert$1;->lambda$deleteSticker$0(Lorg/telegram/tgnet/TLObject;ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u6tDrbQ_KoWhHD1zASonD3rz5A0(Lorg/telegram/ui/Components/StickersAlert$1;ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/StickersAlert$1;->lambda$deleteSticker$1(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$deleteSticker$0(Lorg/telegram/tgnet/TLObject;ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 7

    .line 259
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_1

    .line 260
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->putStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    if-eqz p2, :cond_0

    .line 262
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iput-object v1, p1, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 p2, 0x0

    .line 265
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->loadStickerSet(Z)V

    .line 266
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$mupdateFields(Lorg/telegram/ui/Components/StickersAlert;)V

    .line 269
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$deleteSticker$1(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 258
    new-instance p4, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StickersAlert$1;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

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

.method public can()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic canAddCaption(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$canAddCaption(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    return p1
.end method

.method public canDeleteSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canEditSticker()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSchedule()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;->canSchedule()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

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

.method public deleteSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 5

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 253
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    .line 254
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$000(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 v2, 0x15e

    .line 255
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 256
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_stickers_removeStickerFromSet;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_stickers_removeStickerFromSet;-><init>()V

    .line 257
    const-string v3, ""

    invoke-static {p1, v3}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSetItem(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_stickers_removeStickerFromSet;->sticker:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickersAlert;->access$100(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v3, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickersAlert$1;ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public editSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/StickersAlert;->editSticker(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public getDialogId()J
    .locals 2

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

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
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

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

.method public needOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needRemove()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetimportingStickers(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

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

    .line 285
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic newStickerPackSelected(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate$-CC;->$default$newStickerPackSelected(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
    .locals 0

    return-void
.end method

.method public remove(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$mremoveSticker(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

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
    .locals 9

    .line 210
    iget-object p6, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p6}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    move-result-object p6

    if-nez p6, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object p6, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p6}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    move-result-object v0

    iget-object p6, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p6}, Lorg/telegram/ui/Components/StickersAlert;->-$$Nest$fgetclearsInputField(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v5

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v8}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZII)V

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

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
