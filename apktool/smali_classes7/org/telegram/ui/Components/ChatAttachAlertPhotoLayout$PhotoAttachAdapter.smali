.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAttachAdapter"
.end annotation


# instance fields
.field private hasCamera:Z

.field private hasCameraSpaceRow:Z

.field private itemsCount:I

.field private final mContext:Landroid/content/Context;

.field private final needCamera:Z

.field private photosEndRow:I

.field private photosStartRow:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field private final viewsCache:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$5cjFdY0jEZSE-AkLp301I4dlGCk(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->lambda$onCreateViewHolder$1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pwlp2L-HtYjiEZocjcWDVwpUBfY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mrequestGalleryPermission(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$drHm9p02R3gQIwxLeGIlsXvGu1E(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->lambda$createHolder$0(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijbzYrMCQu073KHdAbK-tPR0fCE(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mopenCameraWithPermissionCheck(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgethasCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCamera:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethasCameraSpaceRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCameraSpaceRow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemsCount(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->itemsCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetneedCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPhoto(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getPhoto(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Z)V
    .locals 1

    .line 4302
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;-><init>()V

    .line 4297
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    .line 4303
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    .line 4304
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    return-void
.end method

.method private getPhoto(I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 2

    .line 4400
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCameraSpaceRow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 4403
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetgalleryAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 4406
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetPhotoEntryAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createHolder$0(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V
    .locals 11

    .line 4344
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetmediaEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 4347
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4348
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v1

    .line 4349
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mcheckSendMediaEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 4352
    :cond_1
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mmaxCount(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v4

    const/4 v5, 0x0

    if-le v2, v4, :cond_2

    .line 4353
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->quickReplyMessagesLimit:I

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "BusinessRepliesToastLimit"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 4356
    :cond_2
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v4, v2, 0x1

    const/4 v6, 0x2

    if-nez v2, :cond_3

    .line 4357
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    if-ltz v7, :cond_3

    sget-object v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v9, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    if-lt v7, v9, :cond_3

    .line 4358
    iget-boolean p1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz p1, :cond_b

    iget-object p1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_b

    .line 4359
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    .line 4360
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 4361
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-eqz p1, :cond_b

    .line 4362
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetalertOnlyOnce(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result p1

    if-eq p1, v6, :cond_b

    .line 4363
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Slowmode:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->SlowmodeSelectSendError:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 4364
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetalertOnlyOnce(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 4365
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fputalertOnlyOnce(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)V

    return-void

    :cond_3
    const/4 v7, -0x1

    if-nez v2, :cond_4

    .line 4372
    sget-object v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_0

    :cond_4
    move v8, v7

    .line 4373
    :goto_0
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v10, v9, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v10, v10, Lorg/telegram/ui/ChatActivity;

    if-eqz v10, :cond_5

    iget-boolean v9, v9, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v9, :cond_5

    .line 4374
    invoke-virtual {p2, v8, v4, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_1

    .line 4376
    :cond_5
    invoke-virtual {p2, v7, v4, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    .line 4378
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2, v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$maddToSelectedPhotos(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    .line 4380
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetcameraAttachAdapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p2

    if-ne p0, p2, :cond_8

    .line 4381
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetgalleryAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v4

    if-ne p2, v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 4384
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCameraSpaceRow:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result p2

    if-lt v0, p2, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 4387
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 4389
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetcameraAttachAdapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4391
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v2, :cond_9

    move v6, v3

    :cond_9
    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    .line 4392
    iget-boolean p2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    .line 4393
    iget-boolean p2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    .line 4394
    iget-wide v0, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    sget-object p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-le p2, v3, :cond_a

    goto :goto_3

    :cond_a
    move v3, v5

    :goto_3
    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setStarsPrice(JZ)V

    :cond_b
    :goto_4
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Ljava/lang/Long;)V
    .locals 4

    .line 4526
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;J)V

    .line 4527
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method


# virtual methods
.method public createCache()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 4309
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    .line 4314
    new-instance v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4315
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 4316
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    .line 4341
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 4343
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setDelegate(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;)V

    .line 4396
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 1

    .line 4694
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$sfgetcameraPhotos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->pinnedToTop:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getTotalItemsCount()I

    move-result p1

    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getItemCount()I
    .locals 4

    .line 4560
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetmediaEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 4563
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCamera:Z

    .line 4564
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCameraSpaceRow:Z

    .line 4566
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoGalleryPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v2

    if-ne p0, v2, :cond_1

    const/4 v0, 0x2

    return v0

    .line 4571
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetgalleryAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 4572
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4573
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCamera:Z

    move v0, v1

    .line 4577
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetshowAvatarConstructor(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 4580
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoGalleryPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v2

    if-ne p0, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 4583
    :cond_5
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->photosStartRow:I

    .line 4584
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoGalleryPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 4585
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$sfgetcameraPhotos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 4586
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4587
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 4590
    :cond_6
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->photosEndRow:I

    .line 4592
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCamera:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v2

    if-le v0, v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4593
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCameraSpaceRow:Z

    add-int/lit8 v0, v0, 0x1

    .line 4597
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v1

    if-ne p0, v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 4600
    :cond_8
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->itemsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 4605
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetmediaEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 4609
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoGalleryPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x7

    return p1

    :cond_1
    return v1

    .line 4614
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetgalleryAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v3

    if-ne v0, v3, :cond_5

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4615
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x8

    return p1

    :cond_4
    return v2

    .line 4621
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCameraSpaceRow:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x5

    return p1

    .line 4624
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCameraSpaceRow:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    if-le p1, v0, :cond_7

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_7
    move v0, p1

    .line 4627
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 4630
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetshowAvatarConstructor(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_a

    const/4 p1, 0x4

    return p1

    .line 4633
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->itemsCount:I

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_b

    return v1

    .line 4635
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoGalleryPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x3

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 6

    .line 4670
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getPhoto(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4672
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->photosStartRow:I

    if-gt p1, v2, :cond_1

    .line 4673
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$sfgetcameraPhotos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 4674
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$sfgetcameraPhotos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    goto :goto_0

    .line 4675
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 4676
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    goto :goto_0

    .line 4678
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4679
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 4683
    iget-wide v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    .line 4684
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-gt p1, v0, :cond_3

    const-wide/16 v4, 0x3e8

    .line 4685
    div-long/2addr v2, v4

    .line 4687
    :cond_3
    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4689
    :cond_4
    const-string p1, ""

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 7

    .line 4699
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 4701
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 4702
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getTotalItemsCount()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v5, v2

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 4703
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    int-to-float v2, v2

    div-float v4, v3, v2

    float-to-int v4, v4

    .line 4704
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v5

    mul-int/2addr v4, v5

    aput v4, p3, v1

    rem-float/2addr v3, v2

    float-to-int v2, v3

    .line 4705
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr v2, p1

    int-to-float p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr p1, v3

    float-to-int p1, p1

    add-int/2addr v2, p1

    const/4 p1, 0x1

    aput v2, p3, p1

    .line 4706
    aget p2, p3, v1

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getListTopPadding()I

    move-result p2

    if-ge v2, p2, :cond_0

    .line 4707
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getListTopPadding()I

    move-result p2

    add-int/2addr p2, v0

    aput p2, p3, p1

    :cond_0
    return-void
.end method

.method public getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F
    .locals 7

    .line 4651
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    .line 4652
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->itemsCount:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 4653
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 4656
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 4657
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4658
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-gez v5, :cond_1

    return v3

    .line 4662
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 4663
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sub-int/2addr p1, v6

    int-to-float p1, p1

    .line 4664
    div-int/2addr v5, v0

    mul-int/2addr v5, v4

    int-to-float v0, v5

    sub-float/2addr v0, v2

    int-to-float v1, v1

    int-to-float v2, v4

    mul-float/2addr v1, v2

    sub-float/2addr v1, p1

    div-float/2addr v0, v1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4665
    invoke-static {v0, p1, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 4643
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4644
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_3

    .line 4645
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetprogressView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoGalleryPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetmediaEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 4411
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 p2, 0x7

    if-eq v0, p2, :cond_0

    goto/16 :goto_5

    .line 4467
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/GalleryEmptyView;

    .line 4468
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetshowAvatarConstructor(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/GalleryEmptyView;->setUseAnEmojiVisible(Z)V

    return-void

    .line 4461
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;

    .line 4462
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemSize(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;->setItemSize(I)V

    .line 4463
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;->setType(I)V

    return-void

    .line 4456
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    .line 4457
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemSize(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->setItemSize(I)V

    return-void

    .line 4413
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->hasCameraSpaceRow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    if-le p2, v0, :cond_5

    add-int/lit8 p2, p2, -0x1

    .line 4416
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetgalleryAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v3

    if-ne v0, v3, :cond_7

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    add-int/lit8 p2, p2, -0x1

    .line 4419
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetshowAvatarConstructor(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 p2, p2, -0x1

    .line 4422
    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 4423
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_9

    .line 4424
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemSize(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setItemSize(I)V

    goto :goto_2

    .line 4426
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetcameraPhotoLayoutManager(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_1

    :cond_a
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setIsVertical(Z)V

    .line 4428
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v3, :cond_c

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-eqz v0, :cond_b

    goto :goto_3

    .line 4431
    :cond_b
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 4429
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4434
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetPhotoEntryAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_5
    return-void

    .line 4438
    :cond_d
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v3, v2, :cond_e

    move v3, v2

    goto :goto_6

    :cond_e
    move v3, v1

    :goto_6
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->needCamera:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetgalleryAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v5

    if-ne v4, v5, :cond_10

    sget-boolean v4, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v4, v2

    goto :goto_7

    :cond_10
    move v4, v1

    :goto_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne p2, v5, :cond_11

    goto :goto_8

    :cond_11
    move v2, v1

    :goto_8
    invoke-virtual {p1, v0, v3, v4, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZZ)V

    .line 4439
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_12

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v2, :cond_12

    .line 4440
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1, v2, v3, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_9

    .line 4442
    :cond_12
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v2, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    .line 4444
    :goto_9
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetvideoEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    if-nez v1, :cond_13

    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_13

    .line 4445
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a

    .line 4446
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetphotoEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v0, :cond_14

    .line 4447
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a

    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4449
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4451
    :goto_a
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4452
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    const/4 p1, 0x0

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    const/4 v1, 0x7

    const/4 v2, -0x1

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    .line 4504
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPermissionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 4533
    :cond_0
    new-instance p2, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4534
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4535
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4536
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setUseWrapContent(Z)V

    .line 4537
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v2, 0x41e00000    # 28.0f

    .line 4538
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, p1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 4539
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "c"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4540
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->camera:I

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, p1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4541
    const-string v0, "  "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->GalleryAccessAllowAccessCamera:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4542
    invoke-virtual {v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/4 v4, -0x2

    const/high16 v5, 0x42300000    # 44.0f

    const/16 v6, 0x51

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x0

    .line 4543
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4544
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 4519
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/GalleryEmptyView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->forUser:Z

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Components/GalleryEmptyView;-><init>(Landroid/content/Context;IZ)V

    .line 4520
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x43c80000    # 400.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p2, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x11

    .line 4521
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4522
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    .line 4523
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/GalleryEmptyView;->doOnCameraAccess(Ljava/lang/Runnable;)V

    .line 4524
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/GalleryEmptyView;->doOnGalleryAccessClick(Ljava/lang/Runnable;)V

    .line 4525
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/GalleryEmptyView;->doOnEmojiButton(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 4529
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 4516
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 4507
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$3;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->forUser:Z

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Landroid/content/Context;Z)V

    .line 4513
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 4495
    :cond_4
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$2;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 4492
    :cond_5
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 4484
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 4485
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 4486
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->viewsCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object p2

    .line 4488
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 4553
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz p1, :cond_0

    .line 4554
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetcameraViewItemDecoration(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->updateBitmap()V

    :cond_0
    return-void
.end method
