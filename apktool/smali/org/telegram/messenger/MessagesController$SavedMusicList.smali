.class public Lorg/telegram/messenger/MessagesController$SavedMusicList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedMusicList"
.end annotation


# instance fields
.field public final currentAccount:I

.field public final dialogId:J

.field public endReached:Z

.field public final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public loading:Z

.field public totalCount:I


# direct methods
.method public static synthetic $r8$lambda$gH-OEX94Q9gpkf8NKIkQjJbqtIs(Lorg/telegram/messenger/MessagesController$SavedMusicList;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->lambda$load$0(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nWSGnKYQNlmzk3fN-EJkDthmq94(Lorg/telegram/messenger/MessagesController$SavedMusicList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 23684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    .line 23685
    iput p1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    .line 23686
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->dialogId:J

    return-void
.end method

.method private synthetic lambda$load$0(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;)V
    .locals 7

    .line 23730
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_savedMusic;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 23731
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_savedMusic;

    .line 23732
    iget v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->totalCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 23733
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 23734
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 23736
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23739
    :cond_1
    :goto_0
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$SavedMusic;->count:I

    iput p1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->totalCount:I

    .line 23740
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23741
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->totalCount:I

    if-lt p1, p2, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->endReached:Z

    .line 23744
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->loading:Z

    .line 23745
    iget p1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->musicListLoaded:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 23722
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 23723
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_savedMusic;

    if-eqz v0, :cond_0

    .line 23724
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_savedMusic;

    .line 23725
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$SavedMusic;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 23726
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->toMessageObject(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23729
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$SavedMusicList$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$SavedMusicList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MessagesController$SavedMusicList;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getFirstDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 3

    .line 23751
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 23752
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    return-object v1

    .line 23754
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 4

    .line 23713
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->loading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 23715
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->loading:Z

    .line 23717
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_getSavedMusic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_getSavedMusic;-><init>()V

    .line 23718
    iget v1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_getSavedMusic;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 23719
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_getSavedMusic;->offset:I

    const/16 v1, 0x1e

    .line 23720
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_getSavedMusic;->limit:I

    .line 23721
    iget v1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$SavedMusicList$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$SavedMusicList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MessagesController$SavedMusicList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public move(II)V
    .locals 6

    .line 23766
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->getFirstDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 23767
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 23768
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 23769
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23770
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23771
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->getFirstDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eq p1, v0, :cond_0

    .line 23772
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->updateFirstMusic()V

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    move-object p2, p1

    goto :goto_0

    .line 23775
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 23777
    :goto_0
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-nez p2, :cond_2

    move-object p2, p1

    goto :goto_1

    .line 23778
    :cond_2
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    .line 23780
    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;-><init>()V

    if-nez v0, :cond_3

    return-void

    .line 23782
    :cond_3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 23783
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 23784
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 23785
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 23787
    new-array v0, v3, [B

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    :cond_4
    if-eqz p2, :cond_5

    .line 23790
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;->flags:I

    .line 23791
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;->after_id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 23792
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 23793
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 23794
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez p2, :cond_5

    .line 23796
    new-array p2, v3, [B

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 23799
    :cond_5
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;->unsave:Z

    .line 23800
    iget p2, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public remove(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 23758
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->getFirstDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 23759
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23760
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->getFirstDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eq p1, v0, :cond_0

    .line 23761
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->updateFirstMusic()V

    :cond_0
    return-void
.end method

.method public setup(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    .line 23690
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23691
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->load()V

    .line 23692
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->toMessageObject(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public toMessageObject(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/MessageObject;
    .locals 4

    .line 23698
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 23699
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 23700
    iget v1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 23701
    iget v1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 23702
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 23703
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 23704
    new-instance p1, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 23705
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    return-object p1
.end method

.method public updateFirstMusic()V
    .locals 6

    .line 23804
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->getFirstDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 23806
    iget v1, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 23810
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const v2, -0x200001

    and-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const/4 v0, 0x0

    .line 23811
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->saved_music:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    .line 23813
    :cond_1
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 23814
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->saved_music:Lorg/telegram/tgnet/TLRPC$Document;

    .line 23817
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 23818
    iget v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 23819
    iget v0, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->profileMusicUpdated:I

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
