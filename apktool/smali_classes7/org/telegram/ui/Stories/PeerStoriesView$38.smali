.class Lorg/telegram/ui/Stories/PeerStoriesView$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$-dkWTqfgsO8iz93BknNIsZtixHY(Lorg/telegram/ui/Stories/PeerStoriesView$38;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$38;->lambda$onReactionClickedInternal$2(ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$76ZL30jyQIP9lNcWUFmmSBbRFG4(Lorg/telegram/ui/Stories/PeerStoriesView$38;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$38;->lambda$onReactionClickedInternal$0(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pWUbn13BovyAxEwGiDzGDKlGmWI(Lorg/telegram/ui/Stories/PeerStoriesView$38;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$38;->lambda$onReactionClickedInternal$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 7819
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReactionClickedInternal$0(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 7827
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$38;->onReactionClickedInternal(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    return-void
.end method

.method private synthetic lambda$onReactionClickedInternal$1()V
    .locals 1

    .line 7889
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mopenChat(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-void
.end method

.method private synthetic lambda$onReactionClickedInternal$2(ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;Ljava/lang/Long;)V
    .locals 13

    move-object v8, p2

    const/4 v12, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 7833
    iget-object v1, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7835
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v1, v12}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v1, v0

    .line 7837
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    move v2, v1

    .line 7838
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    move-object v4, v3

    iget-object v3, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 7840
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v6, v4, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v7, v4, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    move-object v8, p2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 7844
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 7845
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    move-object v4, v3

    iget-object v3, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 7847
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v6, v4, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v7, v4, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v8, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    .line 7851
    :goto_0
    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 7852
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/messenger/R$id;->parent_tag:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7853
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7854
    iput-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    .line 7855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    .line 7857
    iget-object v0, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7858
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 7859
    iget-object v1, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;J)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 7860
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 7861
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    .line 7862
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_1

    .line 7864
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    iget-wide v1, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    const/4 v1, 0x0

    .line 7865
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7867
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7868
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    .line 7870
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->closeKeyboardOrEmoji()Z

    return-void

    .line 7873
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;J)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    .line 7874
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    .line 7875
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 7876
    iget-wide v4, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 7877
    iput v12, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 7878
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 7879
    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7880
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 7881
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    .line 7882
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 7885
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    .line 7886
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ReactionSent:I

    .line 7887
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ViewInChat:I

    .line 7888
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$38$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$38$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$38;)V

    .line 7886
    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/16 v1, 0x1388

    .line 7890
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 7892
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7893
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    .line 7895
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->closeKeyboardOrEmoji()Z

    return-void
.end method


# virtual methods
.method public synthetic allowLongPress()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$allowLongPress(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawBackground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 1

    .line 7906
    iget-object p6, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p6}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetbitmapShaderTools(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p6

    neg-float p4, p4

    neg-float p5, p5

    iget-object p7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 7907
    invoke-virtual {p7}, Landroid/view/View;->getMeasuredWidth()I

    move-result p7

    int-to-float p7, p7

    add-float/2addr p7, p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 7908
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p5

    .line 7906
    invoke-virtual {p6, p4, p5, p7, v0}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_0

    .line 7910
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetbitmapShaderTools(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 7911
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 7913
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetbitmapShaderTools(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 7914
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public needEnterText()Z
    .locals 1

    .line 7920
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->needEnterText()Z

    move-result v0

    return v0
.end method

.method public onEmojiWindowDismissed()V
    .locals 2

    .line 7925
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 6

    xor-int/lit8 v5, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 7822
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$38;->onReactionClickedInternal(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    return-void
.end method

.method onReactionClickedInternal(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V
    .locals 6

    if-eqz p5, :cond_0

    .line 7826
    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$38$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$38$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$38;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    invoke-static {p5, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mapplyMessageToChat(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 7831
    :cond_1
    iget-object p1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    iget-object p2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$38;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide p2

    new-instance p4, Lorg/telegram/ui/Stories/PeerStoriesView$38$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, v4, v3, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$38$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$38;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V

    const/4 p5, 0x1

    invoke-static {p1, p2, p3, p5, p4}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method
