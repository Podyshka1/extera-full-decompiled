.class Lorg/telegram/ui/Components/LinkActionView$1;
.super Lorg/telegram/ui/Components/ShareAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/LinkActionView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView$1;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 2

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_3

    .line 192
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-ne v0, p4, :cond_3

    .line 193
    invoke-virtual {p1, p3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 194
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->InvLinkToUser:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Lorg/telegram/messenger/MessagesController;->getPeerName(JZ)Ljava/lang/String;

    move-result-object p1

    new-array p2, p4, [Ljava/lang/Object;

    aput-object p1, p2, p3

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 195
    :cond_2
    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 200
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->InvLinkToChats:I

    const-string v0, "Chats"

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p2, p4, p3

    invoke-static {p1, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 202
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/LinkActionView$1;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    sget p3, Lorg/telegram/messenger/R$raw;->forward:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/LinkActionView;->showBulletin(ILjava/lang/CharSequence;)V

    return-void
.end method
