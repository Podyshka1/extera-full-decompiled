.class public abstract Lorg/telegram/ui/Components/Reactions/ReactionsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$Uw3SnrBPny24_CN5weoyOz4uxzo(Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->create(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 3

    .line 148
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v2, p5}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->createAnimatedEmojiSpan(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Long;Landroid/graphics/Paint$FontMetricsInt;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p0

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p1, p5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const-string p1, "e"

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->createSpannableText(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p0

    invoke-interface {p3, p0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    if-eqz p4, :cond_0

    .line 154
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p4, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    :cond_0
    return-void
.end method

.method public static addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    .line 159
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0, p5}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->createAnimatedEmojiSpan(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Long;Landroid/graphics/Paint$FontMetricsInt;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p5

    .line 160
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const-string p1, "e"

    invoke-static {p5, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->createSpannableText(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    if-eqz p4, :cond_0

    .line 164
    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p4, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    :cond_0
    return-void
.end method

.method public static applyForStoryViews(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/tl/TL_stories$StoryViews;)V
    .locals 5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 87
    :goto_0
    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    .line 88
    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    if-eqz p0, :cond_1

    .line 90
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4, p0}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->compare(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    sub-int/2addr v4, v3

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    if-gtz v4, :cond_1

    .line 93
    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 100
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->compare(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    add-int/2addr v1, v3

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    move v1, v3

    :cond_2
    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 107
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCount;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_reactionCount;-><init>()V

    .line 108
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    .line 109
    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 110
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static compare(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;)Z
    .locals 4

    .line 48
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 51
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static compare(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z
    .locals 6

    .line 38
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    iget-wide v4, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 41
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v0, :cond_1

    iget-wide v4, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    cmp-long p0, p0, v4

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static createAnimatedEmojiSpan(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Long;Landroid/graphics/Paint$FontMetricsInt;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    .line 139
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p1, p0, v0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;FLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    .line 141
    :cond_0
    new-instance p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    move-object p1, p0

    .line 143
    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result p0

    iput p0, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    return-object p1
.end method

.method public static createSpannableText(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3

    .line 131
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static reactionToCharSequence(Lorg/telegram/tgnet/TLRPC$Reaction;)Ljava/lang/CharSequence;
    .locals 4

    .line 71
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    return-object p0

    .line 74
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "d"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    const/4 p0, 0x0

    invoke-direct {v1, v2, v3, p0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    .line 79
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static showLimitReachedDialogForReactions(JILorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 6

    .line 115
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/16 v3, 0x15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 120
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setRequiredLvl(I)V

    const/4 p2, 0x1

    .line 121
    invoke-virtual {v0, p3, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 122
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    .line 123
    new-instance p2, Lorg/telegram/ui/Components/Reactions/ReactionsUtils$$ExternalSyntheticLambda0;

    invoke-direct {p2, v1, p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showStatisticButtonInLink(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startPreloadReactions(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;)Ljava/util/List;
    .locals 8

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    .line 170
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 173
    :cond_0
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 174
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    .line 175
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-ge v2, p1, :cond_7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 177
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v4, :cond_3

    .line 178
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    .line 179
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-nez v3, :cond_2

    goto :goto_0

    .line 183
    :cond_2
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    .line 184
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v5

    invoke-static {v4, v5, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    goto :goto_1

    .line 185
    :cond_3
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v4, :cond_4

    .line 186
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    .line 187
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v5

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_1

    .line 190
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    goto :goto_0

    .line 194
    :cond_5
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsAll;

    if-eqz p0, :cond_7

    .line 195
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-nez p1, :cond_6

    goto :goto_2

    .line 199
    :cond_6
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    .line 200
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v3

    invoke-static {v2, v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    .line 201
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    goto :goto_2

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static stopPreloadReactions(Ljava/util/List;)V
    .locals 2

    .line 209
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toTLReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/tgnet/TLRPC$Reaction;
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;-><init>()V

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;-><init>()V

    .line 64
    iget-wide v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    return-object v0
.end method
