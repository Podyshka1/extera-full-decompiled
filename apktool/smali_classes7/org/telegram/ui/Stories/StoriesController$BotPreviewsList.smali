.class public Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;
.super Lorg/telegram/ui/Stories/StoriesController$StoriesList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotPreviewsList"
.end annotation


# instance fields
.field private final fakeDays:Ljava/util/ArrayList;

.field public final lang_code:Ljava/lang/String;

.field public final lang_codes:Ljava/util/ArrayList;

.field private lastId:I

.field private loaded:Z

.field private loading:Z

.field private reqId:I


# direct methods
.method public static synthetic $r8$lambda$PRl21LZk4veM5Fgt_ZAwVEjjmAg(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Lorg/telegram/ui/Stories/StoriesController$BotPreview;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lambda$requestReference$2(Lorg/telegram/ui/Stories/StoriesController$BotPreview;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PiS81gAIwD88dPNC3eyRQ__bDso(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lambda$loadInternal$0(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mDs5_1SbFLxyKpSZQJh8_9apNA4(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lambda$loadInternal$1(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p5

    .line 2744
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;-><init>(IJIILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController-IA;)V

    .line 2768
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_codes:Ljava/util/ArrayList;

    .line 2769
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 2770
    iput p1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lastId:I

    .line 2745
    iput-object p4, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$loadInternal$0(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 10

    const/4 v0, 0x0

    .line 2795
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->reqId:I

    .line 2796
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loading:Z

    const/4 v1, 0x1

    .line 2797
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loaded:Z

    .line 2798
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->done:Z

    .line 2800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2801
    instance-of v2, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v2, :cond_0

    .line 2802
    check-cast p1, Lorg/telegram/tgnet/Vector;

    iget-object p1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    .line 2803
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 2804
    check-cast v4, Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    .line 2805
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2807
    :cond_0
    instance-of v2, p1, Lorg/telegram/tgnet/tl/TL_bots$previewInfo;

    if-eqz v2, :cond_7

    .line 2808
    check-cast p1, Lorg/telegram/tgnet/tl/TL_bots$previewInfo;

    .line 2810
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_codes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2811
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_codes:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_bots$previewInfo;->lang_codes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2813
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_bots$previewInfo;->media:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2818
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2819
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2820
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2822
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    .line 2823
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    iget v6, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    new-instance v7, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    iget-wide v8, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-direct {v7, p0, v8, v9, v4}, Lorg/telegram/ui/Stories/StoriesController$BotPreview;-><init>(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;JLorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    invoke-direct {v5, v6, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    move v6, v0

    .line 2826
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 2827
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v4, Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-static {v7, v8}, Lorg/telegram/messenger/MessagesController;->equals(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$MessageMedia;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2828
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 2833
    :goto_3
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lastId:I

    add-int/lit8 v8, v4, 0x1

    iput v8, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lastId:I

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    :goto_4
    iput v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v4, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 2834
    iput-object p0, v5, Lorg/telegram/messenger/MessageObject;->parentStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 2835
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 2836
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2837
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2839
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2840
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2843
    :cond_6
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->-$$Nest$fgetnotify(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2844
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->-$$Nest$fgetnotify(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_7

    .line 2847
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$loadInternal$1(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2794
    new-instance p3, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestReference$2(Lorg/telegram/ui/Stories/StoriesController$BotPreview;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 9

    const/4 v0, 0x0

    .line 2929
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2930
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_4

    .line 2931
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v2, :cond_0

    goto :goto_1

    .line 2932
    :cond_0
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_2

    .line 2933
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v5, :cond_1

    goto :goto_1

    .line 2934
    :cond_1
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_2

    .line 2935
    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    invoke-interface {p2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 2939
    :cond_2
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_4

    .line 2940
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v2, :cond_3

    goto :goto_1

    .line 2941
    :cond_3
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-wide v2, v3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_4

    .line 2942
    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    invoke-interface {p2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 2947
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/util/ArrayList;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3008
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3009
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    move v3, v0

    .line 3011
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3012
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-static {v4, v5}, Lorg/telegram/messenger/MessagesController;->equals(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$MessageMedia;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3018
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3019
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3020
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3025
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/tl/TL_bots$deletePreviewMedia;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_bots$deletePreviewMedia;-><init>()V

    .line 3026
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_bots$deletePreviewMedia;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 3027
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 3028
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_bots$deletePreviewMedia;->media:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->toInputMedia(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3030
    :cond_5
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3032
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->-$$Nest$fgetnotify(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3033
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->-$$Nest$fgetnotify(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public delete(Lorg/telegram/tgnet/TLRPC$MessageMedia;)V
    .locals 3

    .line 3037
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->delete(Ljava/util/ArrayList;)V

    return-void
.end method

.method public edit(Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 2870
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2871
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_3

    .line 2872
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_3

    .line 2873
    instance-of v4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v4, :cond_1

    .line 2874
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v3, :cond_0

    goto :goto_1

    .line 2875
    :cond_0
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    goto :goto_2

    .line 2880
    :cond_1
    instance-of v4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v4, :cond_3

    .line 2881
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_2

    goto :goto_1

    .line 2882
    :cond_2
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    move v1, v0

    :goto_2
    if-eqz v2, :cond_6

    .line 2891
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2892
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2893
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-lez v1, :cond_6

    .line 2895
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 2896
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2900
    :cond_6
    new-instance p1, Lorg/telegram/messenger/MessageObject;

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    new-instance v4, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-direct {v4, p0, v5, v6, p2}, Lorg/telegram/ui/Stories/StoriesController$BotPreview;-><init>(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;JLorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    invoke-direct {p1, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 2901
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v2, :cond_7

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lastId:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lastId:I

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    :goto_3
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 2902
    iput-object p0, p1, Lorg/telegram/messenger/MessageObject;->parentStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 2903
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 2904
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2905
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2907
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2908
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2909
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->notifyUpdate()V

    return-void
.end method

.method public findMessageObject(I)Lorg/telegram/messenger/MessageObject;
    .locals 2

    const/4 v0, 0x0

    .line 2973
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2974
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2975
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 2953
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getDays()Ljava/util/ArrayList;
    .locals 1

    .line 2968
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLoadedCount()I
    .locals 1

    .line 2958
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected invalidateCache()V
    .locals 0

    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 2963
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loading:Z

    return v0
.end method

.method public isOnlyCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(ZILjava/util/List;)Z
    .locals 0

    const/4 p1, 0x0

    .line 2774
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loadInternal(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public loadInternal(Ljava/lang/Runnable;)Z
    .locals 4

    .line 2778
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loaded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2781
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2782
    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$getPreviewInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$getPreviewInfo;-><init>()V

    .line 2783
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_bots$getPreviewInfo;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2784
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_bots$getPreviewInfo;->lang_code:Ljava/lang/String;

    goto :goto_0

    .line 2787
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$getPreviewMedias;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$getPreviewMedias;-><init>()V

    .line 2788
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_bots$getPreviewMedias;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    :goto_0
    const/4 v1, 0x1

    .line 2792
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loading:Z

    .line 2794
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->reqId:I

    return v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected markAsRead(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyUpdate()V
    .locals 1

    .line 2913
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->-$$Nest$fgetnotify(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2914
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->-$$Nest$fgetnotify(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected preloadCache()V
    .locals 0

    return-void
.end method

.method public push(Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V
    .locals 5

    .line 2855
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-direct {v2, p0, v3, v4, p1}, Lorg/telegram/ui/Stories/StoriesController$BotPreview;-><init>(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;JLorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 2856
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lastId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lastId:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 2857
    iput-object p0, v0, Lorg/telegram/messenger/MessageObject;->parentStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 p1, 0x0

    .line 2858
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 2859
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2860
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2862
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2863
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2864
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->notifyUpdate()V

    return-void
.end method

.method public reload(Ljava/lang/Runnable;)V
    .locals 4

    .line 2918
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->reqId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2919
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->reqId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2920
    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->reqId:I

    .line 2922
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loading:Z

    .line 2923
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loaded:Z

    .line 2924
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->loadInternal(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestReference(Lorg/telegram/ui/Stories/StoriesController$BotPreview;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 2928
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Lorg/telegram/ui/Stories/StoriesController$BotPreview;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->reload(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected saveCache()V
    .locals 0

    return-void
.end method

.method public updatePinnedOrder(Ljava/util/ArrayList;Z)V
    .locals 9

    .line 2983
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2985
    new-instance v1, Lorg/telegram/tgnet/tl/TL_bots$reorderPreviewMedias;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_bots$reorderPreviewMedias;-><init>()V

    .line 2986
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_bots$reorderPreviewMedias;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2987
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_bots$reorderPreviewMedias;->lang_code:Ljava/lang/String;

    .line 2988
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2989
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->findMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 2991
    :cond_0
    iget-object v7, v1, Lorg/telegram/tgnet/tl/TL_bots$reorderPreviewMedias;->order:Ljava/util/ArrayList;

    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->toInputMedia(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2992
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2993
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2995
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2997
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2998
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3000
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3001
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3002
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3003
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
