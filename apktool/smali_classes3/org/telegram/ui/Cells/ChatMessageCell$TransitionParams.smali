.class public Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransitionParams"
.end annotation


# instance fields
.field public animateBackgroundBoundsInner:Z

.field public animateBackgroundWidth:Z

.field animateBotButtonsChanged:Z

.field public animateBottomActionPadding:Z

.field public animateBottomActionPaddingFrom:I

.field public animateBottomActionText:Z

.field private animateButton:Z

.field public animateChange:Z

.field public animateChangeProgress:F

.field private animateCommentArrowX:I

.field private animateCommentDrawUnread:Z

.field private animateCommentUnreadX:I

.field private animateCommentX:F

.field private animateComments:Z

.field private animateCommentsLayout:Landroid/text/StaticLayout;

.field public animateDrawAvatar:Z

.field public animateDrawBackground:Z

.field private animateDrawCommentNumber:Z

.field public animateDrawNameLayout:Z

.field public animateDrawTopic:Z

.field public animateDrawingSideMenuEnabled:Z

.field public animateDrawingTimeAlpha:Z

.field private animateEditedEnter:Z

.field private animateEditedLayout:Landroid/text/StaticLayout;

.field private animateEditedWidthDiff:I

.field public animateExpandedQuotes:Z

.field public animateExpandedQuotesFrom:Ljava/util/HashSet;

.field public animateFactCheck:Z

.field public animateFactCheckExpanded:Z

.field public animateFactCheckHeight:Z

.field public animateFactCheckHeightFrom:I

.field animateForwardNameWidth:I

.field animateForwardNameX:F

.field public animateForwardedLayout:Z

.field public animateForwardedNamesOffset:I

.field private animateFromButtonX:F

.field private animateFromButtonY:F

.field public animateFromLinkPreviewHeight:I

.field public animateFromLinkPreviewY:I

.field private animateFromMediaOffsetY:I

.field public animateFromRecommendationsExpanded:Z

.field private animateFromReplyTextHeight:F

.field public animateFromReplyY:F

.field public animateFromRoundVideoDotY:F

.field public animateFromTextY:F

.field public animateFromTimeX:I

.field public animateFromTimeXPinned:F

.field private animateFromTimeXReplies:F

.field private animateFromTimeXViews:F

.field public animateFromWidthForButton:I

.field public animateLinkAbove:Z

.field public animateLinkPreviewHeight:Z

.field public animateLinkPreviewY:Z

.field public animateLocationIsExpired:Z

.field public animateMediaAbove:Z

.field private animateMediaOffsetY:Z

.field public animateMessageText:Z

.field public animateMonoforumPadding:Z

.field public animateMonoforumPaddingFrom:I

.field private animateNameX:F

.field public animateNamesOffset:Z

.field public animateNamesOffsetFrom:I

.field private animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animateOutAnimateEmojiReply:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animateOutCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

.field private animateOutTextBlocks:Ljava/util/ArrayList;

.field private animateOutTextXOffset:F

.field private animatePinned:Z

.field public animatePlayingRound:Z

.field public animateRadius:Z

.field public animateRecommendationsExpanded:Z

.field animateReplaceCaptionLayout:Z

.field private animateReplies:Z

.field private animateRepliesLayout:Landroid/text/StaticLayout;

.field private animateReplyTextLayout:Landroid/text/StaticLayout;

.field public animateReplyTextOffset:F

.field public animateReplyY:Z

.field public animateRoundVideoDotY:Z

.field private animateShouldDrawMenuDrawable:Z

.field private animateShouldDrawTimeOnMedia:Z

.field private animateSign:Z

.field public animateSmallImage:Z

.field public animateStarsPriceText:Z

.field public animateStarsPriceTopPadding:Z

.field public animateStarsPriceTopPaddingFrom:I

.field public animateSummaryReply:Z

.field public animateTextY:Z

.field private animateTimeLayout:Landroid/text/StaticLayout;

.field private animateTimeWidth:I

.field public animateTitleLayout:Landroid/text/StaticLayout;

.field private animateTitleLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field public animateToImageH:F

.field public animateToImageW:F

.field public animateToImageX:F

.field public animateToImageY:F

