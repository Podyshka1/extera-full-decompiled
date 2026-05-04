.class public Lorg/telegram/messenger/MessagesController$DialogFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFilter"
.end annotation


# static fields
.field private static dialogFilterPointer:I = 0xa


# instance fields
.field public alwaysShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public color:I

.field public dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsForward:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Dialog;",
            ">;"
        }
    .end annotation
.end field

.field public emoticon:Ljava/lang/String;

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public id:I

.field public invites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;",
            ">;"
        }
    .end annotation
.end field

.field public localId:I

.field public locked:Z

.field public name:Ljava/lang/String;

.field public neverShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public order:I

.field public volatile pendingUnreadCount:I

.field public pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

.field public title_noanimate:Z

.field public unreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    .line 1238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    .line 1239
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->dialogs:Ljava/util/ArrayList;

    .line 1241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->dialogsForward:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1245
    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->invites:Ljava/util/ArrayList;

    .line 1250
    sget v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->dialogFilterPointer:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->dialogFilterPointer:I

    iput v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->localId:I

    return-void
.end method


# virtual methods
.method public alwaysShow(ILorg/telegram/tgnet/TLRPC$Dialog;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1321
    :cond_0
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 1323
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1324
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1326
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 1330
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public includesDialog(Lorg/telegram/messenger/AccountInstance;J)Z
    .locals 1

    .line 1254
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 1255
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1259
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->includesDialog(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$Dialog;)Z

    move-result p1

    return p1
.end method

.method public includesDialog(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$Dialog;)Z
    .locals 8

    .line 1263
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1266
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1269
    :cond_1
    iget v0, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    return v1

    .line 1272
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 1273
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    .line 1276
    iget v3, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v4, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    and-int/2addr v3, v4

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_3

    iget-wide v6, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v6, v7, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_5

    .line 1277
    invoke-virtual {v0, p4}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-nez v3, :cond_5

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    if-nez p4, :cond_5

    :cond_4
    return v1

    :cond_5
    cmp-long p4, p2, v4

    if-lez p4, :cond_9

    .line 1281
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p4

    if-eqz p4, :cond_b

    .line 1283
    iget-boolean v0, p4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v0, :cond_8

    .line 1284
    iget-boolean v0, p4, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v0, :cond_7

    iget-boolean p4, p4, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez p4, :cond_7

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->isContact(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 1289
    :cond_6
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    return v2

    .line 1285
    :cond_7
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    return v2

    .line 1294
    :cond_8
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    return v2

    :cond_9
    if-gez p4, :cond_b

    neg-long p1, p2

    .line 1300
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1302
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_a

    .line 1303
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    return v2

    .line 1307
    :cond_a
    iget p1, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public isChatlist()Z
    .locals 2

    .line 1338
    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST:I

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 1334
    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMyChatlist()Z
    .locals 2

    .line 1342
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST_ADMIN:I

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
