.class Lorg/telegram/ui/ChatEditActivity$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatEditActivity;


# direct methods
.method public static synthetic $r8$lambda$uwwtglORI-853ZBmkCiNPzsIRFw(Lorg/telegram/ui/ChatEditActivity$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity$1;->lambda$onDeletePhoto$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOulFUwcDMo2qHSkvzSXgkIs7vw(Lorg/telegram/ui/ChatEditActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity$1;->lambda$onDeletePhoto$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDeletePhoto$0()V
    .locals 9

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetavatarDrawable(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetsetAvatarCell(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object v0

    const-string v1, "ChatSetPhotoOrVideo"

    sget v2, Lorg/telegram/messenger/R$string;->ChatSetPhotoOrVideo:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fputhasUploadedPhoto(Lorg/telegram/ui/ChatEditActivity;Z)V

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_1

    .line 292
    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v3, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$raw;->camera_outline:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 294
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetsetAvatarCell(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetsetAvatarCell(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    return-void
.end method

.method private synthetic lambda$onDeletePhoto$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 281
    new-instance p1, Lorg/telegram/ui/ChatEditActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditActivity$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatEditActivity$1;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public canLoadMoreAvatars()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 4

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return-object p1

    .line 231
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    const-wide/16 p4, 0x0

    if-eqz p3, :cond_2

    .line 232
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ChatEditActivity;)J

    move-result-wide v0

    cmp-long p3, v0, p4

    if-nez p3, :cond_1

    move-object p3, p1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ChatEditActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_3

    .line 233
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p3, :cond_3

    goto :goto_1

    .line 237
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ChatEditActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 238
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, p1

    :goto_1
    if-eqz p3, :cond_5

    .line 243
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v0, v1, :cond_5

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne p3, p2, :cond_5

    const/4 p1, 0x2

    .line 244
    new-array p1, p1, [I

    .line 245
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 246
    new-instance p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    const/4 p3, 0x0

    .line 247
    aget p3, p1, p3

    iput p3, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 p3, 0x1

    .line 248
    aget p1, p1, p3

    iput p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 249
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ChatEditActivity;)J

    move-result-wide v0

    cmp-long p1, v0, p4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ChatEditActivity;)J

    move-result-wide p4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ChatEditActivity;)J

    move-result-wide p4

    neg-long p4, p4

    :goto_2
    iput-wide p4, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:J

    .line 252
    iget-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const-wide/16 p4, -0x1

    .line 253
    iput-wide p4, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:J

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius(Z)[I

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetavatarContainer(Lorg/telegram/ui/ChatEditActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    .line 256
    iput-boolean p3, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->canEdit:Z

    return-object p2

    :cond_5
    return-object p1
.end method

.method public getTotalImageCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDeletePhoto(I)Z
    .locals 4

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ChatEditActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 277
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;-><init>()V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetuserId(Lorg/telegram/ui/ChatEditActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 279
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->flags:I

    .line 280
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatEditActivity$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatEditActivity$1;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 p1, 0x0

    return p1
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetimageUpdater(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 2

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity$1;->this$0:Lorg/telegram/ui/ChatEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return-void
.end method
