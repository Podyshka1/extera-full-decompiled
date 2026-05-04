.class public Lorg/telegram/ui/EmojiAnimationsOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;
    }
.end annotation


# static fields
.field private static final excludeEmojiFromPack:Ljava/util/HashSet;

.field private static final supportedEmoji:Ljava/util/HashSet;


# instance fields
.field private final ANIMATION_JSON_VERSION:I

.field private final INTERACTIONS_STICKER_PACK:Ljava/lang/String;

.field animationIndexes:Ljava/util/ArrayList;

.field private attached:Z

.field chatActivity:Lorg/telegram/ui/ChatActivity;

.field contentLayout:Landroid/widget/FrameLayout;

.field currentAccount:I

.field dialogId:J

.field final drawingObjects:Ljava/util/ArrayList;

.field emojiInteractionsStickersMap:Ljava/util/HashMap;

.field hintRunnable:Ljava/lang/Runnable;

.field inited:Z

.field lastAnimationIndex:Ljava/util/HashMap;

.field lastTappedEmoji:Ljava/lang/String;

.field lastTappedMsgId:I

.field lastTappedTime:J

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private preloaded:Ljava/util/HashMap;

.field random:Ljava/util/Random;

.field sentInteractionsRunnable:Ljava/lang/Runnable;

.field set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field threadMsgId:J

