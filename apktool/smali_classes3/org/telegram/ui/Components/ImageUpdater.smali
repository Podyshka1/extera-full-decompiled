.class public Lorg/telegram/ui/Components/ImageUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;,
        Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;
    }
.end annotation


# instance fields
.field private bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private canSelectVideo:Z

.field private canceled:Z

.field private chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private clearAfterUpdate:Z

.field private convertingVideo:Lorg/telegram/messenger/MessageObject;

.field private currentAccount:I

.field private currentImageProgress:F

.field public currentPicturePath:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

.field private finalPath:Ljava/lang/String;

.field private forUser:Z

.field private forceDarkTheme:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isVideo:Z

.field private openWithFrontfaceCamera:Z

.field public parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private picturePath:Ljava/io/File;

.field private searchAvailable:Z

.field public final setForType:I

.field private showingFromDialog:Z

.field private smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private smallPhotoBitmap:Landroid/graphics/Bitmap;

.field private supportEmojiMarkup:Z

.field private type:I

.field private uploadAfterSelect:Z

.field private uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private uploadingImage:Ljava/lang/String;

.field private uploadingVideo:Ljava/lang/String;

.field private useAttachMenu:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field private videoPath:Ljava/lang/String;

.field private videoTimestamp:D


# direct methods
.method public static synthetic $r8$lambda$QrysCIg-NRpKsI_bdOkEadxHZLc(Lorg/telegram/ui/Components/ImageUpdater;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater;->lambda$startCrop$1(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c9wvfC_B2k_MMTddpCxuQJAHeIE(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ImageUpdater;->lambda$openMenu$0(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetchatAttachAlert(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdidSelectPhotos(Lorg/telegram/ui/Components/ImageUpdater;ZLjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater;->didSelectPhotos(ZLjava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ZIZ)V
    .locals 2

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->picturePath:Ljava/io/File;

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    .line 101
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    .line 102
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    .line 240
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 241
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    .line 242
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->supportEmojiMarkup:Z

    .line 243
    iput p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->setForType:I

    return-void
.end method

.method private cleanup()V
    .locals 2

    const/4 v0, 0x0

    .line 921
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 922
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    .line 923
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    .line 924
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    .line 925
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->clearAfterUpdate:Z

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 927
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 928
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    :cond_0
    return-void
.end method

.method private createChatAttachView()V
    .locals 7

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 474
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_3

    .line 475
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 476
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    iget-object v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->supportsBulletin()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarPicker(IZLorg/telegram/messenger/Utilities$Callback0Return;)V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v3, Lorg/telegram/ui/Components/ImageUpdater$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ImageUpdater$2;-><init>(Lorg/telegram/ui/Components/ImageUpdater;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setImageUpdater(Lorg/telegram/ui/Components/ImageUpdater;)V

    .line 583
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getSelectedTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->SetPhotoFor:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "SetPhotoFor"

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    if-ne v0, v2, :cond_5

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getSelectedTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->SuggestPhotoFor:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "SuggestPhotoFor"

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private didSelectPhotos(ZLjava/util/ArrayList;)V
    .locals 16

    move-object/from16 v0, p0

    .line 591
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    move-object/from16 v2, p2

    .line 592
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    .line 595
    iget-boolean v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x44480000    # 800.0f

    if-nez v3, :cond_8

    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 607
    :cond_0
    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 608
    invoke-static {v3, v8, v9, v9, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    move-object v4, v8

    move-object v8, v1

    :goto_1
    move/from16 v1, p1

    goto/16 :goto_3

    .line 609
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_7

    .line 610
    iget-object v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v10, :cond_5

    .line 611
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 613
    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    .line 614
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    .line 615
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 616
    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    .line 617
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v4, v8

    :cond_2
    if-eqz v4, :cond_3

    .line 622
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, v9, v9, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 624
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 625
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 626
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 627
    iget-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "jpg"

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_4
    move-object v1, v8

    goto :goto_0

    .line 630
    :cond_5
    iget-object v1, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v10, "jpg"

    invoke-static {v3, v10}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    new-instance v3, Ljava/io/File;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 633
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    .line 634
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-eqz v1, :cond_6

    .line 635
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, v9, v9, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    .line 637
    :cond_6
    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 638
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 639
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 640
    iget-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v10, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v13, "jpg"

    const-wide/16 v14, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    :cond_7
    move/from16 v1, p1

    move-object v4, v8

    goto :goto_3

    .line 596
    :cond_8
    :goto_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 597
    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 598
    const-string v10, ""

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 599
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 600
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 601
    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 602
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v4, v5, v3, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 603
    iget-object v1, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Ljava/io/File;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_avatar.mp4"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 604
    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v1, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 605
    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v1, v4, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 606
    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    invoke-static {v1, v8, v9, v9, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_1

    .line 644
    :goto_3
    invoke-direct {v0, v1, v8, v4}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$openMenu$0(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 309
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openVideoCamera()V

    return-void

    .line 321
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 318
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openSearch()V

    return-void

    .line 315
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openGallery()V

    return-void

    .line 312
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    return-void
.end method

.method private synthetic lambda$startCrop$1(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 756
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    return-void

    .line 760
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 762
    const-string v2, "photoPath"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 764
    const-string v2, "photoUri"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 766
    :cond_2
    :goto_0
    new-instance v2, Lorg/telegram/ui/PhotoCropActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PhotoCropActivity;-><init>(Landroid/os/Bundle;)V

    .line 767
    invoke-virtual {v2, p0}, Lorg/telegram/ui/PhotoCropActivity;->setDelegate(Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;)V

    .line 768
    invoke-virtual {v0, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 770
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/high16 v1, 0x44480000    # 800.0f

    .line 771
    invoke-static {p1, p2, v1, v1, v0}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 772
    invoke-direct {p0, p2, p1, v0}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private openAttachMenu(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->openWithFrontfaceCamera:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setOpenWithFrontFaceCamera(Z)V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 463
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    if-eqz p1, :cond_1

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v1, v2, p1}, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;-><init>(Lorg/telegram/tgnet/TLObject;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    .line 466
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->forUser:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->forUser:Z

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_2
    :goto_0
    return-void
.end method

.method private processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 845
    iput-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 846
    iput-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 847
    iput-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    .line 848
    iput-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v4, v3

    goto :goto_0

    .line 849
    :cond_1
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    :goto_0
    iput-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    const/16 v10, 0x140

    const/16 v11, 0x140

    const/high16 v6, 0x44480000    # 800.0f

    const/high16 v7, 0x44480000    # 800.0f

    const/16 v8, 0x50

    const/4 v9, 0x0

    move-object/from16 v5, p2

    .line 850
    invoke-static/range {v5 .. v11}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/16 v10, 0x96

    const/16 v11, 0x96

    const/high16 v6, 0x43160000    # 150.0f

    const/high16 v7, 0x43160000    # 150.0f

    .line 851
    invoke-static/range {v5 .. v11}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 852
    const-string v5, "_"

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 854
    :try_start_0
    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v7, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v7, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhotoBitmap:Landroid/graphics/Bitmap;

    .line 855
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "@50_50"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 856
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9, v7, v6}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    :catchall_0
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 862
    iget-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a

    .line 863
    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 864
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x4

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 865
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    if-eqz v4, :cond_9

    if-eqz v2, :cond_7

    .line 866
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v4, :cond_7

    .line 867
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->supportEmojiMarkup:Z

    if-eqz v4, :cond_4

    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController;->uploadMarkupVideo:Z

    if-nez v4, :cond_4

    .line 868
    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v2, :cond_3

    .line 869
    invoke-interface {v2, v1, v6}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(ZZ)V

    .line 871
    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v7, :cond_a

    .line 873
    iget-object v13, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v14, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v15, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v16}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 874
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    iget-wide v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    iget-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    iget-object v8, v0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v1

    move-wide/from16 v20, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v26, v8

    invoke-interface/range {v17 .. v26}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 875
    invoke-direct {v0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    goto/16 :goto_2

    .line 879
    :cond_4
    iput-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    .line 880
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v8, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gez v5, :cond_5

    move-wide v8, v10

    .line 881
    :cond_5
    iget-wide v10, v4, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    sub-long/2addr v10, v8

    long-to-double v8, v10

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    iput-wide v8, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    .line 882
    iput-boolean v7, v4, Lorg/telegram/messenger/VideoEditedInfo;->shouldLimitFps:Z

    .line 883
    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 884
    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 885
    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 886
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v2, v6, v6, v7}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;ZZZ)Z

    .line 887
    iput-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 888
    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v2, :cond_6

    .line 889
    invoke-interface {v2, v1, v6}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(ZZ)V

    .line 891
    :cond_6
    iput-boolean v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    goto :goto_1

    .line 893
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v2, :cond_8

    .line 894
    invoke-interface {v2, v1, v7}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(ZZ)V

    .line 896
    :cond_8
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    .line 898
    :goto_1
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 899
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 900
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 901
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 902
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v2, v7, v6, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    .line 905
    :cond_9
    iget-object v8, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v8, :cond_a

    .line 906
    iget-object v14, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v15, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move/from16 v16, v1

    invoke-interface/range {v8 .. v17}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private startCrop(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 754
    new-instance v0, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 156
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 159
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadFailed()V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 227
    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->clearAfterUpdate:Z

    .line 229
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDestroy()V

    :cond_2
    return-void
.end method

.method public didFinishEdit(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 917
    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 936
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_12

    sget v6, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne v1, v6, :cond_0

    goto/16 :goto_3

    .line 963
    :cond_0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-ne v1, v2, :cond_2

    .line 964
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    .line 965
    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    .line 966
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v3, :cond_16

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 967
    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Long;

    .line 968
    aget-object v2, p3, v7

    check-cast v2, Ljava/lang/Long;

    .line 969
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v1, v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 970
    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    iput v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    invoke-interface {v2, v1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->onUploadProgressChanged(F)V

    return-void

    .line 972
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-eq v1, v2, :cond_f

    sget v8, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-eq v1, v8, :cond_f

    sget v8, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    if-eq v1, v8, :cond_f

    sget v8, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    if-ne v1, v8, :cond_3

    goto/16 :goto_1

    .line 992
    :cond_3
    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    if-ne v1, v2, :cond_5

    .line 993
    aget-object v1, p3, v3

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 994
    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v3, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v1, :cond_4

    goto/16 :goto_5

    .line 997
    :cond_4
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 998
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 999
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1000
    invoke-direct {v0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    return-void

    .line 1001
    :cond_5
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    if-ne v1, v2, :cond_d

    .line 1002
    aget-object v1, p3, v3

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1003
    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v1, :cond_6

    goto/16 :goto_5

    .line 1006
    :cond_6
    aget-object v1, p3, v5

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 1007
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v1, 0x3

    .line 1008
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1009
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-eqz v1, :cond_16

    const/4 v1, 0x5

    .line 1011
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v6

    .line 1012
    iget-wide v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    cmpl-double v3, v6, v1

    if-lez v3, :cond_7

    .line 1013
    iput-wide v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    .line 1016
    :cond_7
    iget-wide v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v6

    double-to-long v1, v1

    invoke-static {v9, v1, v2, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnailAtTime(Ljava/lang/String;J[IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 1018
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 1019
    const-string v2, "delete file "

    if-eqz v1, :cond_9

    .line 1020
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_8

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1023
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1025
    :cond_9
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v1, v3, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1027
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_a

    .line 1028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1030
    :cond_a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_b
    const/16 v15, 0x140

    const/16 v16, 0x140

    const/high16 v11, 0x44480000    # 800.0f

    const/high16 v12, 0x44480000    # 800.0f

    const/16 v13, 0x50

    const/4 v14, 0x0

    .line 1032
    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/16 v15, 0x96

    const/16 v16, 0x96

    const/high16 v11, 0x43160000    # 150.0f

    const/high16 v12, 0x43160000    # 150.0f

    .line 1033
    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_c

    .line 1036
    :try_start_0
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "@50_50"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6, v2, v5}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    :catchall_0
    :cond_c
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1046
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1047
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1048
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    .line 1049
    iput-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    goto/16 :goto_5

    .line 1051
    :cond_d
    sget v2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    if-ne v1, v2, :cond_16

    .line 1052
    aget-object v1, p3, v3

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1053
    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v1, :cond_e

    goto/16 :goto_5

    .line 1056
    :cond_e
    aget-object v2, p3, v5

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    .line 1057
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v1, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    long-to-int v1, v1

    int-to-long v7, v1

    const/high16 v9, 0x2000000

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    return-void

    .line 973
    :cond_f
    :goto_1
    aget-object v7, p3, v3

    check-cast v7, Ljava/lang/String;

    .line 974
    iput v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    .line 975
    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 976
    iget v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 977
    iget v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v6, v0, v7}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 978
    iget v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v6, v0, v7}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 979
    iget v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v6, v0, v8}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 981
    iput-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-eq v1, v2, :cond_11

    if-ne v1, v7, :cond_10

    goto :goto_2

    .line 986
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 987
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_16

    .line 988
    invoke-interface {v1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadFailed()V

    return-void

    .line 983
    :cond_11
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    const/high16 v2, 0x44480000    # 800.0f

    invoke-static {v1, v4, v2, v2, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 984
    invoke-direct {v0, v3, v1, v4}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 937
    :cond_12
    :goto_3
    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/String;

    .line 938
    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 939
    iput-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-ne v1, v2, :cond_14

    .line 941
    aget-object v3, p3, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    goto :goto_4

    .line 943
    :cond_13
    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 944
    iput-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-ne v1, v2, :cond_14

    .line 946
    aget-object v3, p3, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 952
    :cond_14
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_16

    .line 953
    iget v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 954
    iget v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 955
    iget v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-ne v1, v2, :cond_15

    .line 957
    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v5, :cond_15

    .line 958
    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v7, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-wide v8, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    iget-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iget-object v11, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v12, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v13, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    iget-object v14, v0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    invoke-interface/range {v5 .. v14}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 961
    :cond_15
    invoke-direct {v0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    :cond_16
    :goto_5
    return-void
.end method

.method public dismissCurrentDialog(Landroid/app/Dialog;)Z
    .locals 2

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    .line 374
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    .line 375
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    return v0

    :cond_0
    return v1
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentImageProgress()F
    .locals 1

    .line 1074
    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    return v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    return v0
.end method

.method public isUploadingImage()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 822
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$anim;->alpha_in:I

    sget v0, Lorg/telegram/messenger/R$anim;->alpha_out:I

    invoke-virtual {p1, p3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 823
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 824
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 825
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p0, p3, p2, p1, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V

    .line 826
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 827
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    return-void

    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_6

    .line 829
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 832
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ImageUpdater;->startCrop(Ljava/lang/String;Landroid/net/Uri;)V

    return-void

    :cond_3
    const/16 p3, 0xf

    if-ne p1, p3, :cond_6

    .line 834
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 835
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 836
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    return-void

    .line 816
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_5

    .line 818
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {v0, p1, p3, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 820
    :cond_5
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    :cond_6
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    .line 707
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_1

    const/16 p3, 0x11

    if-ne p1, p3, :cond_0

    .line 709
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkStorage()V

    return-void

    :cond_0
    const/4 p3, 0x4

    if-ne p1, p3, :cond_1

    .line 712
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkStorage()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onResume()V

    :cond_0
    return-void
.end method

.method public openCamera()V
    .locals 6

    .line 649
    const-string v0, "android.permission.CAMERA"

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 653
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 654
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    .line 657
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const/16 v3, 0x18

    .line 660
    const-string v4, "output"

    if-lt v1, v3, :cond_2

    .line 661
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".provider"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 662
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 663
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 665
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 667
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    .line 669
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 671
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public openGallery()V
    .locals 4

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    .line 721
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 722
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->isImagesAndVideoPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->isImagesPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 723
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    const/16 v1, 0x97

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/system/SystemUtils;->requestImagesAndVideoPermission(Landroid/app/Activity;I)V

    return-void

    .line 726
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/system/SystemUtils;->requestImagesPermission(Landroid/app/Activity;I)V

    return-void

    .line 731
    :cond_3
    new-instance v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR_VIDEO:I

    goto :goto_1

    :cond_4
    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR:I

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;-><init>(IZZLorg/telegram/ui/ChatActivity;)V

    .line 732
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setAllowSearchImages(Z)V

    .line 733
    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ImageUpdater$3;-><init>(Lorg/telegram/ui/Components/ImageUpdater;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V

    .line 750
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V
    .locals 9

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    .line 259
    iput p4, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    .line 260
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    if-eqz v1, :cond_1

    .line 261
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ImageUpdater;->openAttachMenu(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .line 264
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p4, v3, :cond_2

    .line 267
    sget p4, Lorg/telegram/messenger/R$string;->SetPhotoFor:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "SetPhotoFor"

    invoke-static {v4, p4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    :cond_2
    if-ne p4, v2, :cond_3

    .line 269
    sget p4, Lorg/telegram/messenger/R$string;->SuggestPhotoFor:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "SuggestPhotoFor"

    invoke-static {v4, p4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    .line 271
    :cond_3
    sget p4, Lorg/telegram/messenger/R$string;->ChoosePhoto:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 274
    :goto_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 278
    sget v6, Lorg/telegram/messenger/R$string;->ChooseTakePhoto:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_camera:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v6, :cond_4

    .line 283
    sget v6, Lorg/telegram/messenger/R$string;->ChooseRecordVideo:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_video:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    .line 285
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_4
    sget v6, Lorg/telegram/messenger/R$string;->ChooseFromGallery:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    if-eqz v6, :cond_5

    .line 293
    sget v6, Lorg/telegram/messenger/R$string;->ChooseFromSearch:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_search:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p1, :cond_6

    .line 298
    sget v2, Lorg/telegram/messenger/R$string;->DeletePhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    .line 300
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 304
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_7

    .line 305
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 308
    :cond_7
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v5, p2}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 328
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p2

    .line 329
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 330
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz p1, :cond_8

    .line 332
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    :cond_8
    :goto_2
    return-void
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .line 778
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V

    return-void
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V
    .locals 14

    move-object/from16 v0, p3

    .line 782
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 783
    new-instance v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MediaController$PhotoEntry;->setOrientation(Landroid/util/Pair;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p1

    move/from16 v0, p4

    .line 784
    iput-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move-object/from16 v0, p2

    .line 785
    iput-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 786
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 788
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    new-instance v5, Lorg/telegram/ui/Components/ImageUpdater$4;

    invoke-direct {v5, p0, v1}, Lorg/telegram/ui/Components/ImageUpdater$4;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 810
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelectWithAnimation:Z

    return-void
.end method

.method public openSearch()V
    .locals 10

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 386
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 387
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v8, 0x0

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;Z)V

    .line 388
    new-instance v0, Lorg/telegram/ui/Components/ImageUpdater$1;

    invoke-direct {v0, p0, v4, v5}, Lorg/telegram/ui/Components/ImageUpdater$1;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    const/4 v0, 0x1

    .line 441
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/PhotoPickerActivity;->setMaxSelectedPhotos(IZ)V

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->getInitialSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PhotoPickerActivity;->setInitialSearchString(Ljava/lang/String;)V

    .line 443
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openVideoCamera()V
    .locals 7

    .line 676
    const-string v0, "android.permission.CAMERA"

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 680
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    .line 684
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const/16 v3, 0x18

    .line 687
    const-string v4, "output"

    const/4 v5, 0x1

    if-lt v1, v3, :cond_2

    .line 688
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".provider"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 689
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 690
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 692
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 694
    :goto_0
    const-string v1, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-string v1, "android.intent.extras.LENS_FACING_FRONT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 697
    const-string v1, "android.intent.extra.durationLimit"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    .line 700
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 702
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public processEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 10

    .line 128
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 135
    :goto_0
    iget-boolean v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x44480000    # 800.0f

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    invoke-static {v0, v3, v5, v5, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    .line 136
    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 137
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 138
    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 139
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 140
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    const-wide/16 v6, 0x0

    .line 141
    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 142
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v1, v6, v0, v4, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 143
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v6, Ljava/io/File;

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_avatar.mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 145
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 146
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-static {p1, v3, v5, v5, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v3, v1

    .line 150
    :goto_2
    invoke-direct {p0, v4, p1, v3}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    return-void
.end method

.method public setForceDarkTheme(Z)V
    .locals 0

    .line 1062
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    return-void
.end method

.method public setOpenWithFrontfaceCamera(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->openWithFrontfaceCamera:Z

    return-void
.end method

.method public setSearchAvailable(Z)V
    .locals 0

    .line 337
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    return-void
.end method

.method public setSearchAvailable(ZZ)V
    .locals 0

    .line 341
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    .line 342
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    return-void
.end method

.method public setShowingFromDialog(Z)V
    .locals 0

    .line 1066
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    return-void
.end method

.method public setUploadAfterSelect(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public showAvatarConstructor(Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    return-void
.end method

.method public updateColors()V
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkColors()V

    :cond_0
    return-void
.end method
