.class Lorg/telegram/ui/DialogsActivity$51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->openSetAvatar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$BjMoHw8zYEI-iXrYwzwKjzAJf4A(Lorg/telegram/ui/DialogsActivity$51;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$51;->openAvatarInProfile()V

    return-void
.end method

.method public static synthetic $r8$lambda$XvIKvrczRyrl2zRgwRAu_y7M6Uk(Lorg/telegram/ui/DialogsActivity$51;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DialogsActivity$51;->lambda$didUploadPhoto$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$aT6fOej_Lq23ZaOKaszjqTDwhig(Lorg/telegram/ui/DialogsActivity$51;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;ZLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/DialogsActivity$51;->lambda$didUploadPhoto$2(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;ZLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sJzD6lIGqyrfAedrikKMVekl0Xs(Lorg/telegram/ui/DialogsActivity$51;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DialogsActivity$51;->lambda$didUploadPhoto$1(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 13166
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_8

    .line 13253
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_1

    .line 13255
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_4

    .line 13259
    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_0

    .line 13261
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 13264
    :goto_0
    move-object/from16 v6, p2

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;

    .line 13265
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v8, 0x96

    .line 13266
    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    const/16 v9, 0x320

    .line 13267
    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 13268
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v2

    goto :goto_1

    :cond_2
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v9

    .line 13269
    :goto_1
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;-><init>()V

    iput-object v10, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 13270
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    if-eqz v8, :cond_3

    .line 13272
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_3
    if-eqz v7, :cond_4

    .line 13275
    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_4
    if-eqz v8, :cond_5

    .line 13278
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetavatar(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 13279
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    invoke-virtual {v10, v8, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v10

    .line 13280
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$11700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetavatar(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v11

    .line 13281
    invoke-virtual {v11, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 13282
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetavatar(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v11

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetavatar(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v12

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "@50_50"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 13283
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 13284
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v11

    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    invoke-virtual {v11, v10, v8, v12, v3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Z)V

    :cond_5
    if-eqz v9, :cond_6

    if-eqz v1, :cond_6

    .line 13288
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$11800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const-string v8, "mp4"

    invoke-virtual {v7, v9, v8, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v7

    .line 13289
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13290
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_7

    .line 13291
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetavatarBig(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 13292
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 13293
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$12000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetavatarBig(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 13294
    invoke-virtual {v7, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 13296
    :cond_7
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object v1

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->addPhotoAtStart(Lorg/telegram/tgnet/TLRPC$Photo;)V

    .line 13297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13298
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13299
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 13300
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 13302
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 13303
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 13307
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputavatar(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    .line 13308
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputavatarBig(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    .line 13309
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_ALL:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-virtual {v1, v2, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 13310
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 13311
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 13313
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$12100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const-wide/16 v5, 0x0

    const-string v2, "USERPIC_SETUP"

    invoke-virtual {v1, v5, v6, v2}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    .line 13314
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateDialogsHint(Lorg/telegram/ui/DialogsActivity;)V

    .line 13316
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 13317
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;

    .line 13318
    iget-object v2, v1, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p4, :cond_9

    sget v5, Lorg/telegram/messenger/R$string;->YourProfileVideoDone:I

    goto :goto_3

    :cond_9
    sget v5, Lorg/telegram/messenger/R$string;->YourProfilePhotoDone:I

    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 13319
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->setProgress(F)V

    .line 13320
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->getButton()Lorg/telegram/ui/Components/Bulletin$Button;

    move-result-object v1

    const v5, 0x3f19999a    # 0.6f

    .line 13321
    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 13322
    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    const/4 v5, 0x0

    .line 13323
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 13324
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13325
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x168

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 13326
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    .line 13327
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    .line 13328
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    :cond_a
    :goto_4
    return-void
.end method

.method private synthetic lambda$didUploadPhoto$1(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 13251
    new-instance v0, Lorg/telegram/ui/DialogsActivity$51$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v3, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity$51$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$51;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$2(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;ZLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 13332
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputavatar(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    .line 13333
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputavatarBig(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)V

    goto :goto_1

    .line 13233
    :cond_1
    :goto_0
    iget-object p8, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetavatar(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object p8

    if-nez p8, :cond_2

    return-void

    .line 13236
    :cond_2
    new-instance p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {p8}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    if-eqz p1, :cond_3

    .line 13238
    iput-object p1, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 13239
    iget p1, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_3
    if-eqz p2, :cond_4

    .line 13242
    iput-object p2, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 13243
    iget p1, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 13244
    iput-wide p4, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_start_ts:D

    or-int/lit8 p1, p1, 0x6

    .line 13245
    iput p1, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_4
    if-eqz p3, :cond_5

    .line 13248
    iput-object p3, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 13249
    iget p1, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p8, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 13251
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/DialogsActivity$51$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p6, p7}, Lorg/telegram/ui/DialogsActivity$51$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$51;Ljava/lang/String;Z)V

    invoke-virtual {p2, p8, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputavatarUploadingRequest(Lorg/telegram/ui/DialogsActivity;I)V

    .line 13335
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$11500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private openAvatarInProfile()V
    .locals 4

    .line 13190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13191
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13192
    const-string v1, "my_profile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13193
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method


# virtual methods
.method public synthetic canFinishFragment()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public didStartUpload(ZZ)V
    .locals 4

    .line 13169
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13170
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    .line 13171
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/Bulletin;)V

    .line 13173
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$11200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_1

    .line 13175
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetimageUpdater(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 13177
    :cond_1
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13179
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$11300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p1, v1, v3, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/DialogsActivity$51$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$51$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$51;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 13180
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->getButton()Lorg/telegram/ui/Components/Bulletin$Button;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13181
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->YourProfileVideoUploading:I

    goto :goto_1

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->YourProfilePhotoUploading:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 13182
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/Bulletin;)V

    .line 13183
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 13184
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    .line 13185
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->skipShowAnimation()Lorg/telegram/ui/Components/Bulletin;

    .line 13186
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public synthetic didUploadFailed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didUploadFailed(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    return-void
.end method

.method public didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 11

    .line 13231
    new-instance v0, Lorg/telegram/ui/DialogsActivity$51$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    move-object/from16 v9, p7

    move/from16 v8, p8

    move-object/from16 v4, p9

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/DialogsActivity$51$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$51;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;ZLorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCloseIntoObject()Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 5

    .line 13198
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13199
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;

    .line 13200
    new-instance v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    const/4 v2, 0x2

    .line 13201
    new-array v2, v2, [I

    .line 13202
    iget-object v3, v0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 13203
    aget v4, v2, v3

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 v4, 0x1

    .line 13204
    aget v2, v2, v4

    iput v2, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 13205
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iput-object v2, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 13206
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 13207
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 13208
    iput v3, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    .line 13209
    iget-object v2, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    .line 13210
    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getInitialSearchString()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getInitialSearchString(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUploadProgressChanged(F)V
    .locals 2

    .line 13223
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13224
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetuploadingAvatarBulletin(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr p1, v1

    .line 13225
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ProgressLayout;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public supportsBulletin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
