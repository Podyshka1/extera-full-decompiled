.class Lorg/telegram/messenger/ChatsRemoteViewsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field private accountInstance:Lorg/telegram/messenger/AccountInstance;

.field private appWidgetId:I

.field private bitmapRect:Landroid/graphics/RectF;

.field private deleted:Z

.field private dialogs:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private dids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private messageObjects:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private roundPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->dids:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->dialogs:Landroidx/collection/LongSparseArray;

    .line 54
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->messageObjects:Landroidx/collection/LongSparseArray;

    .line 58
    iput-object p1, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 60
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->appWidgetId:I

    .line 61
    const-string p2, "shortcut_widget"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "account"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->appWidgetId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_0

    .line 64
    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    .line 66
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleted"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->appWidgetId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->deleted:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 78
    iget-boolean v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->deleted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->dids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 85
    iget-boolean v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->deleted:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$layout;->widget_deleted:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 87
    sget v2, Lorg/telegram/messenger/R$id;->widget_deleted_text:I

    sget v3, Lorg/telegram/messenger/R$string;->WidgetLoggedOff:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0

    .line 89
    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->dids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v3, "currentAccount"

    const/4 v4, 0x0

    if-lt v2, v0, :cond_1

    .line 90
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$layout;->widget_edititem:I

    invoke-direct {v0, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 91
    sget v2, Lorg/telegram/messenger/R$id;->widget_edititem_text:I

    sget v5, Lorg/telegram/messenger/R$string;->TapToEditWidget:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 92
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 93
    const-string v5, "appWidgetId"

    iget v6, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->appWidgetId:I

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v5, "appWidgetType"

    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    iget-object v4, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 96
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 97
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    sget v2, Lorg/telegram/messenger/R$id;->widget_edititem:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-object v0

    .line 101
    :cond_1
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->dids:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Long;

    .line 107
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    const-wide/16 v6, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    if-eqz v0, :cond_7

    .line 108
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 110
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 111
    sget v10, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 113
    sget v10, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 115
    sget v10, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 117
    :cond_4
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v11, :cond_5

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_5

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v12, v12, v6

    if-eqz v12, :cond_5

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v12, :cond_5

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    goto/16 :goto_2

    :cond_5
    move-object v12, v9

    move-object v11, v10

    move-object v10, v12

    goto/16 :goto_2

    :cond_6
    move-object v11, v8

    move-object v10, v9

    move-object v12, v10

    goto/16 :goto_2

    .line 124
    :cond_7
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 126
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 127
    iget-object v10, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v10

    invoke-static {v10, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v10

    .line 128
    iget-object v11, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v11}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 130
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v11, :cond_8

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_8

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v12, v12, v6

    if-eqz v12, :cond_8

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v12, :cond_8

    goto :goto_1

    :cond_8
    move-object v11, v9

    :goto_1
    move-object v12, v11

    move-object v11, v10

    move-object v10, v0

    move-object v0, v9

    goto :goto_2

    .line 135
    :cond_9
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 136
    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v11, :cond_a

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_a

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v12, v12, v6

    if-eqz v12, :cond_a

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v12, :cond_a

    goto :goto_1

    :cond_a
    move-object v12, v9

    move-object v11, v10

    move-object v10, v0

    move-object v0, v12

    goto :goto_2

    :cond_b
    move-object v10, v0

    move-object v11, v8

    move-object v0, v9

    move-object v12, v0

    .line 142
    :goto_2
    new-instance v13, Landroid/widget/RemoteViews;

    iget-object v14, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$layout;->shortcut_widget_item:I

    invoke-direct {v13, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 143
    sget v14, Lorg/telegram/messenger/R$id;->shortcut_widget_item_text:I

    invoke-virtual {v13, v14, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v11, 0x1

    if-eqz v12, :cond_c

    .line 148
    :try_start_0
    sget v14, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    invoke-virtual {v14, v12, v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v12

    .line 149
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v16, v11

    goto/16 :goto_8

    :cond_c
    move-object v12, v9

    :goto_3
    const/high16 v14, 0x42400000    # 48.0f

    .line 152
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    .line 153
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 154
    invoke-virtual {v15, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 155
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez v12, :cond_11

    if-eqz v0, :cond_e

    .line 159
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 160
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v0, 0xc

    .line 161
    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_4

    .line 162
    :cond_d
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 163
    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_4

    .line 166
    :cond_e
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 167
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v0

    invoke-virtual {v7, v0, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_f
    :goto_4
    int-to-float v0, v14

    if-eqz v10, :cond_10

    .line 169
    iget-boolean v12, v10, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v12, :cond_10

    move v12, v11

    goto :goto_5

    :cond_10
    move v12, v4

    :goto_5
    invoke-static {v0, v11, v12}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    .line 170
    invoke-virtual {v7, v4, v4, v14, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 171
    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v16, v11

    goto :goto_7

    .line 173
    :cond_11
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v12, v7, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 174
    iget-object v7, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->roundPaint:Landroid/graphics/Paint;

    if-nez v7, :cond_12

    .line 175
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->roundPaint:Landroid/graphics/Paint;

    .line 176
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->bitmapRect:Landroid/graphics/RectF;

    :cond_12
    int-to-float v7, v14

    .line 178
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v7, v14

    .line 179
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 180
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 181
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    if-eqz v10, :cond_13

    iget-boolean v14, v10, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v14, :cond_13

    move v14, v11

    goto :goto_6

    :cond_13
    move v14, v4

    :goto_6
    invoke-static {v7, v11, v14}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v7

    int-to-float v7, v7

    .line 182
    iget-object v14, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 183
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v12, v12

    move/from16 v16, v11

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v0, v11, v11, v14, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 184
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v7, v7, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 185
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 187
    :goto_7
    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    sget v0, Lorg/telegram/messenger/R$id;->shortcut_widget_item_avatar:I

    invoke-virtual {v13, v0, v15}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    .line 190
    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 193
    :goto_9
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->messageObjects:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 194
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->dialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v6, :cond_33

    .line 198
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v11

    .line 199
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 200
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v11, v0

    move-object v0, v9

    goto :goto_a

    .line 202
    :cond_14
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    move-object v11, v9

    .line 206
    :goto_a
    iget-object v12, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v14, Lorg/telegram/messenger/R$color;->widget_text:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 207
    iget-object v14, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v14, :cond_17

    .line 208
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-nez v9, :cond_16

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v0, :cond_15

    goto :goto_b

    .line 212
    :cond_15
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 214
    :cond_16
    :goto_b
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v9, Lorg/telegram/messenger/R$color;->widget_action_text:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    goto/16 :goto_18

    .line 217
    :cond_17
    const-string v17, "\ud83d\udcce "

    const-string v18, "\ud83d\uddbc "

    const-string v19, "\ud83c\udfa7 "

    const-string v20, "\ud83c\udfa4 "

    const-string v21, "\ud83d\udcf9 "

    if-eqz v10, :cond_27

    if-nez v0, :cond_27

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 218
    :cond_18
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 219
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    move-object v9, v0

    goto :goto_d

    :cond_19
    if-eqz v11, :cond_1a

    .line 221
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 223
    :cond_1a
    const-string v0, "DELETED"

    goto :goto_c

    .line 227
    :goto_d
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/16 v11, 0x20

    const/16 v10, 0xa

    const/16 v15, 0x96

    const-string v14, "%2$s: \u2068%1$s\u2069"

    if-eqz v0, :cond_20

    .line 228
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v15, :cond_1b

    .line 230
    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_1b
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_1c

    move-object/from16 v8, v21

    goto :goto_e

    .line 235
    :cond_1c
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v8

    if-eqz v8, :cond_1d

    move-object/from16 v8, v20

    goto :goto_e

    .line 237
    :cond_1d
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v8

    if-eqz v8, :cond_1e

    move-object/from16 v8, v19

    goto :goto_e

    .line 239
    :cond_1e
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v8

    if-eqz v8, :cond_1f

    move-object/from16 v8, v18

    goto :goto_e

    :cond_1f
    move-object/from16 v8, v17

    .line 244
    :goto_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v4

    aput-object v9, v8, v16

    invoke-static {v14, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_f
    move-object v8, v0

    goto/16 :goto_14

    .line 245
    :cond_20
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_24

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 246
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lorg/telegram/messenger/R$color;->widget_action_text:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 248
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v8, :cond_21

    .line 249
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 250
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    move/from16 v8, v16

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v0, v15, v4

    const-string v0, "\ud83d\udcca \u2068%s\u2069"

    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move/from16 v23, v4

    :goto_10
    const/4 v8, 0x2

    goto :goto_11

    :cond_21
    move/from16 v8, v16

    .line 251
    instance-of v15, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v15, :cond_22

    .line 252
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v0, v15, v4

    const-string v0, "\ud83c\udfae \u2068%s\u2069"

    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move/from16 v23, v4

    move/from16 v16, v8

    goto :goto_10

    .line 253
    :cond_22
    iget v0, v6, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v15, 0xe

    if-ne v0, v15, :cond_23

    .line 254
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v15

    move/from16 v23, v4

    move/from16 v16, v8

    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v23

    aput-object v15, v4, v16

    const-string v0, "\ud83c\udfa7 \u2068%s - %s\u2069"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_23
    move/from16 v23, v4

    move/from16 v16, v8

    const/4 v8, 0x2

    .line 256
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_11
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v23

    aput-object v9, v4, v16

    invoke-static {v14, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 261
    :try_start_2
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/16 v22, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v4, v0, v8, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    .line 263
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_12
    move-object v8, v4

    goto :goto_14

    :cond_24
    move/from16 v23, v4

    .line 265
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v15, :cond_25

    move/from16 v4, v23

    .line 268
    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_25
    move/from16 v4, v23

    .line 270
    :goto_13
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x2

    .line 271
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v4

    const/16 v16, 0x1

    aput-object v9, v8, v16

    invoke-static {v14, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_f

    .line 273
    :cond_26
    invoke-static {v8}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_f

    .line 276
    :goto_14
    :try_start_3
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x21

    invoke-virtual {v8, v0, v9, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_18

    :catch_1
    move-exception v0

    .line 278
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 282
    :cond_27
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v4, :cond_28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v4, :cond_28

    .line 283
    sget v0, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_18

    .line 284
    :cond_28
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_29

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-eqz v4, :cond_29

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v4, :cond_29

    .line 285
    sget v0, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_18

    .line 286
    :cond_29
    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2e

    .line 288
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object/from16 v0, v21

    goto :goto_15

    .line 290
    :cond_2a
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_2b

    move-object/from16 v0, v20

    goto :goto_15

    .line 292
    :cond_2b
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, v19

    goto :goto_15

    .line 294
    :cond_2c
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, v18

    goto :goto_15

    :cond_2d
    move-object/from16 v0, v17

    .line 299
    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_18

    .line 301
    :cond_2e
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v4, :cond_2f

    .line 302
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\ud83d\udcca "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    move-object v8, v0

    goto :goto_17

    .line 304
    :cond_2f
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_30

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83c\udfae "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 306
    :cond_30
    iget v0, v6, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v15, 0xe

    if-ne v0, v15, :cond_31

    .line 307
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v0, v8, v23

    const/16 v16, 0x1

    aput-object v4, v8, v16

    const-string v0, "\ud83c\udfa7 %s - %s"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 309
    :cond_31
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 310
    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-static {v0, v4, v9}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    goto :goto_16

    .line 312
    :goto_17
    iget-object v0, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_32

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 313
    iget-object v0, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$color;->widget_action_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 319
    :cond_32
    :goto_18
    sget v0, Lorg/telegram/messenger/R$id;->shortcut_widget_item_time:I

    iget-object v4, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v9, v4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 320
    sget v0, Lorg/telegram/messenger/R$id;->shortcut_widget_item_message:I

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 321
    sget v0, Lorg/telegram/messenger/R$id;->shortcut_widget_item_message:I

    invoke-virtual {v13, v0, v12}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_1a

    :cond_33
    if-eqz v7, :cond_34

    .line 323
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    if-eqz v0, :cond_34

    .line 324
    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_time:I

    int-to-long v9, v0

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_19

    .line 326
    :cond_34
    sget v0, Lorg/telegram/messenger/R$id;->shortcut_widget_item_time:I

    invoke-virtual {v13, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 328
    :goto_19
    sget v0, Lorg/telegram/messenger/R$id;->shortcut_widget_item_message:I

    invoke-virtual {v13, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1a
    const/16 v0, 0x8

    if-eqz v7, :cond_36

    .line 330
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v4, :cond_36

    .line 331
    sget v6, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v9, v8

    const-string v4, "%d"

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 332
    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v13, v4, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 333
    iget-object v4, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v9, 0x0

    invoke-virtual {v4, v6, v7, v9, v10}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v4

    const-string v6, "setBackgroundResource"

    const-string v7, "setEnabled"

    if-eqz v4, :cond_35

    .line 334
    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v13, v4, v7, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 335
    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    sget v7, Lorg/telegram/messenger/R$drawable;->widget_badge_muted_background:I

    invoke-virtual {v13, v4, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1b

    .line 337
    :cond_35
    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    const/4 v9, 0x1

    invoke-virtual {v13, v4, v7, v9}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 338
    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    sget v7, Lorg/telegram/messenger/R$drawable;->widget_badge_background:I

    invoke-virtual {v13, v4, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1b

    :cond_36
    const/4 v8, 0x0

    .line 341
    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item_badge:I

    invoke-virtual {v13, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 344
    :goto_1b
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 346
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 347
    const-string v6, "userId"

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v4, v6, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1c

    .line 349
    :cond_37
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    const-string v7, "chatId"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 351
    :goto_1c
    iget-object v5, v1, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 353
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 354
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 355
    sget v4, Lorg/telegram/messenger/R$id;->shortcut_widget_item:I

    invoke-virtual {v13, v4, v3}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 357
    sget v3, Lorg/telegram/messenger/R$id;->shortcut_widget_item_divider:I

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->getCount()I

    move-result v4

    if-ne v2, v4, :cond_38

    move v4, v0

    goto :goto_1d

    :cond_38
    move v4, v8

    :goto_1d
    invoke-virtual {v13, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v13
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .line 70
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 14

    .line 379
    iget-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->dids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->messageObjects:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 381
    iget-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 385
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 386
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 387
    iget-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->appWidgetId:I

    iget-object v4, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->dids:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->dialogs:Landroidx/collection/LongSparseArray;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->getWidgetDialogs(IILjava/util/ArrayList;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 388
    iget-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 389
    iget-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 390
    iget-object v0, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->messageObjects:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 391
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 392
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v8

    invoke-virtual {v6, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZ)V

    .line 393
    iget-object v2, p0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;->messageObjects:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
