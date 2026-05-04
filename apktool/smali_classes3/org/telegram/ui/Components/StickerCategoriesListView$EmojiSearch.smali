.class Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiSearch;
.super Lorg/telegram/messenger/CacheFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerCategoriesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiSearch"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$S8qTPEYrUlxmW8suBr-CSOYi_S0(Lorg/telegram/messenger/Utilities$Callback4;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1002
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 1001
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiListNotModified;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1002
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v1, p2, p1}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 1003
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    if-eqz v0, :cond_1

    .line 1004
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    .line 1005
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->hash:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p2, p1, v0, v1}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 1007
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v1, p2, v0}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 994
    invoke-direct {p0}, Lorg/telegram/messenger/CacheFetcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/StickerCategoriesListView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiSearch;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getRemote(ILjava/lang/Object;JLorg/telegram/messenger/Utilities$Callback4;)V
    .locals 0

    .line 994
    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiSearch;->getRemote(ILjava/lang/String;JLorg/telegram/messenger/Utilities$Callback4;)V

    return-void
.end method

.method protected getRemote(ILjava/lang/String;JLorg/telegram/messenger/Utilities$Callback4;)V
    .locals 1

    .line 997
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCustomEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCustomEmoji;-><init>()V

    .line 998
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCustomEmoji;->emoticon:Ljava/lang/String;

    .line 999
    iput-wide p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCustomEmoji;->hash:J

    .line 1000
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiSearch$$ExternalSyntheticLambda0;

    invoke-direct {p2, p5}, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiSearch$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Utilities$Callback4;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method
