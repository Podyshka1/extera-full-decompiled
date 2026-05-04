.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;
.super Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;


# direct methods
.method public static synthetic $r8$lambda$IegxmkTPAJk45V3qQFv8ZAnm-Gw(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;ZIZLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->lambda$sendButtonPressed$1(ZIZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y5RdRl6FssTZIzqrzzjS2b0Mavo(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->lambda$onClose$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 1

    .line 379
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout-IA;)V

    return-void
.end method

.method private synthetic lambda$onClose$0()V
    .locals 3

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$msetCurrentSpoilerVisible(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;IZ)V

    return-void
.end method

.method private synthetic lambda$sendButtonPressed$1(ZIZLjava/lang/Long;)V
    .locals 14

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setButtonPressed(Z)V

    .line 568
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move v5, p1

    move/from16 v6, p2

    move/from16 v11, p3

    invoke-interface/range {v2 .. v13}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    .line 569
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 570
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$sfgetcameraPhotos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 571
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 572
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 573
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 574
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelectWithAnimation:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 575
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canMoveCaptionAbove()Z
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDialogId()J
    .locals 2

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 588
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    return-wide v0

    .line 589
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;->getDialogId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 0

    if-eqz p5, :cond_0

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarWithBulletin:Lorg/telegram/messenger/Utilities$Callback0Return;

    if-eqz p1, :cond_0

    .line 406
    invoke-interface {p1}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz p1, :cond_0

    return-object p1

    .line 411
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetCellForIndex(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x2

    .line 413
    new-array p2, p2, [I

    .line 414
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 415
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1a

    const/4 p5, 0x0

    if-ge p3, p4, :cond_1

    .line 416
    aget p3, p2, p5

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p4, p4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result p4

    sub-int/2addr p3, p4

    aput p3, p2, p5

    .line 418
    :cond_1
    new-instance p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p3}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 419
    aget p4, p2, p5

    iput p4, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 p4, 0x1

    .line 420
    aget p2, p2, p4

    iput p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 421
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 422
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 423
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 424
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getScale()F

    move-result p2

    iput p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    .line 425
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getClipLayoutBottom()F

    move-result p2

    float-to-int p2, p2

    iput p2, p3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    .line 426
    invoke-virtual {p1, p5}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->showCheck(Z)V

    return-object p3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 0

    .line 461
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetCellForIndex(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isCaptionAbove()Z
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEditingMessage()Z
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEditingMessageResend()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needResendWhenEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveCaptionAbove(Z)V
    .locals 2

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(Z)V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onApplyCaption(Ljava/lang/CharSequence;)V
    .locals 8

    .line 490
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_4

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 491
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 494
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_0

    .line 495
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 496
    iget-object v1, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    .line 497
    iget-object v0, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .line 499
    :goto_0
    instance-of v2, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_1

    .line 500
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 501
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    .line 502
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    :cond_1
    move-object v3, v0

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 506
    instance-of p1, v1, Landroid/text/Spannable;

    if-nez p1, :cond_2

    .line 507
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v2, p1

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 509
    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    move-object v1, v2

    .line 512
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onClose()V
    .locals 3

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mresumeCameraPreview(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    .line 394
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onSelectedItemsCountChanged(I)V

    return-void
.end method

.method public onEditModeChanged(Z)V
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$monPhotoEditModeChanged(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    return-void
.end method

.method public onOpen()V
    .locals 3

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mpauseCameraPreview(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$msetCurrentSpoilerVisible(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;IZ)V

    return-void
.end method

.method public onPreClose()V
    .locals 3

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$msetCurrentSpoilerVisible(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;IZ)V

    return-void
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIIZ)V
    .locals 5

    .line 523
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, p5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sent:Z

    .line 524
    invoke-static {p5, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetPhotoEntryAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 526
    iput-object p2, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 528
    :cond_0
    sget-object p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 529
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 p5, -0x1

    invoke-static {p2, p1, p5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$maddToSelectedPhotos(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    .line 531
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCaption(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 534
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 535
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/PhotoViewer;->hasCaptionForAllMedia:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 536
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p1

    .line 537
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object p5

    .line 538
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, p2

    .line 539
    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 540
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 541
    instance-of v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_4

    .line 542
    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-nez v0, :cond_3

    .line 544
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer;->captionForAllMedia:Ljava/lang/CharSequence;

    new-array v4, v1, [Ljava/lang/CharSequence;

    aput-object v3, v4, p2

    .line 545
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v4, p2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    .line 546
    aget-object v3, v4, p2

    iput-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    .line 547
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCaption(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    return-void

    :cond_3
    const/4 v3, 0x0

    .line 551
    iput-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_6

    .line 558
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setButtonPressed(Z)V

    .line 560
    :cond_6
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 561
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iput-boolean p2, p1, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelect:Z

    .line 562
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iput-boolean p2, p1, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    .line 564
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p5, p5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result p5

    add-int/2addr p1, p5

    new-instance p5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p3, p4, p6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;ZIZ)V

    invoke-static {p2, v0, v1, p1, p5}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 6

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetCellForIndex(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 437
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetPhotoEntryAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 442
    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 443
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 444
    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 445
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 446
    :cond_2
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 447
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iget v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v5, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IIZ)V

    .line 448
    iget-boolean v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const-string v3, ":"

    if-eqz v1, :cond_3

    .line 449
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vthumb://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 451
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumb://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 454
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 4

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 480
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 481
    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_0

    .line 482
    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    const/4 v3, 0x1

    .line 483
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->showCheck(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetCellForIndex(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 472
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->showCheck(Z)V

    :cond_0
    return-void
.end method