.field public animateToRadius:[I

.field private animateTotalCommentWidth:I

.field public animateUseTranscribeButton:Z

.field private animateViewsLayout:Landroid/text/StaticLayout;

.field public animateWidthForButton:Z

.field public animatingForwardedNameLayout:[Landroid/text/StaticLayout;

.field public captionEnterProgress:F

.field public captionFromX:F

.field public captionFromY:F

.field public changePinnedBottomProgress:F

.field public deltaBottom:F

.field public deltaLeft:F

.field public deltaRight:F

.field public deltaTop:F

.field public drawPinnedBottomBackground:Z

.field public ignoreAlpha:Z

.field public imageChangeBoundsTransition:Z

.field public imageRoundRadius:[I

.field public lastBackgroundLeft:I

.field public lastBackgroundRight:I

.field public lastButtonX:F

.field public lastButtonY:F

.field public lastCommentArrowX:I

.field public lastCommentDrawUnread:Z

.field public lastCommentLayout:Landroid/text/StaticLayout;

.field public lastCommentUnreadX:I

.field public lastCommentX:F

.field public lastCommentsCount:I

.field public lastDrawAvatar:Z

.field public lastDrawBackground:Z

.field private lastDrawBotButtons:Ljava/util/ArrayList;

.field public lastDrawCommentNumber:Z

.field public lastDrawDocTitleLayout:Landroid/text/StaticLayout;

.field public lastDrawInfoLayout:Landroid/text/StaticLayout;

.field public lastDrawLocationExpireProgress:F

.field public lastDrawLocationExpireText:Ljava/lang/String;

.field public lastDrawNameLayout:Z

.field public lastDrawReplyY:F

.field public lastDrawRoundVideoDotY:F

.field public lastDrawTime:Z

.field public lastDrawTopic:Z

.field public lastDrawingBackgroundRect:Landroid/graphics/Rect;

.field public lastDrawingCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

.field public lastDrawingCaptionX:F

.field public lastDrawingCaptionY:F

.field public lastDrawingEdited:Z

.field public lastDrawingExpandedQuotes:Ljava/util/HashSet;

.field public lastDrawingFactCheck:Z

.field public lastDrawingFactCheckExpanded:Z

.field public lastDrawingFactCheckHeight:I

.field public lastDrawingImageH:F

.field public lastDrawingImageW:F

.field public lastDrawingImageX:F

.field public lastDrawingImageY:F

.field public lastDrawingLinkAbove:Z

.field public lastDrawingLinkPreviewHeight:I

.field public lastDrawingLinkPreviewY:I

.field public lastDrawingMediaAbove:Z

.field public lastDrawingRecommendationsExpanded:Z

.field public lastDrawingReplyTextHeight:F

.field public lastDrawingSideMenuEnabled:Z

.field public lastDrawingSmallImage:Z

.field public lastDrawingSummarized:Z

.field public lastDrawingSummaryReply:Z

.field public lastDrawingTextBlocks:Ljava/util/ArrayList;

.field private lastDrawingTextWidth:I

.field public lastDrawingTextX:F

.field public lastDrawingTextY:F

.field public lastDrawnBottomActionPadding:I

.field public lastDrawnBottomActionText:Z

.field public lastDrawnForwardedName:Z

.field public lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

.field public lastDrawnMonoforumPadding:I

.field public lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

.field public lastDrawnStarsPriceText:Z

.field public lastDrawnStarsPriceTopPadding:I

.field public lastDrawnTitleLayout:Landroid/text/StaticLayout;

.field public lastDrawnTranslated:Z

.field public lastDrawnWidthForButtons:I

.field public lastForwardNameWidth:I

.field public lastForwardNameX:F

.field public lastForwardedNamesOffset:I

.field public lastIsPinned:Z

.field public lastIsPlayingRound:Z

.field public lastLocatinIsExpired:Z

.field public lastMediaOffsetY:I

.field public lastNamesOffset:I

.field public lastRepliesCount:I

.field public lastRepliesLayout:Landroid/text/StaticLayout;

.field public lastReplyTextXOffset:I

.field public lastShouldDrawMenuDrawable:Z

.field public lastShouldDrawTimeOnMedia:Z

.field public lastSignMessage:Ljava/lang/String;

.field public lastStatusDrawableParams:I

.field public lastTextXOffset:F

.field public lastTimeLayout:Landroid/text/StaticLayout;

.field public lastTimeWidth:I

.field public lastTimeX:I

.field public lastTimeXPinned:F

.field private lastTimeXReplies:F

.field private lastTimeXViews:F

.field public lastTopOffset:I

.field public lastTotalCommentWidth:I

.field public lastUseTranscribeButton:Z

.field public lastViewsCount:I

.field public lastViewsLayout:Landroid/text/StaticLayout;

.field public messageEntering:Z

.field private moveCaption:Z

.field public needsStopClipping:Z

.field public photoImageFromCenterX:F

.field public photoImageFromCenterY:F

.field public photoImageFromHeight:F

.field public photoImageFromWidth:F

.field public shouldAnimateTimeX:Z

.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

.field public toDeltaLeft:F

.field public toDeltaRight:F

.field public transformGroupToSingleMessage:Z

.field private transitionBotButtons:Ljava/util/ArrayList;

.field public updatePhotoImageX:Z

.field public wasDraw:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetanimateButton(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateButton:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateCommentArrowX(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentArrowX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateCommentDrawUnread(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentDrawUnread:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateCommentUnreadX(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentUnreadX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateCommentX(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateComments(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateComments:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateCommentsLayout(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentsLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateDrawCommentNumber(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawCommentNumber:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateEditedEnter(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateEditedLayout(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateEditedWidthDiff(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedWidthDiff:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateFromButtonX(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromButtonX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateFromButtonY(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromButtonY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateFromMediaOffsetY(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromMediaOffsetY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateFromReplyTextHeight(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromReplyTextHeight:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateFromTimeXReplies(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXReplies:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateFromTimeXViews(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXViews:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateMediaOffsetY(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMediaOffsetY:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateNameX(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateNameX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateOutAnimateEmoji(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateOutAnimateEmojiReply(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmojiReply:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateOutCaptionLayout(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateOutTextBlocks(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextBlocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateOutTextXOffset(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextXOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatePinned(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePinned:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateReplies(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplies:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateRepliesLayout(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRepliesLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateReplyTextLayout(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyTextLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateShouldDrawMenuDrawable(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawMenuDrawable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateShouldDrawTimeOnMedia(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawTimeOnMedia:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateSign(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSign:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateTimeLayout(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateTimeWidth(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateTitleLayoutEmoji(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTitleLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateTotalCommentWidth(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTotalCommentWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimateViewsLayout(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Landroid/text/StaticLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateViewsLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmoveCaption(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->moveCaption:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettransitionBotButtons(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transitionBotButtons:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastTimeXReplies(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXReplies:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTimeXViews(Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXViews:F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 26830
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 26906
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageRoundRadius:[I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26907
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionEnterProgress:F

    .line 26914
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->changePinnedBottomProgress:F

    .line 26918
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    .line 26984
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 26985
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    .line 26986
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transitionBotButtons:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 27001
    iput p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastStatusDrawableParams:I

    const/4 p1, 0x2

    .line 27031
    new-array v0, p1, [Landroid/text/StaticLayout;

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    .line 27032
    new-array p1, p1, [Landroid/text/StaticLayout;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatingForwardedNameLayout:[Landroid/text/StaticLayout;

    return-void
.end method


# virtual methods
.method public animateChange()Z
    .locals 19

    move-object/from16 v0, p0

    .line 27208
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 27213
    :cond_0
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->needsStopClipping:Z

    .line 27214
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingSideMenuEnabled:Z

    .line 27215
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSideMenuEnabled:Z

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    const/4 v5, 0x1

    if-eq v1, v4, :cond_1

    .line 27216
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingSideMenuEnabled:Z

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v2

    .line 27220
    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMessageText:Z

    .line 27221
    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-eq v3, v4, :cond_c

    .line 27223
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->textWidth:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextWidth:I

    if-eq v3, v4, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSideMenuEnabled:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    if-eq v3, v4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v5

    .line 27226
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v4, v7, :cond_9

    move v4, v2

    .line 27227
    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_a

    .line 27228
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-nez v7, :cond_3

    move-object v7, v6

    goto :goto_3

    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 27229
    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-nez v8, :cond_4

    move-object v8, v6

    goto :goto_4

    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    if-nez v7, :cond_5

    if-nez v8, :cond_9

    :cond_5
    if-eqz v7, :cond_6

    if-eqz v8, :cond_9

    .line 27230
    :cond_6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    .line 27234
    :cond_7
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v8, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v8, :cond_8

    .line 27235
    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v7, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->replaceLayout(Landroid/text/Layout;Landroid/text/Layout;)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_9
    :goto_5
    move v3, v2

    :cond_a
    if-nez v3, :cond_b

    .line 27243
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMessageText:Z

    .line 27244
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextBlocks:Ljava/util/ArrayList;

    .line 27245
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTextXOffset:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextXOffset:F

    .line 27246
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v2, v3, v4, v1, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 27247
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-static {v2, v1, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move v1, v5

    goto :goto_6

    .line 27250
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 27253
    :cond_c
    :goto_6
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawNameLayout:Z

    .line 27254
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawNameLayout:Z

    if-eq v3, v4, :cond_d

    .line 27255
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawNameLayout:Z

    move v1, v5

    .line 27258
    :cond_d
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawAvatar:Z

    .line 27259
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawNameAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawAvatar:Z

    if-eq v3, v4, :cond_e

    .line 27260
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawAvatar:Z

    move v1, v5

    .line 27263
    :cond_e
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawTopic:Z

    .line 27264
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawTopic(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawTopic:Z

    if-eq v3, v4, :cond_f

    .line 27265
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawTopic:Z

    move v1, v5

    .line 27268
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

    if-eq v3, v4, :cond_12

    if-eqz v3, :cond_10

    .line 27269
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_7

    :cond_10
    move-object v3, v6

    .line 27270
    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_8

    :cond_11
    move-object v4, v6

    .line 27271
    :goto_8
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 27272
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingReplyTextHeight:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromReplyTextHeight:F

    .line 27273
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyTextLayout:Landroid/text/StaticLayout;

    .line 27274
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastReplyTextXOffset:I

    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyTextOffset:F

    .line 27275
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmojiReply:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v12, v5, [Landroid/text/Layout;

    aput-object v1, v12, v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmojiReply:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move v1, v5

    .line 27279
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetedited(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingEdited:Z

    if-nez v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_15

    .line 27280
    const-string v3, "EditedMessage"

    sget v4, Lorg/telegram/messenger/R$string;->EditedMessage:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 27281
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 27282
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_14

    if-nez v4, :cond_13

    .line 27285
    new-instance v7, Landroid/text/StaticLayout;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_timePaint:Landroid/text/TextPaint;

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettimeTextWidth(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v11, v15

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedLayout:Landroid/text/StaticLayout;

    .line 27286
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 27287
    invoke-virtual {v12, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 27288
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v3, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 27289
    new-instance v1, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v12, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 27290
    new-instance v11, Landroid/text/StaticLayout;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_timePaint:Landroid/text/TextPaint;

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettimeTextWidth(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v14, v1, v3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 27291
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->timeWidth:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    sub-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedWidthDiff:I

    goto :goto_9

    .line 27293
    :cond_13
    iput v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedWidthDiff:I

    .line 27294
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedLayout:Landroid/text/StaticLayout;

    .line 27295
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 27297
    :goto_9
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    .line 27298
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    .line 27299
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeX:I

    .line 27300
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->shouldAnimateTimeX:Z

    move v1, v5

    .line 27303
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object v6, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    goto :goto_a

    .line 27304
    :cond_15
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetedited(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingEdited:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_16

    .line 27305
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 27306
    iget v1, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->timeWidth:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    sub-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedWidthDiff:I

    .line 27307
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    .line 27308
    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    .line 27309
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeX:I

    .line 27310
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->shouldAnimateTimeX:Z

    move v1, v5

    .line 27314
    :cond_16
    :goto_a
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawBackground:Z

    .line 27315
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawBackground(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBackground:Z

    if-eq v3, v4, :cond_17

    .line 27316
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawBackground:Z

    move v1, v5

    .line 27320
    :cond_17
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSmallImage:Z

    .line 27321
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetisSmallImage(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSmallImage:Z

    if-eq v3, v4, :cond_18

    .line 27322
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSmallImage:Z

    .line 27323
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageW:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->photoImageFromWidth:F

    .line 27324
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageH:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->photoImageFromHeight:F

    .line 27325
    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageX:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    add-float/2addr v4, v1

    iput v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->photoImageFromCenterX:F

    .line 27326
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageY:F

    div-float/2addr v3, v7

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->photoImageFromCenterY:F

    move v1, v5

    .line 27329
    :cond_18
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMonoforumPadding:Z

    .line 27330
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->topicSeparatorTopPadding:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnMonoforumPadding:I

    if-eq v4, v7, :cond_19

    .line 27331
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->needsStopClipping:Z

    .line 27332
    iput v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMonoforumPaddingFrom:I

    .line 27333
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMonoforumPadding:Z

    move v1, v5

    .line 27337
    :cond_19
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateStarsPriceTopPadding:Z

    .line 27338
    iget v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->starsPriceTopPadding:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnStarsPriceTopPadding:I

    if-eq v4, v7, :cond_1a

    .line 27339
    iput v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateStarsPriceTopPaddingFrom:I

    .line 27340
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateStarsPriceTopPadding:Z

    move v1, v5

    .line 27344
    :cond_1a
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateStarsPriceText:Z

    .line 27345
    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetstarsPriceText(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    if-eqz v3, :cond_1b

    move v3, v5

    goto :goto_b

    :cond_1b
    move v3, v2

    :goto_b
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnStarsPriceText:Z

    if-eq v3, v4, :cond_1c

    .line 27346
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateStarsPriceText:Z

    move v1, v5

    .line 27350
    :cond_1c
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBottomActionPadding:Z

    .line 27351
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->bottomActionPadding:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnBottomActionPadding:I

    if-eq v4, v7, :cond_1d

    .line 27352
    iput v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBottomActionPaddingFrom:I

    .line 27353
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBottomActionPadding:Z

    move v1, v5

    .line 27357
    :cond_1d
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBottomActionText:Z

    .line 27358
    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbottomActionText(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    if-eqz v3, :cond_1e

    move v3, v5

    goto :goto_c

    :cond_1e
    move v3, v2

    :goto_c
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnBottomActionText:Z

    if-eq v3, v4, :cond_1f

    .line 27359
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBottomActionText:Z

    move v1, v5

    .line 27363
    :cond_1f
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRecommendationsExpanded:Z

    .line 27364
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->channelRecommendationsCell:Lorg/telegram/ui/Cells/ChannelRecommendationsCell;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_20

    move v3, v5

    goto :goto_d

    :cond_20
    move v3, v2

    .line 27365
    :goto_d
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingRecommendationsExpanded:Z

    if-eq v3, v4, :cond_21

    .line 27366
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRecommendationsExpanded:Z

    .line 27367
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromRecommendationsExpanded:Z

    move v1, v5

    .line 27371
    :cond_21
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkAbove:Z

    .line 27372
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewAbove:Z

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkAbove:Z

    if-eq v4, v7, :cond_22

    .line 27373
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkAbove:Z

    move v1, v5

    .line 27377
    :cond_22
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMediaAbove:Z

    .line 27378
    iget-boolean v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->captionAbove:Z

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingMediaAbove:Z

    if-eq v4, v7, :cond_23

    .line 27379
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMediaAbove:Z

    move v1, v5

    .line 27383
    :cond_23
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkPreviewHeight:Z

    .line 27384
    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgethasLinkPreview(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewHeight:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewHeight:I

    if-eq v3, v4, :cond_24

    .line 27385
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkPreviewHeight:Z

    .line 27386
    iput v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromLinkPreviewHeight:I

    move v1, v5

    .line 27390
    :cond_24
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateUseTranscribeButton:Z

    .line 27391
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetuseTranscribeButton(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v3

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastUseTranscribeButton:Z

    if-eq v3, v4, :cond_25

    .line 27392
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateUseTranscribeButton:Z

    move v1, v5

    .line 27396
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_26

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->summarized:Z

    goto :goto_e

    :cond_26
    move v3, v2

    .line 27397
    :goto_e
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-eq v7, v8, :cond_35

    if-nez v8, :cond_27

    move-object v4, v6

    goto :goto_f

    .line 27398
    :cond_27
    iget-object v4, v8, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27399
    :goto_f
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-nez v7, :cond_28

    move-object v7, v6

    goto :goto_10

    :cond_28
    iget-object v7, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 27400
    :goto_10
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSideMenuEnabled:Z

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v10, v9, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    if-ne v8, v10, :cond_29

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSummarized:Z

    if-eq v8, v3, :cond_2c

    .line 27401
    :cond_29
    iget-object v8, v9, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-nez v8, :cond_2a

    move v8, v2

    goto :goto_11

    :cond_2a
    iget v8, v8, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    :goto_11
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-nez v9, :cond_2b

    move v9, v2

    goto :goto_12

    :cond_2b
    iget v9, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    :goto_12
    if-ne v8, v9, :cond_31

    :cond_2c
    if-nez v7, :cond_2d

    move v8, v5

    goto :goto_13

    :cond_2d
    move v8, v2

    :goto_13
    if-nez v4, :cond_2e

    move v9, v5

    goto :goto_14

    :cond_2e
    move v9, v2

    :goto_14
    if-ne v8, v9, :cond_31

    if-eqz v4, :cond_2f

    .line 27403
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_15

    .line 27416
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateCaptionLayout()V

    .line 27417
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcaptionX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_30

    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->captionY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_38

    .line 27418
    :cond_30
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->moveCaption:Z

    .line 27419
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromX:F

    .line 27420
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromY:F

    goto :goto_18

    .line 27405
    :cond_31
    :goto_15
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplaceCaptionLayout:Z

    .line 27406
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    .line 27407
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v1, :cond_32

    move-object v1, v6

    goto :goto_16

    :cond_32
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    :goto_16
    invoke-static {v2, v4, v6, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 27408
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v7, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-nez v7, :cond_33

    move-object v7, v6

    goto :goto_17

    :cond_33
    iget-object v7, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    :goto_17
    invoke-static {v2, v1, v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 27409
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSideMenuEnabled:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    if-ne v1, v4, :cond_34

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSummarized:Z

    if-eq v1, v3, :cond_37

    .line 27410
    :cond_34
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->moveCaption:Z

    .line 27411
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromX:F

    .line 27412
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromY:F

    goto :goto_18

    :cond_35
    if-eqz v7, :cond_38

    if-eqz v8, :cond_38

    .line 27425
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateCaptionLayout()V

    .line 27426
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcaptionX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->captionY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_38

    .line 27427
    :cond_36
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->moveCaption:Z

    .line 27428
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromX:F

    .line 27429
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionFromY:F

    :cond_37
    :goto_18
    move v1, v5

    .line 27433
    :cond_38
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 27434
    :cond_39
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_3a

    .line 27435
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBotButtonsChanged:Z

    .line 27437
    :cond_3a
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBotButtonsChanged:Z

    if-nez v3, :cond_3e

    move v3, v2

    .line 27438
    :goto_19
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 27439
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/BotButton;

    .line 27440
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/BotButton;

    .line 27441
    iget-boolean v8, v4, Lorg/telegram/ui/Cells/BotButton;->isSeparator:Z

    if-nez v8, :cond_3d

    iget-boolean v8, v7, Lorg/telegram/ui/Cells/BotButton;->isSeparator:Z

    if-eqz v8, :cond_3b

    goto :goto_1a

    .line 27445
    :cond_3b
    iget v8, v4, Lorg/telegram/ui/Cells/BotButton;->x:F

    iget v9, v7, Lorg/telegram/ui/Cells/BotButton;->x:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3c23d70a    # 0.01f

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3c

    iget v8, v4, Lorg/telegram/ui/Cells/BotButton;->width:F

    iget v10, v7, Lorg/telegram/ui/Cells/BotButton;->width:F

    sub-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3c

    iget-object v4, v4, Lorg/telegram/ui/Cells/BotButton;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v7, v7, Lorg/telegram/ui/Cells/BotButton;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Text;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 27446
    :cond_3c
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBotButtonsChanged:Z

    goto :goto_1b

    :cond_3d
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 27451
    :cond_3e
    :goto_1b
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBotButtonsChanged:Z

    if-eqz v3, :cond_3f

    .line 27452
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transitionBotButtons:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27455
    :cond_3f
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnWidthForButtons:I

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetwidthForButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-eq v3, v4, :cond_40

    .line 27456
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnWidthForButtons:I

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromWidthForButton:I

    .line 27457
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateWidthForButton:Z

    .line 27460
    :cond_40
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_41

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_41

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdocumentAttachType(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    if-ne v3, v5, :cond_43

    .line 27461
    :cond_41
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbuttonX(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_42

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbuttonY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_43

    .line 27462
    :cond_42
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromButtonX:F

    .line 27463
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonY:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromButtonY:F

    .line 27464
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateButton:Z

    move v1, v5

    .line 27469
    :cond_43
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetmediaOffsetY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastMediaOffsetY:I

    if-eq v3, v4, :cond_44

    .line 27470
    iput v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromMediaOffsetY:I

    .line 27471
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMediaOffsetY:Z

    move v1, v5

    .line 27477
    :cond_44
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastIsPinned:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinned:Z

    if-eq v3, v7, :cond_45

    .line 27478
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePinned:Z

    .line 27481
    iput-object v6, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    move v1, v5

    move v3, v1

    goto :goto_1c

    :cond_45
    move v3, v2

    .line 27484
    :goto_1c
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesLayout:Landroid/text/StaticLayout;

    if-nez v7, :cond_46

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetrepliesLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_47

    :cond_46
    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesCount:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetRepliesCount(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    if-eq v4, v7, :cond_47

    .line 27485
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRepliesLayout:Landroid/text/StaticLayout;

    .line 27486
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplies:Z

    .line 27489
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    move v1, v5

    move v3, v1

    .line 27492
    :cond_47
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_48

    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsCount:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    if-eq v4, v7, :cond_48

    .line 27493
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateViewsLayout:Landroid/text/StaticLayout;

    .line 27496
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->accessibilityText:Ljava/lang/CharSequence;

    move v1, v5

    move v3, v1

    .line 27499
    :cond_48
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_4a

    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentsCount:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetRepliesCount(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v7

    if-eq v4, v7, :cond_4a

    .line 27500
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 27501
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentsLayout:Landroid/text/StaticLayout;

    goto :goto_1d

    .line 27503
    :cond_49
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentsLayout:Landroid/text/StaticLayout;

    .line 27505
    :goto_1d
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTotalCommentWidth:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTotalCommentWidth:I

    .line 27506
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentX:F

    .line 27507
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentArrowX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentArrowX:I

    .line 27508
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentUnreadX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentUnreadX:I

    .line 27509
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentDrawUnread:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentDrawUnread:Z

    .line 27510
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawCommentNumber:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawCommentNumber:Z

    .line 27511
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateComments:Z

    move v1, v5

    .line 27515
    :cond_4a
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastSignMessage:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastPostAuthor(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 27516
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSign:Z

    .line 27517
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetnameX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateNameX:F

    move v1, v5

    .line 27521
    :cond_4b
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawTime:Z

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforceNotDrawTime(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v7

    if-ne v4, v7, :cond_4c

    .line 27522
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingTimeAlpha:Z

    .line 27523
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateViewsLayout:Landroid/text/StaticLayout;

    :goto_1e
    move v1, v5

    goto :goto_1f

    .line 27525
    :cond_4c
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastShouldDrawTimeOnMedia:Z

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawTimeOnMedia()Z

    move-result v7

    if-eq v4, v7, :cond_4d

    .line 27526
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    .line 27527
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawTimeOnMedia:Z

    .line 27528
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeX:I

    .line 27529
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 27530
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    goto :goto_1e

    :cond_4d
    if-nez v3, :cond_4e

    .line 27532
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->timeX:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v5, :cond_4f

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSideMenuEnabled:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    if-ne v3, v4, :cond_4f

    .line 27533
    :cond_4e
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->shouldAnimateTimeX:Z

    .line 27534
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeWidth:I

    .line 27535
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeX:I

    .line 27536
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXViews:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXViews:F

    .line 27537
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXReplies:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXReplies:F

    .line 27538
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeXPinned:F

    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTimeXPinned:F

    .line 27541
    :cond_4f
    :goto_1f
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastShouldDrawMenuDrawable:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mshouldDrawMenuDrawable(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eq v3, v4, :cond_50

    .line 27542
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawMenuDrawable:Z

    .line 27545
    :cond_50
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastLocatinIsExpired:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlocationExpired(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eq v3, v4, :cond_51

    .line 27546
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLocationIsExpired:Z

    .line 27549
    :cond_51
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastIsPlayingRound:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetisPlayingRound(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eq v3, v4, :cond_52

    .line 27550
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    move v1, v5

    .line 27554
    :cond_52
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextY:F

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->textY:I

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_53

    .line 27555
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTextY:Z

    .line 27556
    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromTextY:F

    move v1, v5

    .line 27560
    :cond_53
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewY:I

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlinkPreviewY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-eq v3, v4, :cond_54

    .line 27561
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkPreviewY:Z

    .line 27562
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewY:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromLinkPreviewY:I

    move v1, v5

    .line 27566
    :cond_54
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingFactCheckHeight:I

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetfactCheckHeight(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v4

    if-eq v3, v4, :cond_55

    .line 27567
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFactCheckHeight:Z

    .line 27568
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingFactCheckHeight:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFactCheckHeightFrom:I

    move v1, v5

    .line 27571
    :cond_55
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingFactCheckExpanded:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_56

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->factCheckExpanded:Z

    if-eqz v4, :cond_56

    move v4, v5

    goto :goto_20

    :cond_56
    move v4, v2

    :goto_20
    if-eq v3, v4, :cond_57

    .line 27572
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFactCheckExpanded:Z

    move v1, v5

    .line 27575
    :cond_57
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingFactCheck:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgethasFactCheck(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v4

    if-eq v3, v4, :cond_58

    .line 27576
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFactCheck:Z

    move v1, v5

    .line 27579
    :cond_58
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSummaryReply:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->drawSummaryReply:Z

    if-eq v3, v7, :cond_59

    .line 27580
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSummaryReply:Z

    move v1, v5

    .line 27584
    :cond_59
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingExpandedQuotes:Ljava/util/HashSet;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_5a

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->expandedQuotes:Ljava/util/HashSet;

    :cond_5a
    invoke-static {v3, v6}, Lorg/telegram/messenger/MessageObject;->expandedQuotesEquals(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 27585
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateExpandedQuotes:Z

    .line 27586
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingExpandedQuotes:Ljava/util/HashSet;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateExpandedQuotesFrom:Ljava/util/HashSet;

    move v1, v5

    .line 27590
    :cond_5b
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_5c

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedName:Z

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v4

    if-eq v3, v4, :cond_5c

    .line 27591
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardedLayout:Z

    .line 27592
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatingForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    aget-object v4, v3, v2

    aput-object v4, v1, v2

    .line 27593
    aget-object v3, v3, v5

    aput-object v3, v1, v5

    .line 27594
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameX:F

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardNameX:F

    .line 27595
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardedNamesOffset:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardedNamesOffset:I

    .line 27596
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameWidth:I

    iput v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardNameWidth:I

    :goto_21
    move v1, v5

    goto :goto_22

    .line 27598
    :cond_5c
    iget v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastNamesOffset:I

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->namesOffset:I

    if-eq v3, v4, :cond_5d

    .line 27599
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateNamesOffset:Z

    .line 27600
    iput v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateNamesOffsetFrom:I

    goto :goto_21

    .line 27603
    :cond_5d
    :goto_22
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mupdateReactionLayoutPosition(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 27604
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateChange()Z

    move-result v3

    if-eqz v3, :cond_5e

    move v1, v5

    .line 27607
    :cond_5e
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 27608
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->layoutHeight:I

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom:Z

    if-eqz v3, :cond_5f

    const/4 v3, 0x2

    goto :goto_23

    :cond_5f
    move v3, v2

    :goto_23
    rsub-int/lit8 v3, v3, 0x1c

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    .line 27609
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v6, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-nez v6, :cond_60

    .line 27610
    iget v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 27612
    :cond_60
    iget v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawRoundVideoDotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_61

    .line 27613
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRoundVideoDotY:Z

    .line 27614
    iput v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromRoundVideoDotY:F

    move v1, v5

    .line 27619
    :cond_61
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_62

    iget v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartX:I

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawReplyY:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_62

    const/4 v4, 0x0

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_62

    .line 27620
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyY:Z

    .line 27621
    iput v6, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFromReplyY:F

    move v1, v5

    .line 27625
    :cond_62
    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_63

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-eqz v3, :cond_63

    move v3, v5

    goto :goto_24

    :cond_63
    move v3, v2

    .line 27626
    :goto_24
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnTranslated:Z

    if-eq v3, v4, :cond_64

    .line 27627
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettitleLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v3

    if-eqz v3, :cond_64

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnTitleLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_64

    .line 27628
    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTitleLayout:Landroid/text/StaticLayout;

    .line 27629
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTitleLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v6, v5, [Landroid/text/Layout;

    aput-object v3, v6, v2

    invoke-static {v2, v1, v2, v4, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTitleLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return v5

    :cond_64
    return v1
.end method

.method public createStatusDrawableParams()I
    .locals 8

    .line 27737
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    .line 27743
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 27747
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v3

    move v0, v4

    move v3, v0

    move v5, v3

    goto :goto_3

    .line 27751
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27752
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    move v5, v4

    :goto_1
    move v6, v5

    goto :goto_3

    :cond_3
    move v0, v4

    move v3, v0

    move v5, v3

    goto :goto_1

    :cond_4
    :goto_2
    move v5, v3

    move v0, v4

    move v3, v0

    move v6, v3

    .line 27761
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/messenger/MessageObject;->notime:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    move v0, v4

    move v3, v0

    move v5, v3

    :cond_6
    if-eqz v3, :cond_7

    const/4 v3, 0x2

    goto :goto_4

    :cond_7
    move v3, v4

    :goto_4
    or-int/2addr v0, v3

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    move v2, v4

    :goto_5
    or-int/2addr v0, v2

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    move v1, v4

    :goto_6
    or-int/2addr v0, v1

    return v0

    .line 27768
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move v3, v4

    .line 27769
    :cond_c
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v0

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v2, v4

    :goto_8
    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    move v1, v4

    :goto_9
    or-int v0, v2, v1

    return v0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 27638
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    return-void
.end method

.method public recordDrawingState()V
    .locals 6

    const/4 v0, 0x1

    .line 27079
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    .line 27080
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetphotoImage(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageX:F

    .line 27081
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetphotoImage(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageY:F

    .line 27082
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetphotoImage(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageW:F

    .line 27083
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetphotoImage(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingImageH:F

    .line 27084
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetphotoImage(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v1

    .line 27085
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageRoundRadius:[I

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27086
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->currentBackgroundDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v1, :cond_0

    .line 27087
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 27089
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSideMenuEnabled:Z

    .line 27090
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextBlocks:Ljava/util/ArrayList;

    .line 27091
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->textWidth:I

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextWidth:I

    .line 27092
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetedited(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingEdited:Z

    .line 27094
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcaptionX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionX:F

    .line 27095
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->captionY:F

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionY:F

    .line 27097
    iget-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    iput-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    .line 27098
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->summarized:Z

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSummarized:Z

    .line 27099
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27100
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 27101
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBotButtons:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27103
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetisSmallImage(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSmallImage:Z

    .line 27104
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->topicSeparatorTopPadding:I

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnMonoforumPadding:I

    .line 27105
    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->starsPriceTopPadding:I

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnStarsPriceTopPadding:I

    .line 27106
    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->bottomActionPadding:I

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnBottomActionPadding:I

    .line 27107
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetstarsPriceText(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnStarsPriceText:Z

    .line 27108
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbottomActionText(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnBottomActionText:Z

    .line 27109
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewHeight:I

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewHeight:I

    .line 27110
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewAbove:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkAbove:Z

    .line 27111
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->captionAbove:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingMediaAbove:Z

    .line 27113
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->channelRecommendationsCell:Lorg/telegram/ui/Cells/ChannelRecommendationsCell;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v4

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingRecommendationsExpanded:Z

    .line 27115
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 27116
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetRepliesCount(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentsCount:I

    .line 27117
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettotalCommentWidth(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTotalCommentWidth:I

    .line 27118
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentLayout:Landroid/text/StaticLayout;

    .line 27119
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentArrowX(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentArrowX:I

    .line 27120
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentUnreadX(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentUnreadX:I

    .line 27121
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentDrawUnread(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentDrawUnread:Z

    .line 27122
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcommentX(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastCommentX:F

    .line 27123
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawCommentNumber(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawCommentNumber:Z

    .line 27126
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mgetRepliesCount(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesCount:I

    .line 27127
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsCount:I

    .line 27128
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetrepliesLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastRepliesLayout:Landroid/text/StaticLayout;

    .line 27129
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetviewsLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastViewsLayout:Landroid/text/StaticLayout;

    .line 27131
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinned:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastIsPinned:Z

    .line 27133
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlastPostAuthor(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastSignMessage:Ljava/lang/String;

    .line 27135
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawBackground(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawBackground:Z

    .line 27136
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetuseTranscribeButton(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastUseTranscribeButton:Z

    .line 27138
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbuttonX(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonX:F

    .line 27139
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetbuttonY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastButtonY:F

    .line 27140
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetmediaOffsetY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastMediaOffsetY:I

    .line 27142
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforceNotDrawTime(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawTime:Z

    .line 27143
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->timeX:I

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeX:I

    .line 27144
    iget-object v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->timeLayout:Landroid/text/StaticLayout;

    iput-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeLayout:Landroid/text/StaticLayout;

    .line 27145
    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->timeWidth:I

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTimeWidth:I

    .line 27147
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawTimeOnMedia()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastShouldDrawTimeOnMedia:Z

    .line 27148
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTopMediaOffset()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTopOffset:I

    .line 27149
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mshouldDrawMenuDrawable(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastShouldDrawMenuDrawable:Z

    .line 27151
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlocationExpired(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastLocatinIsExpired:Z

    .line 27152
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetisPlayingRound(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastIsPlayingRound:Z

    .line 27154
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->textY:I

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextY:F

    .line 27155
    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->textX:I

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingTextX:F

    .line 27156
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetlinkPreviewY(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingLinkPreviewY:I

    .line 27158
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetwidthForButtons(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnWidthForButtons:I

    .line 27159
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v1, v4

    .line 27160
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    .line 27161
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_6

    :cond_9
    move v1, v4

    :goto_6
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedName:Z

    .line 27162
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardNameX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameX:F

    .line 27163
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->namesOffset:I

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardedNamesOffset:I

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastNamesOffset:I

    .line 27164
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameWidth(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameWidth:I

    .line 27165
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundLeft()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastBackgroundLeft:I

    .line 27166
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->currentBackgroundDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v1, :cond_a

    .line 27167
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastBackgroundRight:I

    .line 27169
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    goto :goto_7

    :cond_b
    move v1, v3

    :goto_7
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastTextXOffset:F

    .line 27171
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetreplyTextHeight(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingReplyTextHeight:F

    .line 27172
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextLayout:Landroid/text/StaticLayout;

    iput-object v5, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnReplyTextLayout:Landroid/text/StaticLayout;

    .line 27173
    iget v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replyTextOffset:I

    iput v5, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastReplyTextXOffset:I

    .line 27175
    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->recordDrawingState()V

    .line 27176
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replyNameLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_c

    .line 27177
    iget v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->replyStartY:I

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawReplyY:F

    goto :goto_8

    .line 27179
    :cond_c
    iput v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawReplyY:F

    .line 27182
    :goto_8
    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawNameLayout:Z

    .line 27183
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawNameAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawAvatar:Z

    .line 27184
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetdrawTopic(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawTopic:Z

    .line 27186
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetfactCheckHeight(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingFactCheckHeight:I

    .line 27187
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->factCheckExpanded:Z

    if-eqz v1, :cond_d

    move v1, v0

    goto :goto_9

    :cond_d
    move v1, v4

    :goto_9
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingFactCheckExpanded:Z

    .line 27188
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgethasFactCheck(Lorg/telegram/ui/Cells/ChatMessageCell;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingFactCheck:Z

    .line 27190
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->drawSummaryReply:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingSummaryReply:Z

    .line 27192
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->expandedQuotes:Ljava/util/HashSet;

    :cond_e
    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawingExpandedQuotes:Ljava/util/HashSet;

    .line 27194
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-eqz v1, :cond_f

    goto :goto_a

    :cond_f
    move v0, v4

    :goto_a
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnTranslated:Z

    .line 27195
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgettitleLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnTitleLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method public recordDrawingStatePreview()V
    .locals 3

    .line 27199
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    .line 27200
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedNameLayout:[Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameLayout(Lorg/telegram/ui/Cells/ChatMessageCell;)[Landroid/text/StaticLayout;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    .line 27201
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastDrawnForwardedName:Z

    .line 27202
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardNameX(Lorg/telegram/ui/Cells/ChatMessageCell;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameX:F

    .line 27203
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->namesOffset:I

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardedNamesOffset:I

    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastNamesOffset:I

    .line 27204
    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetforwardedNameWidth(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastForwardNameWidth:I

    return-void
.end method

.method public resetAnimation()V
    .locals 7

    const/4 v0, 0x0

    .line 27642
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    .line 27643
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePinned:Z

    .line 27644
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    .line 27645
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundWidth:Z

    const/4 v1, 0x0

    .line 27646
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaLeft:F

    .line 27647
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaRight:F

    .line 27648
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    .line 27649
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaTop:F

    .line 27650
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaLeft:F

    .line 27651
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->toDeltaRight:F

    .line 27652
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 27653
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetphotoImage(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    iget v4, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    iget v5, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    iget v6, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 27655
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    if-eqz v2, :cond_1

    .line 27656
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetphotoImage(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToRadius:[I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 27658
    :cond_1
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageX:F

    .line 27659
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageY:F

    .line 27660
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageW:F

    .line 27661
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateToImageH:F

    .line 27662
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->imageChangeBoundsTransition:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 27663
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->changePinnedBottomProgress:F

    .line 27664
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->captionEnterProgress:F

    .line 27665
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRadius:Z

    .line 27666
    iput v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 27667
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMessageText:Z

    .line 27668
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingSideMenuEnabled:Z

    .line 27669
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawNameLayout:Z

    .line 27670
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawAvatar:Z

    .line 27671
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawTopic:Z

    const/4 v1, 0x0

    .line 27672
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutTextBlocks:Ljava/util/ArrayList;

    .line 27673
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedLayout:Landroid/text/StaticLayout;

    .line 27674
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTimeLayout:Landroid/text/StaticLayout;

    .line 27675
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateEditedEnter:Z

    .line 27676
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplaceCaptionLayout:Z

    .line 27677
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    .line 27678
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    .line 27679
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 27680
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateOutAnimateEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 27681
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->moveCaption:Z

    .line 27682
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingTimeAlpha:Z

    .line 27683
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transitionBotButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 27684
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateButton:Z

    .line 27685
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBotButtonsChanged:Z

    .line 27686
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateWidthForButton:Z

    .line 27687
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMediaOffsetY:Z

    .line 27688
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyTextLayout:Landroid/text/StaticLayout;

    .line 27690
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplies:Z

    .line 27691
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRepliesLayout:Landroid/text/StaticLayout;

    .line 27693
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateComments:Z

    .line 27694
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateCommentsLayout:Landroid/text/StaticLayout;

    .line 27695
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateViewsLayout:Landroid/text/StaticLayout;

    .line 27696
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawTimeOnMedia:Z

    .line 27697
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateShouldDrawMenuDrawable:Z

    .line 27698
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->shouldAnimateTimeX:Z

    .line 27699
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawBackground:Z

    .line 27700
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSign:Z

    .line 27701
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSmallImage:Z

    .line 27702
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMonoforumPadding:Z

    .line 27703
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateStarsPriceTopPadding:Z

    .line 27704
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateStarsPriceText:Z

    .line 27705
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBottomActionText:Z

    .line 27706
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBottomActionPadding:Z

    .line 27707
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->needsStopClipping:Z

    .line 27708
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkAbove:Z

    .line 27709
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateMediaAbove:Z

    .line 27710
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRecommendationsExpanded:Z

    .line 27711
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateDrawingTimeAlpha:Z

    .line 27712
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLocationIsExpired:Z

    .line 27713
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    .line 27714
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTextY:Z

    .line 27715
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateLinkPreviewY:Z

    .line 27716
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFactCheckHeight:Z

    .line 27717
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFactCheckExpanded:Z

    .line 27718
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateExpandedQuotes:Z

    .line 27719
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateFactCheck:Z

    .line 27720
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateSummaryReply:Z

    .line 27721
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateForwardedLayout:Z

    .line 27722
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateNamesOffset:Z

    .line 27723
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatingForwardedNameLayout:[Landroid/text/StaticLayout;

    aput-object v1, v2, v0

    const/4 v3, 0x1

    .line 27724
    aput-object v1, v2, v3

    .line 27725
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateRoundVideoDotY:Z

    .line 27726
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateReplyY:Z

    .line 27727
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resetAnimation()V

    .line 27728
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTitleLayout:Landroid/text/StaticLayout;

    .line 27729
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateTitleLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method public supportChangeAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
