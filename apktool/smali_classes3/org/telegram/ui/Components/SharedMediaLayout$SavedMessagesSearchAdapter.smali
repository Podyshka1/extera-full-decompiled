.class Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedMessagesSearchAdapter"
.end annotation


# instance fields
.field public final cachedMessages:Ljava/util/ArrayList;

.field private count:I

.field private final currentAccount:I

.field public final dialogs:Ljava/util/ArrayList;

.field private endReached:Z

.field private lastQuery:Ljava/lang/String;

.field private lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field lastSearchId:I

.field public final loadedMessages:Ljava/util/ArrayList;

.field private loading:Z

.field private final mContext:Landroid/content/Context;

.field public final messages:Ljava/util/ArrayList;

.field private oldItemCounts:I

.field private reqId:I

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$20jNDy4m7EmvjeSy6-Xrse20V8s(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lambda$sendRequest$1(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$40zWPhOPfupFo1inBbiCN3AXv4Y(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->sendRequest()V

    return-void
.end method

.method public static synthetic $r8$lambda$CYmyU43KS4DISbXMF70I3UoswRw(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_search;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lambda$sendRequest$2(ILorg/telegram/tgnet/TLRPC$TL_messages_search;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pk1qVoHd6vkqEP_r7hXCaiU4wKs(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lambda$sendRequest$3(Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VMCl8G_KqqIcGjmP7pf4rdiag0U(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lambda$sendRequest$0(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcount(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetendReached(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastQuery(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastReaction(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 1

    .line 9230
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 9226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    .line 9227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    .line 9228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loadedMessages:Ljava/util/ArrayList;

    .line 9229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->cachedMessages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 9237
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    .line 9238
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->oldItemCounts:I

    .line 9239
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    const/4 v0, -0x1

    .line 9243
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    .line 9287
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 9231
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->mContext:Landroid/content/Context;

    .line 9232
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    const/4 p1, 0x1

    .line 9233
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private synthetic lambda$sendRequest$0(Lorg/telegram/tgnet/TLObject;I)V
    .locals 5

    .line 9311
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastSearchId:I

    if-eq p2, v0, :cond_0

    goto/16 :goto_3

    .line 9314
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 9315
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 9316
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 9317
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v2, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    move p2, v1

    .line 9318
    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 9319
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    .line 9320
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-direct {v2, v4, v0, v1, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 9321
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9322
    iput-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->isPrimaryGroupMessage:Z

    .line 9324
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 9325
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9327
    :cond_2
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    .line 9328
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz p2, :cond_4

    .line 9329
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loadedMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    if-lt p2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    goto :goto_2

    .line 9330
    :cond_4
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz p1, :cond_5

    .line 9331
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    .line 9333
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->updateMessages(Z)V

    .line 9334
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loading:Z

    const/4 p1, -0x1

    .line 9335
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$sendRequest$1(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 9310
    new-instance p3, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendRequest$2(ILorg/telegram/tgnet/TLRPC$TL_messages_search;)V
    .locals 2

    .line 9309
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 9310
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;I)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    return-void
.end method

.method private synthetic lambda$sendRequest$3(Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .line 9340
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 9341
    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p4, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 9342
    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p3

    invoke-virtual {p3, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->processDocuments(Ljava/util/ArrayList;)V

    const/4 p3, 0x0

    .line 9343
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 9344
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessageObject;

    .line 9345
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz p5, :cond_0

    .line 9346
    iput-boolean v1, p4, Lorg/telegram/messenger/MessageObject;->isPrimaryGroupMessage:Z

    .line 9348
    :cond_0
    iget-object p5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    invoke-virtual {p4, p5}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 9349
    iget-object p5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->cachedMessages:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 9351
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->updateMessages(Z)V

    const-wide/16 p2, 0x21c

    .line 9352
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private sendRequest()V
    .locals 12

    .line 9289
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-nez v0, :cond_0

    .line 9290
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loading:Z

    return-void

    .line 9293
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 9294
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 9295
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 9296
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 9297
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v2, :cond_1

    .line 9298
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    .line 9299
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->saved_reaction:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->toTLReaction()Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9301
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 9302
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 9303
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    :cond_2
    const/16 v2, 0xa

    .line 9305
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 9306
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    .line 9307
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastSearchId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastSearchId:I

    .line 9308
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_search;)V

    .line 9338
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_3

    .line 9339
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->toTLReaction()Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->cachedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;Ljava/lang/Runnable;)V

    const/4 v11, 0x0

    const-wide/16 v5, 0x0

    const/16 v8, 0x64

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/messenger/MessagesStorage;->searchSavedByTag(Lorg/telegram/tgnet/TLRPC$Reaction;JLjava/lang/String;IILorg/telegram/messenger/Utilities$Callback4;Z)V

    return-void

    .line 9355
    :cond_3
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private updateMessages(Z)V
    .locals 6

    .line 9360
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9361
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 9362
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 9363
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_0

    .line 9364
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9365
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9366
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 9369
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->cachedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 9370
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->cachedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    .line 9371
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 9372
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9373
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 9377
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->cachedMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_4
    move p1, v1

    .line 9378
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_7

    .line 9379
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, p1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_6

    .line 9380
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9381
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/messenger/R$string;->NoResultFoundForTag:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->toCharSequence(Landroid/graphics/Paint$FontMetricsInt;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "%s"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_3

    :cond_5
    sget v2, Lorg/telegram/messenger/R$string;->NoResultFoundFor:I

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9382
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9383
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 9388
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->oldItemCounts:I

    .line 9389
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 9445
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 6

    if-gez p1, :cond_0

    int-to-long v0, p1

    return-wide v0

    .line 9395
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge p1, v0, :cond_1

    .line 9396
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v4, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object p1, v2, v3

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 9398
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 9399
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 9400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    aput-object v4, v5, v3

    aput-object p1, v5, v2

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_2
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0x17

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public loadMore()V
    .locals 1

    .line 9281
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 9282
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loading:Z

    .line 9283
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->sendRequest()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    if-gez p2, :cond_0

    goto :goto_1

    .line 9423
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v0, :cond_1

    goto :goto_1

    .line 9424
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    add-int/lit8 p1, p2, 0x1

    .line 9425
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 9426
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 9427
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 9428
    iget-wide v2, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-object v4, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    return-void

    .line 9430
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p2, p1

    .line 9431
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 9432
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 9433
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v2

    iget-object p1, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 9408
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$1;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    .line 9414
    iget-object p1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    const/4 p1, 0x1

    .line 9415
    iput-boolean p1, v0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    .line 9416
    iget-object p1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9417
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public search(Ljava/lang/String;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 3

    .line 9246
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 9249
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    .line 9250
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 9251
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    const/4 v0, 0x1

    if-ltz p2, :cond_3

    .line 9252
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    invoke-virtual {p2, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 p2, -0x1

    .line 9253
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    .line 9256
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->cachedMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 9257
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loadedMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 9258
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p2, 0x0

    .line 9259
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    .line 9260
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    .line 9261
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loading:Z

    .line 9263
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9264
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-nez v1, :cond_4

    .line 9265
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/SavedMessagesController;->searchDialogs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9267
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    array-length p1, p1

    if-ge p2, p1, :cond_6

    .line 9268
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, p2

    iget p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/16 v1, 0xb

    if-ne p1, v1, :cond_5

    .line 9269
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9272
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-nez p1, :cond_7

    .line 9273
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9276
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 9277
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz p2, :cond_8

    const-wide/16 v0, 0x3c

    goto :goto_1

    :cond_8
    const-wide/16 v0, 0x258

    :goto_1
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
