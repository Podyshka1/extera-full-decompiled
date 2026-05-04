.class public abstract Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReactionButton"
.end annotation


# instance fields
.field public animateFromWidth:I

.field public animateFromX:I

.field public animateFromY:I

.field public animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field animatedEmojiDrawableColor:I

.field public animationType:I

.field public attached:Z

.field avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

.field backgroundColor:I

.field public final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final bounds:Landroid/graphics/RectF;

.field public choosen:Z

.field public choosenOrder:I

.field public count:I

.field public countText:Ljava/lang/String;

.field public counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

.field private final currentAccount:I

.field public drawImage:Z

.field drawingImageRect:Landroid/graphics/Rect;

.field public fromBackgroundColor:I

.field public fromTagDotColor:I

.field public fromTextColor:I

.field public hasName:Z

.field public height:I

.field public imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public inGroup:Z

.field isSelected:Z

.field private final isSmall:Z

.field public isTag:Z

.field public key:Ljava/lang/String;

.field public lastDrawnBackgroundColor:I

.field public lastDrawnTagDotColor:I

.field public lastDrawnTextColor:I

.field public lastImageDrawn:Z

.field private lastScrimProgressDirection:Z

.field public name:Ljava/lang/String;

.field public paid:Z

.field private final parentView:Landroid/view/View;

.field private particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field public previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field public previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

.field private final reactionCount:Lorg/telegram/tgnet/TLRPC$ReactionCount;

.field public realCount:I

.field private final rect2:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field serviceBackgroundColor:I

.field serviceTextColor:I

.field private starDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private final supercallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final tagPath:Landroid/graphics/Path;

.field textColor:I

.field public textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field public top:I

.field users:Ljava/util/ArrayList;

