.class public Lorg/telegram/messenger/UserNameResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/UserNameResolver$CachedPeer;
    }
.end annotation


# static fields
.field private static final CACHE_TIME:J = 0x36ee80L


# instance fields
.field private final currentAccount:I

.field resolvedCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/UserNameResolver$CachedPeer;",
            ">;"
        }
    .end annotation
.end field

.field resolvingConsumers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/util/Consumer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5oikyTxXx5G4mfQqCXXE2gvuo-U(Lorg/telegram/messenger/UserNameResolver;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/UserNameResolver;->lambda$resolve$2(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AAxbrfaFM_Odb78sc700dSlzdtg(Lorg/telegram/messenger/UserNameResolver;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/UserNameResolver;->lambda$resolve$0(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ve-6_M5vATNUu-36dqpXLE6eIH4(Lorg/telegram/messenger/UserNameResolver;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/UserNameResolver;->lambda$resolve$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvedCache:Landroid/util/LruCache;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvingConsumers:Ljava/util/HashMap;

    .line 24
    iput p1, p0, Lorg/telegram/messenger/UserNameResolver;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$resolve$0(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvingConsumers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 78
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p3, "STARREF_EXPIRED"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/Consumer;

    const-wide p2, 0x7fffffffffffffffL

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/Consumer;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_2
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p2, "FLOOD_WAIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 89
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 91
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 96
    :cond_3
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 98
    iget p2, p0, Lorg/telegram/messenger/UserNameResolver;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v2, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 99
    iget p2, p0, Lorg/telegram/messenger/UserNameResolver;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 100
    iget p2, p0, Lorg/telegram/messenger/UserNameResolver;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {p2, v2, v3, v1, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 102
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p2

    .line 103
    iget-object v2, p0, Lorg/telegram/messenger/UserNameResolver;->resolvedCache:Landroid/util/LruCache;

    new-instance v3, Lorg/telegram/messenger/UserNameResolver$CachedPeer;

    invoke-direct {v3, p0, p2, p3}, Lorg/telegram/messenger/UserNameResolver$CachedPeer;-><init>(Lorg/telegram/messenger/UserNameResolver;J)V

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/Consumer;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$resolve$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 72
    new-instance v0, Lorg/telegram/messenger/UserNameResolver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/telegram/messenger/UserNameResolver$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/UserNameResolver;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    const-wide/16 p1, 0x2

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$resolve$2(Ljava/lang/String;I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvingConsumers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget p1, p0, Lorg/telegram/messenger/UserNameResolver;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Consumer;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Consumer;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/UserNameResolver;->resolve(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Consumer;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Consumer;)Ljava/lang/Runnable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Consumer;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvedCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/UserNameResolver$CachedPeer;

    if-eqz v0, :cond_1

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/telegram/messenger/UserNameResolver$CachedPeer;->time:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 39
    iget-wide v2, v0, Lorg/telegram/messenger/UserNameResolver$CachedPeer;->peerId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "resolve username from cache "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/telegram/messenger/UserNameResolver$CachedPeer;->peerId:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-object v1

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvedCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvingConsumers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 53
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p3, p0, Lorg/telegram/messenger/UserNameResolver;->resolvingConsumers:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isNumeric(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 60
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvePhone;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvePhone;-><init>()V

    .line 61
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvePhone;->phone:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_3
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 65
    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 67
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->flags:I

    .line 68
    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->referer:Ljava/lang/String;

    :cond_4
    move-object p2, p3

    .line 72
    :goto_0
    iget p3, p0, Lorg/telegram/messenger/UserNameResolver;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/messenger/UserNameResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/UserNameResolver$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/UserNameResolver;Ljava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    .line 108
    new-instance p3, Lorg/telegram/messenger/UserNameResolver$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/UserNameResolver$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/UserNameResolver;Ljava/lang/String;I)V

    return-object p3
.end method

.method public update(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 125
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvedCache:Landroid/util/LruCache;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 130
    iget-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvedCache:Landroid/util/LruCache;

    new-instance v1, Lorg/telegram/messenger/UserNameResolver$CachedPeer;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/messenger/UserNameResolver$CachedPeer;-><init>(Lorg/telegram/messenger/UserNameResolver;J)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public update(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 115
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvedCache:Landroid/util/LruCache;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/UserNameResolver;->resolvedCache:Landroid/util/LruCache;

    new-instance v1, Lorg/telegram/messenger/UserNameResolver$CachedPeer;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/messenger/UserNameResolver$CachedPeer;-><init>(Lorg/telegram/messenger/UserNameResolver;J)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
