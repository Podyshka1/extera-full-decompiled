.class public Lorg/telegram/ui/Components/DialogsBotsAdapter;
.super Lorg/telegram/ui/Components/UniversalAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;
    }
.end annotation


# instance fields
.field private allCount:I

.field private final context:Landroid/content/Context;

.field private final currentAccount:I

.field public expandedMyBots:Z

.field public expandedSearchBots:Z

.field private first:Z

.field private final folderId:I

.field private hasMore:Z

.field private final infoText:Ljava/lang/CharSequence;

.field public loadingBots:Z

.field public loadingMessages:Z

.field private nextRate:I

.field private final openBotCallback:Lorg/telegram/messenger/Utilities$Callback;

.field private final popular:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

.field public query:Ljava/lang/String;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchBotsId:I

.field public final searchGlobal:Ljava/util/ArrayList;

.field public final searchMessages:Ljava/util/ArrayList;

.field private searchMessagesRunnable:Ljava/lang/Runnable;

.field public final searchMine:Ljava/util/ArrayList;

.field private final showOnlyPopular:Z

.field private topPeersEnd:I

.field private topPeersStart:I


# direct methods
.method public static synthetic $r8$lambda$-lPnGXR2_L2Gc6pwDKZ337kYb4Q(Lorg/telegram/ui/Components/DialogsBotsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->lambda$searchMessages$7(Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5liQLtT_AB52T0iqZtIlt5zxAxY(Lorg/telegram/ui/Components/DialogsBotsAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$EOGIk9CaGT_CDhBN5lcgeWcIuVc([Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$MePrqTgtDaYmhQr36shQHor0bM0(Lorg/telegram/ui/Components/DialogsBotsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->lambda$searchMessages$5(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SFDqSlNIoEV5hSDxft8bR3JaIyQ(Lorg/telegram/ui/Components/DialogsBotsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->lambda$searchMessages$3(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TxK0-MjAmTjVmGj2kW0M4A8DjQY(Lorg/telegram/ui/Components/DialogsBotsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->lambda$searchMessages$6(Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VSW-W2Y7bHSvrhDfi3p5FVP5GH0(Lorg/telegram/ui/Components/DialogsBotsAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->toggleExpandedSearchBots(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_mdNbZ4ghTD50U_EeELTaMQ0iwA(Lorg/telegram/ui/Components/DialogsBotsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->lambda$searchMessages$4(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jy6uOahn78UGeg2Wh5Xfk-hGPZ4(Lorg/telegram/ui/Components/DialogsBotsAdapter;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->lambda$new$2(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$no9XnWaZFXlqjq7ar22izi8m4jg(Lorg/telegram/ui/Components/DialogsBotsAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->lambda$new$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$p5N9ECC0KYoy6gbWJkTGcOlhmQI(Lorg/telegram/ui/Components/DialogsBotsAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->toggleExpandedMyBots(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, p6

    .line 62
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMine:Ljava/util/ArrayList;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchGlobal:Ljava/util/ArrayList;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    .line 359
    new-instance p1, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;)V

    iput-object p1, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessagesRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 398
    iput-boolean p1, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->first:Z

    .line 592
    new-instance p2, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;)V

    iput-object p2, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->openBotCallback:Lorg/telegram/messenger/Utilities$Callback;

    .line 63
    new-instance p2, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;)V

    iput-object p2, v0, Lorg/telegram/ui/Components/UniversalAdapter;->fillItems:Lorg/telegram/messenger/Utilities$Callback2;

    .line 64
    iput-object v2, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->context:Landroid/content/Context;

    .line 65
    iput v3, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    .line 66
    iput p4, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->folderId:I

    .line 67
    iput-object v7, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 68
    iput-boolean p5, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->showOnlyPopular:Z

    .line 69
    new-instance p2, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    new-instance p3, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;)V

    invoke-direct {p2, v3, p3}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;-><init>(ILjava/lang/Runnable;)V

    iput-object p2, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->popular:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    .line 70
    sget p2, Lorg/telegram/messenger/R$string;->AppsTabInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, v7, v2}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V

    invoke-static {p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->infoText:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 102
    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MediaDataController;->loadHints(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x1

    .line 71
    new-array v1, v0, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 72
    sget v2, Lorg/telegram/messenger/R$string;->AppsTabInfoText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda7;-><init>([Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v2, p1, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 77
    const-string v3, "@([a-zA-Z0-9_-]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 78
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    new-instance v5, Lorg/telegram/ui/Components/DialogsBotsAdapter$1;

    invoke-direct {v5, p0, v1, p2, v4}, Lorg/telegram/ui/Components/DialogsBotsAdapter$1;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    const/16 v7, 0x21

    .line 80
    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p1, Lorg/telegram/messenger/R$string;->AppsTabInfoTitle:I

    .line 96
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->AppsTabInfoButton:I

    .line 98
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 1

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages(Z)V

    return-void
.end method

.method private synthetic lambda$searchMessages$3(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 256
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchBotsId:I

    if-ne p1, v0, :cond_4

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 257
    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingMessages:Z

    if-nez p3, :cond_1

    .line 259
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 261
    :cond_1
    instance-of p2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 262
    check-cast p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 263
    iget p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1, p3, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 264
    iget p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 265
    iget p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 267
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 268
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-direct {v3, v4, v2, p1, p3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 269
    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_2
    instance-of p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->hasMore:Z

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->allCount:I

    .line 275
    iget p1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->nextRate:I

    .line 277
    :cond_3
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$searchMessages$4(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 255
    new-instance v0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchMessages$5(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V
    .locals 2

    .line 254
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchBotsId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$searchMessages$6(Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    .line 287
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x0

    .line 289
    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingBots:Z

    .line 291
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 292
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    .line 293
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 294
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 295
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 298
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 300
    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMine:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_6

    .line 302
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->my_results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, p1

    :cond_2
    :goto_1
    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Peer;

    .line 303
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-nez v6, :cond_3

    goto :goto_1

    .line 304
    :cond_3
    iget v6, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 305
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v6, :cond_4

    goto :goto_1

    .line 306
    :cond_4
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 308
    :cond_5
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v6, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMine:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchGlobal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_b

    .line 340
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :cond_7
    :goto_2
    if-ge v3, v2, :cond_b

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Peer;

    .line 341
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-nez v5, :cond_8

    goto :goto_2

    .line 342
    :cond_8
    iget v5, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 343
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_9

    goto :goto_2

    .line 344
    :cond_9
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    .line 346
    :cond_a
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v5, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchGlobal:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 351
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_c

    .line 352
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 354
    :cond_c
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_d
    :goto_3
    return-void
.end method

.method private synthetic lambda$searchMessages$7(Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 286
    new-instance p3, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private searchMessages(Z)V
    .locals 6

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingMessages:Z

    .line 229
    iget v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchBotsId:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchBotsId:I

    .line 230
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    const/4 v3, 0x0

    .line 231
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->broadcasts_only:Z

    .line 232
    iget v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->folderId:I

    if-eqz v4, :cond_0

    .line 233
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/2addr v5, v0

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    .line 234
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    .line 236
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    const/16 v4, 0x19

    .line 237
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 238
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    if-eqz p1, :cond_2

    .line 239
    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 240
    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 241
    iget v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->nextRate:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 242
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 243
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v4, :cond_1

    .line 244
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    .line 246
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    .line 249
    :cond_2
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 250
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 251
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 253
    :goto_0
    new-instance v3, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v1, v2, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x320

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    :goto_1
    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    if-nez p1, :cond_4

    .line 282
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingBots:Z

    .line 283
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    const/16 v0, 0x1e

    .line 284
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    .line 286
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method

.method private toggleExpandedMyBots(Landroid/view/View;)V
    .locals 1

    .line 193
    iget-boolean p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->expandedMyBots:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->expandedMyBots:Z

    .line 194
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private toggleExpandedSearchBots(Landroid/view/View;)V
    .locals 1

    .line 198
    iget-boolean p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->expandedSearchBots:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->expandedSearchBots:Z

    .line 199
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method


# virtual methods
.method public checkBottom()V
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->hasMore:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingMessages:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->seesLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMore()V

    goto :goto_0

    .line 405
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->first:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->seesLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->popular:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->load()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->first:Z

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 9

    .line 107
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_5

    .line 110
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMine:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchGlobal:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->showOnlyPopular:Z

    if-nez v0, :cond_1

    .line 115
    sget v0, Lorg/telegram/messenger/R$string;->SearchApps:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->expandedSearchBots:Z

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/messenger/R$string;->ShowLess:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->ShowMore:I

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;)V

    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->SearchApps:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    iget-boolean v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->expandedSearchBots:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->showOnlyPopular:Z

    if-nez v4, :cond_2

    .line 121
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_3

    .line 123
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asProfileCell(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->openBotCallback:Lorg/telegram/messenger/Utilities$Callback;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/UItem;->withOpenButton(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_17

    iget-boolean p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->showOnlyPopular:Z

    if-nez p2, :cond_17

    .line 127
    sget p2, Lorg/telegram/messenger/R$string;->SearchMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 129
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asSearchMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 131
    :cond_4
    iget-boolean p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->hasMore:Z

    if-eqz p2, :cond_17

    .line 132
    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 136
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->webapps:Ljava/util/ArrayList;

    .line 137
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_8

    move v5, v2

    .line 139
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 140
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 141
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    .line 142
    iget v8, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 143
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_6

    goto :goto_5

    .line 144
    :cond_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 148
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->topPeersStart:I

    .line 149
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->showOnlyPopular:Z

    if-nez v0, :cond_d

    .line 150
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_a

    .line 151
    sget v0, Lorg/telegram/messenger/R$string;->SearchAppsMine:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->expandedMyBots:Z

    if-eqz v5, :cond_9

    sget v5, Lorg/telegram/messenger/R$string;->ShowLess:I

    goto :goto_6

    :cond_9
    sget v5, Lorg/telegram/messenger/R$string;->ShowMore:I

    :goto_6
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;)V

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 153
    :cond_a
    sget v0, Lorg/telegram/messenger/R$string;->SearchAppsMine:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move v0, v2

    .line 155
    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    if-lt v0, v1, :cond_b

    .line 156
    iget-boolean v5, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->expandedMyBots:Z

    if-nez v5, :cond_b

    goto :goto_a

    .line 157
    :cond_b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 158
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_9

    .line 159
    :cond_c
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {v5}, Lorg/telegram/ui/Components/UItem;->asProfileCell(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->openBotCallback:Lorg/telegram/messenger/Utilities$Callback;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/UItem;->withOpenButton(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 163
    :cond_d
    :goto_a
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->topPeersEnd:I

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->popular:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    iget-object v0, v0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x1d

    if-nez v0, :cond_13

    .line 166
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->showOnlyPopular:Z

    if-nez v0, :cond_e

    sget v0, Lorg/telegram/messenger/R$string;->SearchAppsPopular:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move v0, v2

    .line 167
    :goto_b
    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->popular:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    iget-object v4, v4, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->popular:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    iget-object v4, v4, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 169
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_c

    .line 170
    :cond_f
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asProfileCell(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->openBotCallback:Lorg/telegram/messenger/Utilities$Callback;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/UItem;->withOpenButton(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 174
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->popular:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    iget-boolean v2, p2, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    if-nez v2, :cond_11

    invoke-static {p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->-$$Nest$fgetendReached(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)Z

    move-result p2

    if-nez p2, :cond_12

    .line 175
    :cond_11
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    move v2, v0

    goto :goto_d

    .line 179
    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->popular:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    iget-boolean v0, p2, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    if-nez v0, :cond_14

    invoke-static {p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->-$$Nest$fgetendReached(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)Z

    move-result p2

    if-nez p2, :cond_16

    .line 180
    :cond_14
    iget-boolean p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->showOnlyPopular:Z

    if-nez p2, :cond_15

    const/16 p2, 0x1e

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_15
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 187
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->infoText:Ljava/lang/CharSequence;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 0

    .line 215
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTopPeerObject(I)Ljava/lang/Object;
    .locals 1

    .line 208
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->topPeersStart:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->topPeersEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 209
    :cond_1
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public openBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    .line 594
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->openApp(Lorg/telegram/tgnet/TLRPC$User;I)V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 4

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessagesRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 366
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 367
    iget p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchBotsId:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchBotsId:I

    .line 368
    iput-boolean v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingMessages:Z

    .line 369
    iput-boolean v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingBots:Z

    .line 370
    iput-boolean v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->hasMore:Z

    .line 371
    iput v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->nextRate:I

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_2

    .line 373
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    .line 378
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessagesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 381
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingMessages:Z

    .line 382
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingBots:Z

    .line 384
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_2

    .line 387
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public searchMore()V
    .locals 1

    .line 392
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->hasMore:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->loadingMessages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 395
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->searchMessages(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public seesLoading()Z
    .locals 3

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 414
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 415
    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 416
    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