.field visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public wasDrawn:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static bridge synthetic -$$Nest$fgetisSmall(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSmall:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparentView(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactionCount(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reactionCount:Lorg/telegram/tgnet/TLRPC$ReactionCount;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;ILandroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    .line 872
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x1

    .line 813
    iput-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    .line 823
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    .line 982
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounds:Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->rect2:Landroid/graphics/RectF;

    .line 983
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->tagPath:Landroid/graphics/Path;

    .line 1459
    new-instance v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton$1;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->supercallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 873
    iput v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->currentAccount:I

    .line 874
    iput-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    .line 875
    new-instance v8, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v8, v3}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    move-object/from16 v8, p7

    .line 876
    iput-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 877
    iput-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-eqz v1, :cond_0

    .line 879
    iget-object v8, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    .line 881
    :cond_0
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v8, :cond_1

    .line 882
    new-instance v8, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v8}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 884
    :cond_1
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 885
    new-instance v8, Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v10, 0x0

    invoke-direct {v8, v3, v9, v10}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;-><init>(Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    .line 887
    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-nez v8, :cond_3

    .line 888
    new-instance v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v10, v6, v6, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v14, 0x140

    .line 889
    sget-object v16, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v11, 0x3ecccccd    # 0.4f

    const-wide/16 v12, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 890
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v10, 0x41500000    # 13.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 891
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 892
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 893
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 895
    :cond_3
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-nez v8, :cond_4

    .line 896
    new-instance v8, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v8, v9, v9, v9, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZZ)V

    iput-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v10, 0x41400000    # 12.0f

    .line 897
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 898
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 899
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 900
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 901
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v8, 0x3eb33333    # 0.35f

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setScaleProperty(F)V

    .line 903
    :cond_4
    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reactionCount:Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 904
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 905
    invoke-static {v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 906
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    .line 907
    iget-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    iput-boolean v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    .line 908
    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    .line 909
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen_order:I

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosenOrder:I

    move/from16 v7, p5

    .line 910
    iput-boolean v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSmall:Z

    .line 911
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionPaid;

    if-eqz v8, :cond_5

    .line 912
    const-string/jumbo v7, "stars"

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    goto :goto_0

    .line 913
    :cond_5
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v8, :cond_6

    .line 914
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    goto :goto_0

    .line 915
    :cond_6
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v8, :cond_12

    .line 916
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    .line 920
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 921
    iget-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    .line 922
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput-boolean v9, v3, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateVisibility:Z

    .line 923
    iput-boolean v6, v3, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->shortFormat:Z

    .line 925
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 v7, 0x2

    if-eqz v3, :cond_d

    .line 926
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean v8, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v8, :cond_b

    .line 927
    iput-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    const/16 v3, 0x2008

    .line 928
    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v1, :cond_7

    .line 929
    iget-object v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->starDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v3, :cond_7

    .line 930
    iput-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->starDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 932
    :cond_7
    new-instance v3, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v8, Lorg/telegram/messenger/R$raw;->star_reaction_click:I

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const-string/jumbo v12, "star_reaction_click"

    invoke-direct {v3, v8, v12, v11, v10}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->starDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 934
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->starDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 936
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lorg/telegram/messenger/R$drawable;->star_reaction:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    if-eqz v1, :cond_9

    .line 943
    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v3

    if-ne v3, v7, :cond_a

    const/16 v3, 0x12

    goto :goto_3

    :cond_a
    const/16 v3, 0x8

    :goto_3
    invoke-direct {v1, v6, v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    :goto_4
    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    goto :goto_5

    .line 944
    :cond_b
    iget-object v1, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 945
    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v15, :cond_d

    .line 948
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v8}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v13

    .line 949
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const-string/jumbo v14, "webp"

    const/16 v16, 0x1

    const-string v12, "40_40_lastreactframe"

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    .line 951
    :cond_c
    iget-wide v10, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-eqz v1, :cond_d

    .line 952
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getCacheType()I

    move-result v3

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v1, v3, v2, v10, v11}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 956
    :cond_d
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v1, v3, v8}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setSize(II)V

    .line 957
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgettextPaint()Landroid/text/TextPaint;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    if-eqz v5, :cond_e

    .line 959
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getSavedTagName(Lorg/telegram/tgnet/TLRPC$Reaction;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->name:Ljava/lang/String;

    .line 960
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v6

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    .line 962
    :cond_e
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    const-string v2, ""

    if-eqz v1, :cond_10

    .line 963
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 964
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawTextWithCounter()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 965
    iget v1, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->countText:Ljava/lang/String;

    .line 966
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    goto :goto_6

    .line 968
    :cond_f
    iput-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->countText:Ljava/lang/String;

    .line 969
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v1, v9, v9}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    goto :goto_6

    .line 972
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v1, :cond_11

    .line 973
    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 975
    :cond_11
    iget v1, v4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->countText:Ljava/lang/String;

    .line 976
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 978
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setType(I)V

    .line 979
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v2, 0x3

    iput v2, v1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    return-void

    .line 918
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private drawImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 7

    .line 1259
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1261
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 1263
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p2, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawableColor:I

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    if-eq v1, v2, :cond_2

    .line 1264
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    iput v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawableColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1266
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    const/4 v3, 0x1

    if-nez p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    if-gt p2, v3, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    if-nez p2, :cond_a

    .line 1267
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1270
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_5

    .line 1274
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    cmpg-float p3, p3, v2

    if-gtz p3, :cond_7

    .line 1276
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1277
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->removeImageReceiver()V

    goto :goto_3

    .line 1280
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result p3

    if-nez p3, :cond_7

    .line 1282
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result p3

    const v1, 0x3da3d70a    # 0.08f

    sub-float/2addr p3, v1

    cmpg-float v1, p3, v2

    if-gtz v1, :cond_6

    .line 1284
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1285
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->removeImageReceiver()V

    goto :goto_2

    .line 1287
    :cond_6
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1289
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    move v1, v3

    .line 1292
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result p3

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr p3, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    mul-float/2addr v5, v4

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual {p2, p3, v2, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1293
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    if-eqz v1, :cond_9

    .line 1296
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1298
    :cond_9
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastImageDrawn:Z

    return-void

    .line 1300
    :cond_a
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1301
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1302
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastImageDrawn:Z

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 2

    .line 985
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-eqz v0, :cond_2

    .line 986
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounds:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 987
    :cond_0
    invoke-virtual {p3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 988
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounds:Landroid/graphics/RectF;

    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->rect2:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->tagPath:Landroid/graphics/Path;

    invoke-static {p2, p3, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fillTagPath(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 990
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->tagPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 992
    :cond_2
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    const/4 v0, 0x1

    .line 1334
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attached:Z

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1338
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v0, :cond_1

    .line 1339
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onAttachedToWindow()V

    .line 1341
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1342
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public attachPreview(Landroid/view/View;)V
    .locals 8

    .line 1404
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 1405
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    .line 1406
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz v0, :cond_4

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 1409
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1410
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v6, :cond_4

    .line 1411
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_4

    .line 1413
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v4

    .line 1414
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 p1, 0x7

    .line 1415
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1416
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1417
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1418
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 1419
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 1420
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 1421
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 1422
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string v3, "140_140"

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 1424
    :cond_3
    iget-wide v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1425
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const/16 v4, 0x18

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 1426
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public detach()V
    .locals 2

    const/4 v0, 0x0

    .line 1347
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attached:Z

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 1349
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1351
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v0, :cond_1

    .line 1352
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDetachedFromWindow()V

    .line 1354
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1355
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 1357
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detachPreview()V

    return-void
.end method

.method public detachPreview()V
    .locals 3

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1450
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1451
    iput-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-void

    .line 1452
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    .line 1454
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 1455
    iput-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_3
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFFFZZF)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    const/4 v7, 0x1

    .line 1038
    iput-boolean v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->wasDrawn:Z

    .line 1039
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1040
    :goto_0
    iget-boolean v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSmall:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    .line 1041
    invoke-virtual {v8, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1042
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    float-to-int v2, v2

    float-to-int v3, v3

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v2, v3, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1043
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 1044
    invoke-virtual {v8, v10}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1045
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    return-void

    .line 1049
    :cond_1
    iget-boolean v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    const/4 v11, -0x1

    const v12, -0x1754fe

    if-eqz v9, :cond_8

    .line 1050
    iget-boolean v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    if-eqz v9, :cond_2

    .line 1051
    iput v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 1052
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    .line 1053
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    .line 1054
    iput v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    goto/16 :goto_7

    .line 1056
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v9

    if-eqz v9, :cond_3

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonBackground:I

    goto :goto_1

    :cond_3
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    :goto_1
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 1057
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v9

    if-eqz v9, :cond_4

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonTextSelected:I

    goto :goto_2

    :cond_4
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonTextSelected:I

    :goto_2
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    .line 1058
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    instance-of v9, v9, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v9, :cond_5

    .line 1059
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_reactionServiceButtonTextSelected:I

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    .line 1060
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_reactionServiceButtonBackgroundSelected:I

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    goto/16 :goto_7

    .line 1062
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v9

    if-eqz v9, :cond_6

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonBackground:I

    goto :goto_3

    :cond_6
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    .line 1063
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v9

    if-eqz v9, :cond_7

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    goto :goto_4

    :cond_7
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_4
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    goto :goto_7

    .line 1067
    :cond_8
    iget-boolean v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    if-eqz v9, :cond_9

    .line 1068
    iput v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    const v9, 0x40e8ab02

    .line 1069
    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 1070
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    .line 1071
    iput v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    goto :goto_7

    .line 1073
    :cond_9
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v9

    if-eqz v9, :cond_a

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonText:I

    goto :goto_5

    :cond_a
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonText:I

    :goto_5
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    .line 1074
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v9

    if-eqz v9, :cond_b

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonBackground:I

    goto :goto_6

    :cond_b
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    :goto_6
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 1075
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3e1fbe77    # 0.156f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v9, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 1076
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    .line 1077
    iput v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    .line 1080
    :goto_7
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->updateColors(F)V

    .line 1081
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgettextPaint()Landroid/text/TextPaint;

    move-result-object v9

    iget v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1082
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v9, :cond_c

    .line 1083
    iget v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 1085
    :cond_c
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgetpaint()Landroid/graphics/Paint;

    move-result-object v9

    iget v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1086
    iget-boolean v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-eqz v9, :cond_d

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawTagDot()Z

    move-result v9

    if-eqz v9, :cond_d

    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTagDotColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-nez v9, :cond_d

    move v9, v7

    goto :goto_8

    :cond_d
    move v9, v10

    :goto_8
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v12, v5, v11

    if-eqz v12, :cond_e

    .line 1089
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgettextPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgettextPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v5

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1090
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgetpaint()Landroid/graphics/Paint;

    move-result-object v12

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgetpaint()Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v5

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_e
    if-eqz v8, :cond_f

    .line 1093
    invoke-virtual {v8, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :cond_f
    const/4 v12, 0x0

    cmpl-float v13, p8, v12

    if-lez v13, :cond_11

    .line 1096
    iget-boolean v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastScrimProgressDirection:Z

    if-eq v14, v6, :cond_11

    if-eqz v6, :cond_10

    .line 1098
    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v21, 0x3fcccccd    # 1.6f

    sget-object v22, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v16, 0x3f19999a    # 0.6f

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x28a

    invoke-virtual/range {v15 .. v22}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJFLandroid/animation/TimeInterpolator;)V

    .line 1099
    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    invoke-static {v15, v10}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 1100
    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    move/from16 v16, v11

    move/from16 v17, v12

    int-to-long v11, v15

    const/16 v15, 0x2c

    invoke-static {v11, v12, v15}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_9

    :cond_10
    move/from16 v16, v11

    move/from16 v17, v12

    .line 1102
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v24, 0x3fcccccd    # 1.6f

    sget-object v25, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v19, 0x3f19999a    # 0.6f

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x140

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v25}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJFLandroid/animation/TimeInterpolator;)V

    .line 1103
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    invoke-static {v12, v10}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 1105
    :goto_9
    iput-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastScrimProgressDirection:Z

    goto :goto_a

    :cond_11
    move/from16 v16, v11

    move/from16 v17, v12

    .line 1108
    :goto_a
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v11, 0x3dcccccd    # 0.1f

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v6

    .line 1110
    iget v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    const/high16 v14, 0x41000000    # 8.0f

    const/high16 v18, 0x41a00000    # 20.0f

    if-lez v13, :cond_14

    const/high16 p7, 0x40c00000    # 6.0f

    .line 1111
    iget-boolean v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-nez v12, :cond_13

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v12, :cond_13

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v12, :cond_13

    .line 1112
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v12, :cond_12

    move/from16 v12, p7

    goto :goto_b

    :cond_12
    const/high16 v12, 0x40800000    # 4.0f

    :goto_b
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 1113
    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move/from16 p8, v14

    iget v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    goto :goto_d

    :cond_13
    move/from16 p8, v14

    goto :goto_c

    :cond_14
    move/from16 p8, v14

    const/high16 p7, 0x40c00000    # 6.0f

    :goto_c
    cmpl-float v12, v4, v16

    if-eqz v12, :cond_15

    .line 1114
    iget v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_15

    int-to-float v11, v11

    mul-float/2addr v11, v4

    .line 1115
    iget v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromWidth:I

    int-to-float v12, v12

    sub-float v14, v16, v4

    mul-float/2addr v12, v14

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 1117
    :cond_15
    :goto_d
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v11, v11

    add-float v14, v2, v11

    const/high16 v19, 0x40800000    # 4.0f

    iget v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v15, v15

    add-float/2addr v15, v3

    invoke-virtual {v12, v2, v3, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    cmpl-float v14, v6, v16

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v14, :cond_16

    .line 1120
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    div-float/2addr v11, v15

    add-float/2addr v11, v2

    .line 1121
    iget v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v14, v14

    div-float/2addr v14, v15

    add-float/2addr v14, v3

    invoke-virtual {v1, v6, v6, v11, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v6, v7

    goto :goto_e

    :cond_16
    move v6, v10

    .line 1123
    :goto_e
    iget v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v11, v11

    invoke-static {v11, v7}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v7

    int-to-float v7, v7

    .line 1124
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v11

    cmpl-float v11, v11, v17

    if-lez v11, :cond_19

    .line 1125
    const-string v11, "paintChatActionBackground"

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v14}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v11

    .line 1126
    const-string v14, "paintChatActionBackgroundDarken"

    move/from16 v20, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v15}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v14

    .line 1127
    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    .line 1128
    invoke-virtual {v14}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    move/from16 v22, v6

    int-to-float v6, v15

    mul-float/2addr v6, v5

    .line 1129
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v23

    mul-float v6, v6, v23

    float-to-int v6, v6

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v6, v10

    mul-float/2addr v6, v5

    .line 1130
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v23

    mul-float v6, v6, v23

    float-to-int v6, v6

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1131
    invoke-direct {v0, v1, v12, v7, v11}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 1132
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v6, :cond_17

    invoke-interface {v6}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_f

    :cond_17
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1133
    :goto_f
    invoke-direct {v0, v1, v12, v7, v14}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 1135
    :cond_18
    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1136
    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_10

    :cond_19
    move/from16 v22, v6

    move/from16 v20, v15

    :goto_10
    if-eqz p6, :cond_1a

    .line 1138
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v6

    cmpg-float v6, v6, v16

    if-gez v6, :cond_1a

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    instance-of v10, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v10, :cond_1a

    .line 1139
    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundDrawable(Z)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 1140
    iget-boolean v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-nez v10, :cond_1a

    .line 1141
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v1, v12, v7, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1a
    if-eqz v9, :cond_1b

    .line 1145
    iget v6, v12, Landroid/graphics/RectF;->right:F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    iput v6, v12, Landroid/graphics/RectF;->right:F

    const/16 v6, 0xff

    const/16 v10, 0x1f

    .line 1146
    invoke-virtual {v1, v12, v6, v10}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1147
    iget v6, v12, Landroid/graphics/RectF;->right:F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    iput v6, v12, Landroid/graphics/RectF;->right:F

    .line 1149
    :cond_1b
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-eqz v6, :cond_1c

    const/16 v6, 0x2008

    invoke-static {v6}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v6

    .line 1150
    :cond_1c
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgetpaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-direct {v0, v1, v12, v7, v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 1151
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-eqz v6, :cond_1e

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawTagDot()Z

    move-result v6

    if-eqz v6, :cond_1e

    if-eqz v9, :cond_1d

    .line 1154
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgetcutTagPaint()Landroid/graphics/Paint;

    move-result-object v6

    goto :goto_11

    .line 1156
    :cond_1d
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgettagPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTagDotColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1157
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgettagPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgettagPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1158
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgettagPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 1160
    :goto_11
    iget v7, v12, Landroid/graphics/RectF;->right:F

    const v10, 0x41066666    # 8.4f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v7, v10

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    const v11, 0x402a3d71    # 2.66f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v1, v7, v10, v11, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1e
    if-eqz v9, :cond_1f

    .line 1163
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_1f
    if-eqz v8, :cond_23

    .line 1168
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    if-eqz v6, :cond_20

    const/high16 v6, 0x41b00000    # 22.0f

    .line 1169
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 1170
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_12

    .line 1171
    :cond_20
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v6, :cond_21

    const/high16 v6, 0x41c00000    # 24.0f

    .line 1172
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 1173
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 1174
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_12

    .line 1176
    :cond_21
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 1177
    invoke-static/range {p8 .. p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v10, 0x0

    .line 1178
    invoke-virtual {v8, v10}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1180
    :goto_12
    iget v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    sub-int/2addr v8, v6

    int-to-float v8, v8

    div-float v8, v8, v20

    float-to-int v8, v8

    .line 1181
    iget-boolean v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-eqz v9, :cond_22

    .line 1182
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v7, v9

    .line 1184
    :cond_22
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    float-to-int v10, v2

    add-int/2addr v10, v7

    float-to-int v7, v3

    add-int/2addr v7, v8

    add-int v8, v10, v6

    add-int/2addr v6, v7

    invoke-virtual {v9, v10, v7, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1185
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v6, v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 1189
    :cond_23
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v7, 0x437f0000    # 255.0f

    const/16 v8, 0x8

    const/16 v9, 0x9

    const/high16 v10, 0x41200000    # 10.0f

    if-eqz v6, :cond_26

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isNotEmpty()F

    move-result v6

    cmpl-float v6, v6, v17

    if-lez v6, :cond_26

    .line 1190
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1191
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    if-eqz v6, :cond_24

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawTagDot()Z

    move-result v6

    if-nez v6, :cond_24

    move v6, v10

    goto :goto_14

    :cond_24
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    if-eqz v6, :cond_25

    move v6, v9

    goto :goto_13

    :cond_25
    move v6, v8

    :goto_13
    int-to-float v6, v6

    :goto_14
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1192
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iget v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v14, v11, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 1193
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1194
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v11, v5, v7

    float-to-int v11, v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 1195
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1196
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v6

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isNotEmpty()F

    move-result v12

    mul-float/2addr v11, v12

    add-float v12, v6, v11

    goto :goto_15

    :cond_26
    move/from16 v12, v17

    :goto_15
    const/high16 v6, 0x40a00000    # 5.0f

    if-lez v13, :cond_2a

    .line 1198
    iget-boolean v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-nez v11, :cond_2a

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v11, :cond_2a

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v11, :cond_2a

    .line 1199
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1200
    iget-boolean v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    if-eqz v11, :cond_27

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawTagDot()Z

    move-result v11

    if-nez v11, :cond_27

    move v8, v10

    goto :goto_16

    :cond_27
    iget-boolean v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    if-eqz v11, :cond_28

    move v8, v9

    :cond_28
    int-to-float v8, v8

    :goto_16
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v9, :cond_29

    goto :goto_17

    :cond_29
    move/from16 v6, v20

    :goto_17
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v8, v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1201
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v14, v8, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 1202
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1203
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->scrimPreviewCounterDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 1204
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1a

    :cond_2a
    const/4 v14, 0x0

    .line 1205
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    if-eqz v7, :cond_2f

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawCounter()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1206
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1207
    iget-boolean v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    if-eqz v7, :cond_2b

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawTagDot()Z

    move-result v7

    if-nez v7, :cond_2b

    move v7, v10

    goto :goto_18

    :cond_2b
    iget-boolean v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    if-eqz v7, :cond_2c

    move v8, v9

    :cond_2c
    int-to-float v7, v8

    :goto_18
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v8, :cond_2d

    goto :goto_19

    :cond_2d
    move/from16 v6, v20

    :goto_19
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    add-float/2addr v7, v12

    iget-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    if-eqz v6, :cond_2e

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    move v14, v6

    :cond_2e
    int-to-float v6, v14

    add-float/2addr v7, v6

    invoke-virtual {v1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1208
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1209
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1212
    :cond_2f
    :goto_1a
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-nez v6, :cond_30

    .line 1213
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v6, :cond_30

    .line 1214
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1215
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1216
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AvatarsDrawable;->setAlpha(F)V

    .line 1217
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarsDrawable;->setTransitionProgress(F)V

    .line 1218
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 1219
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_30
    if-eqz v22, :cond_31

    .line 1224
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_31
    return-void
.end method

.method protected drawCounter()Z
    .locals 3

    .line 1001
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    if-nez v2, :cond_1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v0, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public drawOverlay(Landroid/graphics/Canvas;FFFFZ)Z
    .locals 3

    .line 1009
    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/4 p5, 0x0

    if-nez p4, :cond_0

    return p5

    :cond_0
    const/16 p4, 0x2008

    .line 1010
    invoke-static {p4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p4

    if-eqz p4, :cond_4

    const/high16 p4, 0x20000

    invoke-static {p4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p4

    if-nez p4, :cond_1

    goto/16 :goto_0

    .line 1012
    :cond_1
    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget p5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float p5, p5

    add-float/2addr p5, p2

    iget p6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float p6, p6

    add-float/2addr p6, p3

    invoke-virtual {p4, p2, p3, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1013
    iget p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    .line 1015
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object p3, p3, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1016
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object p3, p3, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    const/high16 p5, 0x40800000    # 4.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    neg-int p6, p6

    int-to-float p6, p6

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    neg-int p5, p5

    int-to-float p5, p5

    invoke-virtual {p3, p6, p5}, Landroid/graphics/RectF;->inset(FF)V

    .line 1017
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object p5, p3, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p3, p5}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    .line 1018
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {p3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1019
    iget-object p5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    if-eqz p5, :cond_2

    .line 1020
    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    .line 1022
    :cond_2
    iget-object p5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget p6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    const/16 v0, 0xff

    invoke-static {p6, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p6

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    invoke-static {v2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v1

    invoke-static {p6, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p6

    invoke-virtual {p5, p1, p6}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    .line 1024
    iget-boolean p5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    if-eqz p5, :cond_3

    .line 1025
    iget-object p5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->tagPath:Landroid/graphics/Path;

    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 1026
    iget-object p5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->tagPath:Landroid/graphics/Path;

    sget-object p6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p5, p4, p2, p2, p6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1028
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1029
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->tagPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1030
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget p4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    invoke-virtual {p2, p1, p4}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    .line 1031
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return p3

    :cond_4
    :goto_0
    return p5
.end method

.method public drawPreview(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1433
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 1434
    invoke-virtual {v0, p3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 1435
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1436
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_0

    .line 1437
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1438
    iget v1, p3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    float-to-int p3, p3

    invoke-virtual {v0, v1, v2, v3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1439
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 1440
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->previewAnimatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 1443
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected drawTagDot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected drawTextWithCounter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCacheType()I
    .locals 1

    .line 866
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method protected getDrawServiceShaderBackground()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isOutOwner()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected removeImageReceiver()V
    .locals 0

    return-void
.end method

.method public setUsers(Ljava/util/ArrayList;)V
    .locals 5

    .line 1307
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 1309
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->-$$Nest$sfgetusersComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1310
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1311
    new-instance v0, Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const-wide/16 v2, 0xfa

    .line 1312
    iput-wide v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionDuration:J

    .line 1313
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 1314
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setSize(I)V

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    iput v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    const/high16 v2, 0x41b00000    # 22.0f

    .line 1317
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setAvatarsTextSize(I)V

    .line 1319
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attached:Z

    if-eqz v0, :cond_1

    .line 1320
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onAttachedToWindow()V

    :cond_1
    move v0, v1

    .line 1322
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 1326
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->currentAccount:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1328
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(Z)V

    :cond_4
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    .line 1365
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    if-eqz v0, :cond_2

    .line 1368
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1370
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->restart(Z)Z

    return-void

    .line 1372
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1374
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    :cond_2
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    .line 1385
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    if-eqz v0, :cond_2

    .line 1388
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1390
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    return-void

    .line 1392
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1394
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    :cond_2
    return-void
.end method

.method protected updateColors(F)V
    .locals 4

    .line 1229
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTextColor:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    .line 1230
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromBackgroundColor:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    .line 1231
    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTagDotColor:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x5affffff

    :goto_0
    invoke-static {v1, v0, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTagDotColor:I

    return-void
.end method
