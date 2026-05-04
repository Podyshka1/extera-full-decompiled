.class Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifSearchPreloader"
.end annotation


# instance fields
.field private final loadingKeys:Ljava/util/List;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public static synthetic $r8$lambda$OBwyNN8qtZHx4-jP1AjKi8GUF6E(Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->lambda$preload$1(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y9L9x7-O6if4oubYr-_y1QsNNrs(Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->lambda$preload$0(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 8617
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8619
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->loadingKeys:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method private synthetic lambda$preload$0(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 8636
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->processResponse(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method private synthetic lambda$preload$1(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 8636
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private preload(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 8630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gif_search_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz p3, :cond_0

    .line 8632
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifCache(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, p0

    goto :goto_0

    .line 8636
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v6, :cond_1

    .line 8639
    iget-object p1, v3, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->loadingKeys:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8640
    iget-object p1, v3, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v7, v2}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    return-void

    .line 8642
    :cond_1
    iget-object p1, v3, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    .line 8643
    iget-object p2, p1, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object p2

    .line 8644
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-nez p3, :cond_2

    :goto_0
    return-void

    .line 8647
    :cond_2
    iget-object p3, v3, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->loadingKeys:Ljava/util/List;

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8648
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    if-nez v4, :cond_3

    .line 8649
    const-string v0, ""

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_1
    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 8650
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 8651
    iput-object v5, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 8652
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 8653
    iget-object p1, v3, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p3, v2, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private processResponse(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    .line 8658
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->loadingKeys:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8660
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetlastSearchIsEmoji(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetlastSearchImageString(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8661
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$mprocessResponse(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    if-eqz v6, :cond_2

    .line 8663
    instance-of p1, v8, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz p1, :cond_1

    move-object p5, v8

    check-cast p5, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 8664
    invoke-direct {p0, v2, v3, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 8665
    :cond_2
    instance-of p1, v8, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifCache(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8666
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifCache(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object p1

    move-object p5, v8

    check-cast p5, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    invoke-interface {p1, v7, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public isLoading(Ljava/lang/String;)Z
    .locals 1

    .line 8622
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->loadingKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public preload(Ljava/lang/String;)V
    .locals 2

    .line 8626
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