.field timeIntervals:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$KDnjy3l_gSrlOhnh0ZAjPNOHZ1s(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$createDrawingObject$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lg6LaxPnXzVs9olBEIUMvcZ8Ykk(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$showStickerSetBulletin$3(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pfe5rK-YxtxhuWZHF66lUqbz0xc(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$createDrawingObject$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pYbetYrUkHayxjBk3hcf5D7B4wY(Lorg/telegram/ui/EmojiAnimationsOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->lambda$createDrawingObject$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindViewAndShowAnimation(Lorg/telegram/ui/EmojiAnimationsOverlay;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->findViewAndShowAnimation(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->excludeEmojiFromPack:Ljava/util/HashSet;

    .line 79
    const-string v1, "0\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "1\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "2\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v1, "3\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, "4\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v1, "5\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v1, "6\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v1, "7\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v1, "8\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v1, "9\u20e3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;I)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->ANIMATION_JSON_VERSION:I

    .line 54
    const-string v0, "EmojiAnimations"

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->INTERACTIONS_STICKER_PACK:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    .line 100
    iput p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/RecyclerListView;IJJ)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->ANIMATION_JSON_VERSION:I

    .line 54
    const-string v0, "EmojiAnimations"

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->INTERACTIONS_STICKER_PACK:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    .line 104
    iput-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 105
    iput-object p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    .line 106
    iput-object p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 107
    iput p4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    .line 108
    iput-wide p5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    .line 109
    iput-wide p7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    return-void
.end method

.method private clearSendingInfo()V
    .locals 2

    const/4 v0, 0x0

    .line 922
    iput v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    const/4 v0, 0x0

    .line 923
    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedEmoji:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 924
    iput-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private findViewAndShowAnimation(II)V
    .locals 5

    .line 240
    iget-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 244
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 245
    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 246
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_2

    .line 247
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 248
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 250
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 252
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 253
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_5

    .line 262
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ChatActivity;->restartSticker(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 263
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/EmojiData;->hasEmojiSupportVibration(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x3

    .line 265
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, v2, p2, v0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public static getFilterWidth()I
    .locals 2

    .line 830
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    .line 833
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 835
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private synthetic lambda$createDrawingObject$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 654
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showStickerSetBulletin(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private synthetic lambda$createDrawingObject$1(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 653
    new-instance p3, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createDrawingObject$2()V
    .locals 1

    .line 814
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->sendCurrentTaps()V

    const/4 v0, 0x0

    .line 815
    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$showStickerSetBulletin$3(Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    .line 852
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v3

    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v5, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 853
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 854
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private preloadAnimation(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 584
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    .line 586
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageLocation;I)V

    return-void
.end method

.method private sendCurrentTaps()V
    .locals 9

    .line 883
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    if-nez v0, :cond_0

    return-void

    .line 886
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;-><init>()V

    .line 887
    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->msg_id:I

    .line 888
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedEmoji:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->emoticon:Ljava/lang/String;

    .line 889
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 890
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 892
    :try_start_0
    const-string/jumbo v2, "v"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 893
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 895
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 896
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 897
    const-string v6, "i"

    iget-object v7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 898
    const-string/jumbo v6, "t"

    iget-object v7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 899
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 902
    :cond_1
    const-string v4, "a"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 910
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 911
    iget-wide v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    long-to-int v2, v4

    .line 912
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->top_msg_id:I

    .line 913
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->flags:I

    or-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->flags:I

    .line 915
    :cond_2
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 916
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 917
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 918
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clearSendingInfo()V

    return-void

    .line 904
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clearSendingInfo()V

    .line 905
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private showStickerSetBulletin(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 842
    :cond_0
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 845
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/StickerSetBulletinLayout;

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 846
    iget-object v0, v1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object p1, v1, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStickerTooltip:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p1, v0, v3, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 850
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 851
    new-instance v0, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 856
    sget v0, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    .line 857
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/16 v0, 0xabe

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 858
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Bulletin;->hash:I

    .line 859
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
    return-void
.end method

.method public static unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 867
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_3

    .line 869
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v6, 0xd83c

    if-ne v3, v6, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const v7, 0xdffb

    if-lt v6, v7, :cond_1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v6, 0xdfff

    if-le v3, v6, :cond_2

    :cond_1
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x200d

    if-ne v3, v6, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2640

    if-eq v6, v7, :cond_2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x2642

    if-ne v3, v6, :cond_3

    .line 870
    :cond_2
    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    add-int/lit8 v6, v2, 0x2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v3, v4, v1

    aput-object p0, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    add-int/lit8 v0, v0, -0x2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 873
    :cond_3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v6, 0xfe0f

    if-ne v3, v6, :cond_4

    .line 874
    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v3, v4, v1

    aput-object p0, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 879
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 3

    const/4 v0, 0x0

    .line 959
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 960
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelHintRunnable()V
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 480
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public checkPosition(Lorg/telegram/ui/Cells/ChatMessageCell;FI)Z
    .locals 1

    .line 951
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result p1

    add-float/2addr v0, p1

    cmpl-float p1, v0, p2

    if-lez p1, :cond_0

    int-to-float p1, p3

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkStickerPack()V
    .locals 14

    .line 152
    iget-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 155
    :cond_0
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const-string v1, "EmojiAnimations"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_1

    .line 157
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 160
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    .line 162
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_7

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    .line 164
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 167
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 169
    sget-object v5, Lorg/telegram/ui/EmojiAnimationsOverlay;->excludeEmojiFromPack:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 170
    sget-object v5, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v6, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v2

    .line 173
    :goto_2
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 174
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 177
    :cond_4
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string/jumbo v6, "\u2764"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 178
    const-string/jumbo v12, "\ud83e\udd0d"

    const-string/jumbo v13, "\ud83e\udd0e"

    const-string/jumbo v6, "\ud83e\udde1"

    const-string/jumbo v7, "\ud83d\udc9b"

    const-string/jumbo v8, "\ud83d\udc9a"

    const-string/jumbo v9, "\ud83d\udc99"

    const-string/jumbo v10, "\ud83d\udc9c"

    const-string/jumbo v11, "\ud83d\udda4"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v4

    move v6, v2

    :goto_3
    const/16 v7, 0x8

    if-ge v6, v7, :cond_5

    .line 179
    aget-object v7, v4, v6

    .line 180
    sget-object v8, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v8, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 186
    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->inited:Z

    :cond_7
    :goto_4
    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 143
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 144
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createDrawingObject(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;IZZFFZ)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 620
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-eqz v4, :cond_1

    .line 621
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getEffect()Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    if-nez v10, :cond_2

    if-nez v9, :cond_2

    .line 622
    sget-object v11, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 623
    :cond_2
    iget-object v11, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v10, :cond_5

    if-eqz v11, :cond_3

    .line 624
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_3
    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    return v8

    :cond_5
    :goto_2
    move v12, v8

    move v13, v12

    move v14, v13

    .line 627
    :goto_3
    iget-object v15, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v12, v15, :cond_a

    .line 628
    iget-object v15, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget v15, v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    if-ne v15, v2, :cond_7

    add-int/lit8 v13, v13, 0x1

    if-nez v10, :cond_7

    .line 630
    iget-object v15, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v15, v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v15

    if-eqz v15, :cond_6

    iget-object v15, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v15, v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    return v8

    .line 634
    :cond_7
    iget-object v15, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v15, v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v15, :cond_8

    if-eqz v3, :cond_8

    iget-object v15, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v15, v15, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v16, v8

    move/from16 v17, v9

    iget-wide v8, v15, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v18, v8

    const/4 v15, 0x1

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v7, v18, v7

    if-nez v7, :cond_9

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_8
    move/from16 v16, v8

    move/from16 v17, v9

    const/4 v15, 0x1

    :cond_9
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v16

    move/from16 v9, v17

    goto :goto_3

    :cond_a
    move/from16 v16, v8

    move/from16 v17, v9

    const/4 v15, 0x1

    if-eqz v6, :cond_f

    if-eqz v17, :cond_f

    if-lez v13, :cond_f

    .line 639
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Bulletin;->hash:I

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne v1, v2, :cond_b

    return v16

    .line 642
    :cond_b
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    .line 644
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 645
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_d

    .line 648
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    :cond_d
    if-nez v3, :cond_e

    .line 651
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 652
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 653
    iget v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_6

    .line 657
    :cond_e
    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showStickerSetBulletin(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/messenger/MessageObject;)V

    :goto_6
    return v16

    :cond_f
    const/4 v7, 0x4

    if-lt v13, v7, :cond_10

    return v16

    :cond_10
    if-eqz v10, :cond_17

    .line 667
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getEffect()Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object v11

    .line 668
    iget v12, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/MessagesController;->getAvailableEffects()Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;

    move-result-object v12

    if-nez v12, :cond_11

    return v16

    :cond_11
    move/from16 p3, v7

    const-wide/16 v18, 0x0

    .line 672
    iget-wide v7, v11, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->effect_animation_id:J

    cmp-long v9, v7, v18

    if-eqz v9, :cond_12

    goto :goto_7

    :cond_12
    iget-wide v7, v11, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->effect_sticker_id:J

    :goto_7
    move/from16 v9, v16

    .line 673
    :goto_8
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->documents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_14

    .line 674
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$messages_AvailableEffects;->documents:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_13

    .line 675
    iget-wide v3, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_13

    goto :goto_9

    :cond_13
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p4

    goto :goto_8

    :cond_14
    const/4 v13, 0x0

    :goto_9
    if-nez v13, :cond_15

    return v16

    .line 683
    :cond_15
    iget-wide v3, v11, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->effect_sticker_id:J

    cmp-long v3, v3, v18

    if-eqz v3, :cond_20

    .line 684
    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getPremiumStickerAnimation(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v3

    if-eqz v3, :cond_16

    move v9, v15

    goto/16 :goto_10

    :cond_16
    move/from16 v9, v16

    goto/16 :goto_10

    :cond_17
    move/from16 p3, v7

    const-wide/16 v18, 0x0

    if-eqz v17, :cond_18

    .line 688
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v13

    .line 689
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->getPremiumStickerAnimation()Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v3

    move/from16 v9, v17

    goto/16 :goto_10

    :cond_18
    if-eqz p4, :cond_21

    .line 690
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result v3

    if-eqz v3, :cond_21

    if-ltz v5, :cond_1a

    .line 691
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v15

    if-le v5, v3, :cond_19

    goto :goto_a

    :cond_19
    move v3, v5

    goto :goto_e

    .line 692
    :cond_1a
    :goto_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v4, v16

    .line 693
    :goto_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1e

    .line 694
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v5, :cond_1b

    goto :goto_d

    .line 698
    :cond_1b
    iget-object v7, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloaded:Ljava/util/HashMap;

    if-eqz v7, :cond_1c

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_c

    :cond_1c
    const/4 v5, 0x0

    :goto_c
    if-eqz v5, :cond_1d

    .line 699
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 700
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 703
    :cond_1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 704
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    goto :goto_e

    .line 706
    :cond_1f
    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 709
    :goto_e
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    move v5, v3

    :cond_20
    :goto_f
    move/from16 v9, v17

    const/4 v3, 0x0

    goto :goto_10

    :cond_21
    if-ltz v5, :cond_22

    .line 711
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v15

    if-le v5, v3, :cond_23

    .line 712
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    move v5, v3

    .line 714
    :cond_23
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_f

    :goto_10
    if-nez v13, :cond_24

    if-nez v3, :cond_24

    return v16

    .line 721
    :cond_24
    new-instance v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    invoke-direct {v4}, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;-><init>()V

    .line 722
    iput-boolean v9, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    .line 723
    iput-boolean v10, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isMessageEffect:Z

    if-nez v10, :cond_25

    const/high16 v7, 0x40800000    # 4.0f

    div-float v8, p8, v7

    .line 725
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    rem-int/lit8 v10, v10, 0x65

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    mul-float/2addr v8, v10

    iput v8, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    div-float v7, p9, v7

    .line 726
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    rem-int/lit8 v8, v8, 0x65

    int-to-float v8, v8

    div-float/2addr v8, v11

    mul-float/2addr v7, v8

    iput v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    .line 728
    :cond_25
    iput v2, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    .line 729
    iput-object v13, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v7, p10

    .line 730
    iput-boolean v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    .line 731
    iget-object v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v15}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 732
    iget-object v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/ImageReceiver;->setAllowLottieVibration(Z)V

    .line 734
    const-string v7, "_"

    if-nez v3, :cond_28

    .line 735
    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v3

    .line 736
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v10, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_26

    move/from16 v8, v16

    :goto_11
    const/4 v15, 0x1

    goto :goto_12

    .line 737
    :cond_26
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_11

    :goto_12
    add-int/2addr v8, v15

    .line 738
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    invoke-static {v13}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    .line 742
    iget-object v10, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 744
    iget-object v8, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_pcache"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/16 v26, 0x1

    const/16 v23, 0x0

    const-string/jumbo v24, "tgs"

    move-object/from16 v25, v3

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v26}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 745
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v7, Lorg/telegram/ui/EmojiAnimationsOverlay$3;

    move-object/from16 v8, p4

    invoke-direct {v7, v0, v4, v6, v8}, Lorg/telegram/ui/EmojiAnimationsOverlay$3;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;ZLorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 762
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 763
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    move/from16 v7, v16

    const/4 v15, 0x1

    invoke-virtual {v3, v7, v7, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    :cond_27
    move/from16 p5, v5

    goto/16 :goto_15

    .line 766
    :cond_28
    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v8

    if-lez v14, :cond_2a

    .line 768
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_29

    const/4 v10, 0x0

    goto :goto_13

    .line 769
    :cond_29
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 770
    :goto_13
    iget-object v11, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    move/from16 p5, v5

    iget-wide v5, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v6, v10, 0x1

    rem-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    goto :goto_14

    :cond_2a
    move/from16 p5, v5

    .line 773
    :goto_14
    iput-object v13, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 774
    iget-object v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v3, v13}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/16 v26, 0x1

    const/16 v23, 0x0

    const-string/jumbo v24, "tgs"

    move-object/from16 v25, v3

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v26}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 777
    :goto_15
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 778
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 779
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 780
    iget-boolean v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v3, :cond_2b

    .line 781
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    const/4 v15, 0x1

    invoke-virtual {v3, v7, v7, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 783
    :cond_2b
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 785
    :cond_2c
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 787
    iget-object v3, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 788
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    if-eqz p6, :cond_30

    if-nez v9, :cond_30

    .line 790
    iget v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-wide v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_30

    .line 791
    iget v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    if-eqz v3, :cond_2d

    if-eq v3, v2, :cond_2d

    .line 792
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2d

    .line 793
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 794
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 797
    :cond_2d
    iput v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedMsgId:I

    .line 798
    iput-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedEmoji:Ljava/lang/String;

    .line 799
    iget-wide v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    cmp-long v2, v2, v18

    if-nez v2, :cond_2e

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    .line 801
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 802
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 803
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 806
    :cond_2e
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->timeIntervals:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastTappedTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->animationIndexes:Ljava/util/ArrayList;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    :goto_16
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2f

    .line 810
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    .line 811
    iput-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    .line 813
    :cond_2f
    new-instance v2, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/EmojiAnimationsOverlay$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    iput-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->sentInteractionsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_30
    if-eqz p7, :cond_31

    .line 820
    iget v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    iget-wide v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    const/16 v7, 0xb

    const/4 v8, 0x0

    move-object/from16 p8, v1

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move/from16 p7, v7

    move/from16 p9, v8

    invoke-virtual/range {p2 .. p9}, Lorg/telegram/messenger/MessagesController;->sendTyping(JJILjava/lang/String;I)Z

    :cond_31
    const/4 v15, 0x1

    return v15
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 193
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 194
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 195
    const-string p2, "EmojiAnimations"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->checkStickerPack()V

    return-void

    .line 198
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    if-ne p1, p2, :cond_2

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 202
    :cond_1
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v1, 0x1

    .line 203
    aget-object p3, p3, v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;

    .line 204
    iget-wide v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    sget-object p1, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->emoticon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 205
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->msg_id:I

    .line 206
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 208
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;->interaction:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    const-string p3, "a"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 210
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 211
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    .line 212
    const-string v2, "i"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sub-int/2addr v2, v1

    .line 213
    const-string/jumbo v3, "t"

    const-wide/16 v4, 0x0

    invoke-virtual {p3, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 214
    new-instance p3, Lorg/telegram/ui/EmojiAnimationsOverlay$1;

    invoke-direct {p3, p0, p1, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay$1;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;II)V

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-long v2, v3

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 227
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_3

    .line 228
    iget p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    iget-wide v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 229
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 230
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->cancelHintRunnable()V

    :cond_3
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 277
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    const/4 v2, 0x0

    move v3, v2

    .line 278
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1e

    .line 279
    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    .line 280
    iget-object v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-eqz v5, :cond_d

    .line 281
    iput-boolean v2, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    move v5, v2

    .line 283
    :goto_1
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    if-ge v5, v10, :cond_6

    .line 284
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 287
    instance-of v12, v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v12, :cond_0

    .line 288
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 289
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    .line 290
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    goto :goto_2

    .line 291
    :cond_0
    instance-of v12, v10, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v12, :cond_1

    .line 292
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 293
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    .line 294
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    move-object v12, v13

    :goto_2
    if-eqz v13, :cond_5

    .line 296
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    iget v14, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    if-ne v13, v14, :cond_5

    .line 297
    iput-boolean v9, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    .line 298
    iget-object v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v13

    add-float/2addr v5, v13

    .line 299
    iget-object v13, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v14

    add-float/2addr v13, v14

    .line 300
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v14

    .line 301
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v15

    iput v15, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    .line 302
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v15

    iput v15, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    .line 303
    iget-boolean v15, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isMessageEffect:Z

    if-eqz v15, :cond_2

    instance-of v15, v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v15, :cond_2

    .line 304
    check-cast v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 305
    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v12

    int-to-float v12, v12

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v12, v15

    const v15, 0x3fa66666    # 1.3f

    div-float/2addr v12, v15

    div-float v15, v12, v6

    .line 306
    iput v15, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    .line 307
    iput v15, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    .line 308
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTimeX()F

    move-result v15

    add-float/2addr v5, v15

    div-float v15, v12, v7

    sub-float/2addr v5, v15

    move/from16 v16, v6

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sub-float/2addr v6, v12

    invoke-static {v5, v6, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    iput v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 309
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTimeY()F

    move-result v5

    add-float/2addr v13, v5

    sub-float/2addr v13, v15

    iput v13, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    goto :goto_5

    :cond_2
    move/from16 v16, v6

    .line 310
    iget-boolean v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v6, :cond_3

    .line 311
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 312
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    add-float/2addr v13, v5

    iput v13, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    goto :goto_5

    .line 314
    :cond_3
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v6

    add-float/2addr v5, v6

    .line 315
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v6

    add-float/2addr v13, v6

    .line 316
    iget-boolean v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    const/high16 v10, 0x41c00000    # 24.0f

    if-eqz v6, :cond_4

    .line 317
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    :goto_3
    add-float/2addr v5, v6

    goto :goto_4

    .line 319
    :cond_4
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    goto :goto_3

    .line 321
    :goto_4
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v6

    sub-float/2addr v13, v6

    .line 322
    iput v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 323
    iput v13, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    goto :goto_5

    :cond_5
    move/from16 v16, v6

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v16

    goto/16 :goto_1

    :cond_6
    move/from16 v16, v6

    move v14, v11

    .line 329
    :goto_5
    iget-boolean v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    if-eqz v5, :cond_7

    iget v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    add-float/2addr v5, v14

    iget-object v6, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getChatListViewPadding()F

    move-result v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget v6, v6, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v14, v5

    if-lez v5, :cond_8

    .line 330
    :cond_7
    iput-boolean v9, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    .line 333
    :cond_8
    iget-boolean v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v5, :cond_c

    .line 334
    iget v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    div-float/2addr v5, v7

    .line 335
    iget-object v6, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v14

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_9

    move v6, v9

    goto :goto_6

    :cond_9
    move v6, v2

    .line 336
    :goto_6
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getChatListViewPadding()F

    move-result v10

    sub-float/2addr v14, v10

    add-float/2addr v14, v5

    cmpg-float v5, v14, v11

    if-gtz v5, :cond_a

    move v5, v9

    goto :goto_7

    :cond_a
    move v5, v2

    :goto_7
    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    .line 338
    :cond_b
    iput-boolean v9, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    .line 342
    :cond_c
    iget-boolean v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    if-eqz v5, :cond_e

    iget v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removeProgress:F

    cmpl-float v6, v5, v8

    if-eqz v6, :cond_e

    const v6, 0x3dda740e

    add-float/2addr v5, v6

    .line 343
    invoke-static {v5, v8, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    iput v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removeProgress:F

    .line 344
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sub-float v5, v8, v5

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 345
    iget-object v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_8

    :cond_d
    move/from16 v16, v6

    .line 348
    invoke-virtual {v0, v4}, Lorg/telegram/ui/EmojiAnimationsOverlay;->layoutObject(Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;)V

    .line 351
    :cond_e
    :goto_8
    iget-boolean v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->wasPlayed:Z

    if-nez v5, :cond_f

    iget-boolean v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removing:Z

    if-eqz v5, :cond_f

    move v5, v9

    goto :goto_9

    :cond_f
    move v5, v2

    :goto_9
    if-nez v5, :cond_15

    .line 353
    iget-boolean v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    const/high16 v10, -0x40800000    # -1.0f

    if-eqz v6, :cond_12

    iget-boolean v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isMessageEffect:Z

    if-nez v6, :cond_12

    .line 354
    iget v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    const v11, 0x3fbfe7c0

    mul-float/2addr v11, v6

    const/high16 v12, 0x3d600000    # 0.0546875f

    mul-float/2addr v12, v11

    .line 356
    iget v13, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    div-float/2addr v6, v7

    add-float/2addr v13, v6

    div-float v6, v11, v7

    sub-float/2addr v13, v6

    const v6, 0x3b36d86f    # 0.00279f

    mul-float/2addr v6, v11

    sub-float/2addr v13, v6

    .line 358
    iget-boolean v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-nez v6, :cond_10

    .line 359
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    sub-float/2addr v7, v12

    invoke-virtual {v6, v7, v13, v11, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_a

    .line 361
    :cond_10
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    iget v14, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    add-float/2addr v7, v14

    sub-float/2addr v7, v11

    add-float/2addr v7, v12

    invoke-virtual {v6, v7, v13, v11, v11}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 364
    :goto_a
    iget-boolean v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-nez v6, :cond_11

    .line 365
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 366
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    iget-object v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v7

    invoke-virtual {v1, v10, v8, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 367
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 368
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    .line 370
    :cond_11
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_b

    .line 373
    :cond_12
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v6, :cond_13

    .line 374
    iget v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    iget v10, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    add-float/2addr v7, v10

    .line 375
    iget v10, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    iget v11, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    add-float/2addr v10, v11

    .line 376
    iget v11, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    mul-float v11, v11, v16

    float-to-int v12, v7

    float-to-int v13, v10

    add-float/2addr v7, v11

    float-to-int v7, v7

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 377
    invoke-virtual {v6, v12, v13, v7, v10}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setBounds(IIII)V

    .line 378
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 380
    :cond_13
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    iget v11, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    add-float/2addr v7, v11

    iget v11, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    iget v12, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    add-float/2addr v11, v12

    iget v12, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    mul-float v13, v12, v16

    mul-float v12, v12, v16

    invoke-virtual {v6, v7, v11, v13, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 381
    iget-boolean v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-nez v6, :cond_14

    .line 382
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 383
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    iget-object v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v7

    invoke-virtual {v1, v10, v8, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 384
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 385
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    .line 387
    :cond_14
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 394
    :cond_15
    :goto_b
    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v6, :cond_16

    .line 395
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->isDone()Z

    move-result v6

    goto :goto_c

    .line 397
    :cond_16
    iget-boolean v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->wasPlayed:Z

    if-eqz v6, :cond_17

    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v6

    if-eqz v6, :cond_17

    iget-object v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v6

    iget-object v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-lt v6, v7, :cond_17

    move v6, v9

    goto :goto_c

    :cond_17
    move v6, v2

    .line 399
    :goto_c
    iget v7, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->removeProgress:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1a

    if-nez v6, :cond_1a

    if-eqz v5, :cond_18

    goto :goto_d

    .line 409
    :cond_18
    iget-object v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    if-eqz v5, :cond_19

    iget-object v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 410
    iput-boolean v9, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->wasPlayed:Z

    goto :goto_e

    .line 411
    :cond_19
    iget-object v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    if-eqz v5, :cond_1d

    iget-object v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 412
    iget-object v5, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    invoke-virtual {v5, v2, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 413
    iget-object v4, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_e

    .line 400
    :cond_1a
    :goto_d
    iget-object v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    .line 401
    iget-boolean v6, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v6, :cond_1b

    iget-object v4, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 402
    iget-object v4, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    invoke-virtual {v4, v2, v9, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 404
    :cond_1b
    iget-object v4, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 405
    iget-object v4, v5, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v4, :cond_1c

    .line 406
    iget-object v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    :cond_1c
    add-int/lit8 v3, v3, -0x1

    :cond_1d
    :goto_e
    add-int/2addr v3, v9

    goto/16 :goto_0

    .line 416
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 417
    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onAllEffectsEnd()V

    .line 419
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_20
    return-void
.end method

.method public getProgress()F
    .locals 2

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 1135
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->getProgress()F

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected layoutObject(Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;)V
    .locals 0

    return-void
.end method

.method public onAllEffectsEnd()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    .line 114
    invoke-virtual {p0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->checkStickerPack()V

    .line 115
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 116
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 117
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    .line 128
    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 129
    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 130
    iget v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 131
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 132
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onScrolled(I)V
    .locals 4

    const/4 v0, 0x0

    .line 930
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 931
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-boolean v1, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->viewFound:Z

    if-nez v1, :cond_0

    .line 932
    iget-object v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    int-to-float v3, p1

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTapItem(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;Z)Z
    .locals 11

    .line 428
    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 431
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, -0x1

    .line 434
    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/EmojiData;->hasEmojiSupportVibration(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result v3

    if-nez v3, :cond_2

    .line 438
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :catch_0
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getEffect()Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object v3

    if-nez v3, :cond_8

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmojiStickerSingle()Z

    move-result p3

    if-eqz p3, :cond_3

    goto/16 :goto_3

    .line 447
    :cond_3
    iget p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v5, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    iget-wide v7, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->threadMsgId:J

    invoke-virtual {p3, v5, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 449
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v3, 0x5

    if-ne p3, v3, :cond_4

    goto/16 :goto_2

    .line 452
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    if-nez p3, :cond_7

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result p3

    if-nez p3, :cond_7

    :cond_5
    sget p3, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    if-lez p3, :cond_7

    iget p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v7, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p3, v5, v7

    if-eqz p3, :cond_7

    .line 453
    sget p3, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    sub-int/2addr p3, v4

    invoke-static {p3}, Lorg/telegram/messenger/SharedConfig;->updateEmojiInteractionsHintCount(I)V

    .line 455
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 456
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :goto_0
    move-object v9, p1

    goto :goto_1

    .line 458
    :cond_6
    iget p3, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    goto :goto_0

    .line 460
    :goto_1
    new-instance v5, Lorg/telegram/ui/Components/StickerSetBulletinLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v8, -0x1

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 461
    iget-object p1, v5, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object p1, v5, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/messenger/R$string;->EmojiInteractionTapHint:I

    iget-object v3, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "EmojiInteractionTapHint"

    invoke-static {v3, p3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    iget-object v3, v5, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {p3, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object p1, v5, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 464
    iget-object p1, v5, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 465
    iget-object p1, v5, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 p1, 0xabe

    .line 466
    invoke-static {p2, v5, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 467
    new-instance p2, Lorg/telegram/ui/EmojiAnimationsOverlay$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay$2;-><init>(Lorg/telegram/ui/EmojiAnimationsOverlay;Lorg/telegram/ui/Components/Bulletin;)V

    iput-object p2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->hintRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_2
    return v0

    .line 442
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    iput-boolean v1, p3, Lorg/telegram/messenger/MessageObject;->forcePlayEffect:Z

    .line 443
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean v4, p3, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    .line 444
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-wide v1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->dialogId:J

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v1, v2, p1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    return v0

    :cond_9
    :goto_4
    return v1
.end method

.method public preload(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 3

    .line 1047
    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1049
    iget v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    iget-wide v1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    .line 1050
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 1056
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 1057
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1060
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1062
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloadAnimation(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public preloadAnimation(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 3

    .line 552
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 553
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 556
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 558
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 560
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 561
    sget-object v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->supportedEmoji:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 564
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 565
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 568
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 570
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->preloadAnimation(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public setAccount(I)V
    .locals 0

    .line 1043
    iput p1, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    return-void
.end method

.method public showAnimationForActionCell(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 486
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    return v4

    .line 489
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v2

    if-nez v2, :cond_1

    return v4

    .line 492
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    .line 493
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-lez v6, :cond_e

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_2

    goto/16 :goto_2

    :cond_2
    move v5, v4

    move v6, v5

    move v7, v6

    .line 500
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 501
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    if-ne v8, v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 503
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    return v4

    .line 507
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    iget-object v8, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-object v8, v8, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x4

    if-lt v6, v5, :cond_7

    return v4

    .line 515
    :cond_7
    new-instance v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    invoke-direct {v6}, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;-><init>()V

    const/4 v8, 0x1

    .line 516
    iput-boolean v8, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    .line 517
    iget-boolean v9, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isMessageEffect:Z

    if-nez v9, :cond_8

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v3, v9

    .line 518
    iget-object v10, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    rem-int/lit8 v10, v10, 0x65

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    mul-float/2addr v3, v10

    iput v3, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    div-float/2addr v2, v9

    .line 519
    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x65

    int-to-float v3, v3

    div-float/2addr v3, v11

    mul-float/2addr v2, v3

    iput v2, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    .line 521
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    .line 522
    iput-boolean v8, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    .line 523
    iget-object v2, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 524
    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v2

    .line 525
    const-string v3, "_"

    if-lez v7, :cond_a

    .line 526
    iget-object v7, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_9

    move v7, v4

    goto :goto_1

    .line 527
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 528
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->lastAnimationIndex:Ljava/util/HashMap;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    rem-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v5, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 531
    :cond_a
    iput-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 532
    iget-object v9, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v14, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->set:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v15, 0x1

    const/4 v12, 0x0

    const-string/jumbo v13, "tgs"

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 534
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 535
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 536
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 537
    iget-boolean v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isPremiumSticker:Z

    if-eqz v1, :cond_b

    .line 538
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 540
    :cond_b
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 542
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-boolean v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    if-eqz v1, :cond_d

    .line 544
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 545
    iget-object v1, v6, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 547
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return v8

    :cond_e
    :goto_2
    return v4
.end method

.method public showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 591
    iget-object v2, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 595
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getEffect()Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 598
    :cond_1
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 600
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 602
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getEffect()Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object v3

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    return v0

    .line 605
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v10

    .line 606
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v9

    .line 607
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getEffect()Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    cmpg-float v4, v10, v3

    if-lez v4, :cond_4

    cmpg-float v3, v9, v3

    if-gtz v3, :cond_5

    :cond_4
    return v0

    .line 611
    :cond_5
    invoke-static {v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    .line 614
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    .line 615
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v11

    move-object v1, p0

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    .line 616
    invoke-virtual/range {v1 .. v11}, Lorg/telegram/ui/EmojiAnimationsOverlay;->createDrawingObject(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;IZZFFZ)Z

    move-result v0

    :cond_6
    :goto_0
    return v0
.end method

.method public showAnimationForWidget(Lorg/telegram/ui/Stories/StoryReactionWidgetView;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 965
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc

    const/4 v11, 0x0

    if-le v1, v2, :cond_0

    return v11

    :cond_0
    move-object/from16 v12, p1

    .line 968
    iget-object v1, v12, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v13

    .line 969
    iget-object v1, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 971
    iget v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->currentAccount:I

    iget-wide v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 972
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v1

    .line 977
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 978
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    .line 979
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 980
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 981
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    move v8, v2

    move v9, v8

    goto :goto_0

    :cond_2
    move v9, v2

    move v8, v3

    .line 987
    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 991
    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v4, v14

    cmpl-float v3, v3, v4

    const/4 v15, 0x1

    if-lez v3, :cond_3

    move v10, v15

    goto :goto_1

    :cond_3
    move v10, v11

    .line 992
    :goto_1
    iget-object v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    const v16, 0x3fe66666    # 1.8f

    const/high16 v17, 0x3fc00000    # 1.5f

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/ui/EmojiAnimationsOverlay;->createDrawingObject(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;IZZFFZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 993
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 994
    iget-object v1, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    .line 995
    iput-boolean v15, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isReaction:Z

    .line 996
    iput v9, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    .line 997
    iput v8, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    .line 998
    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget v3, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    div-float/2addr v3, v14

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 999
    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget v3, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    mul-float v17, v17, v3

    sub-float v2, v2, v17

    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    .line 1000
    iget-boolean v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    if-eqz v2, :cond_4

    .line 1001
    iget v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    neg-float v3, v3

    mul-float v3, v3, v16

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    goto :goto_2

    .line 1003
    :cond_4
    iget v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    neg-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    :cond_5
    :goto_2
    return v15

    .line 1007
    :cond_6
    iget-wide v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    invoke-virtual {v12}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->getAnimatedEmojiDrawable()Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v1

    if-eqz v1, :cond_c

    move v1, v11

    move v3, v1

    .line 1009
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 1010
    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    iget-wide v4, v4, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->documentId:J

    iget-wide v6, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x4

    if-lt v3, v1, :cond_9

    return v11

    .line 1017
    :cond_9
    new-instance v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;

    invoke-direct {v1}, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;-><init>()V

    .line 1018
    invoke-virtual {v12}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->getAnimatedEmojiDrawable()Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    invoke-static {v3, v15, v15}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->createFrom(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;ZZ)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    .line 1019
    iget-boolean v3, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isMessageEffect:Z

    if-nez v3, :cond_a

    const/high16 v3, 0x40800000    # 4.0f

    div-float v4, v8, v3

    .line 1020
    iget-object v5, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    rem-int/lit8 v5, v5, 0x65

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    iput v4, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetX:F

    div-float v3, v9, v3

    .line 1021
    iget-object v4, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int/lit8 v4, v4, 0x65

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float/2addr v3, v4

    iput v3, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->randomOffsetY:F

    .line 1023
    :cond_a
    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->messageId:I

    const/4 v2, 0x0

    .line 1024
    iput-object v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1025
    iget-wide v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iput-wide v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->documentId:J

    .line 1026
    iput-boolean v10, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isOut:Z

    .line 1027
    iput-boolean v15, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->isReaction:Z

    .line 1028
    iput v9, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastH:F

    .line 1029
    iput v8, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    .line 1030
    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget v3, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    div-float/2addr v3, v14

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 1031
    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget v3, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastW:F

    mul-float v17, v17, v3

    sub-float v2, v2, v17

    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastY:F

    .line 1032
    iget v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    neg-float v3, v3

    mul-float v3, v3, v16

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->lastX:F

    .line 1033
    iget-boolean v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->attached:Z

    if-eqz v2, :cond_b

    .line 1034
    iget-object v2, v1, Lorg/telegram/ui/EmojiAnimationsOverlay$DrawingObject;->genericEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v3, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setView(Landroid/view/View;)V

    .line 1036
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/EmojiAnimationsOverlay;->drawingObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v15

    :cond_c
    return v11
.end method

.method public supports(Ljava/lang/String;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/EmojiAnimationsOverlay;->emojiInteractionsStickersMap:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->unwrapEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
