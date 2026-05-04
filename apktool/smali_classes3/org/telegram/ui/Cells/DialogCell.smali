.class public Lorg/telegram/ui/Cells/DialogCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;,
        Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;,
        Lorg/telegram/ui/Cells/DialogCell$CustomDialog;,
        Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;,
        Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;,
        Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;,
        Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;
    }
.end annotation


# instance fields
.field private adaptiveEmojiColor:[I

.field private adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

.field public addForumHeightForTags:I

.field public addHeightForTags:I

.field private allowBotOpenButton:Z

.field private animateFromStatusDrawableParams:I

.field private animateToStatusDrawableParams:I

.field private animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatingArchiveAvatar:Z

.field private animatingArchiveAvatarProgress:F

.field private applyName:Z

.field private archiveBackgroundProgress:F

.field private archiveFadeGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private archiveFadeGradientDrawableColor:I

.field private archiveHidden:Z

.field protected archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

.field private attachedToWindow:Z

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field public avatarStart:I

.field private final botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private bottomClip:I

.field private bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

.field private buttonBackgroundPaint:Landroid/graphics/Paint;

.field private buttonCreated:Z

.field private buttonLayout:Landroid/text/StaticLayout;

.field private buttonLeft:I

.field private buttonTop:I

.field canvasButton:Lorg/telegram/ui/Components/CanvasButton;

.field public channelShouldUseLineWidth:Z

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private chatCallProgress:F

.field protected checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkDrawLeft:I

.field private checkDrawLeft1:I

.field private checkDrawTop:I

.field public chekBoxPaddingTop:F

.field private clearingDialog:Z

.field private clipProgress:F

.field private clockDrawLeft:I

.field public collapseOffset:F

.field public collapsed:Z

.field private cornerProgress:F

.field private countAnimationInLayout:Landroid/text/StaticLayout;

.field private countAnimationIncrement:Z

.field private countAnimationStableLayout:Landroid/text/StaticLayout;

.field private countAnimator:Landroid/animation/ValueAnimator;

.field private countChangeProgress:F

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countLeftOld:I

.field private countOldLayout:Landroid/text/StaticLayout;

.field private countTop:I

.field private countWidth:I

.field private countWidthOld:I

.field private counterPaintOutline:Landroid/graphics/Paint;

.field private counterPath:Landroid/graphics/Path;

.field private counterPathRect:Landroid/graphics/RectF;

.field private currentAccount:I

.field private currentDialogFolderDialogsCount:I

.field private currentDialogFolderId:I

.field private currentDialogId:J

.field private currentEditDate:I

.field private currentMessagePaint:Landroid/text/TextPaint;

.field private currentRevealBounceProgress:F

.field private currentRevealProgress:F

.field private customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

.field private customMessage:Ljava/lang/String;

.field delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

.field private dialogMuted:Z

.field private dialogMutedProgress:F

.field private dialogsType:I

.field private draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field private draftVoice:Z

.field public drawArchive:Z

.field public drawAvatar:Z

.field public drawAvatarSelector:Z

.field private drawBadge:Z

.field private drawBotVerified:Z

.field private drawCheck1:Z

.field private drawCheck2:Z

.field private drawClock:Z

.field private drawCount:Z

.field private drawCount2:Z

.field private drawError:Z

.field private drawForwardIcon:Z

.field private drawGiftIcon:Z

.field private drawMention:Z

.field public drawMonoforumAvatar:Z

.field private drawNameLock:Z

.field private drawPin:Z

.field private drawPinBackground:Z

.field private drawPinForced:Z

.field private drawPlay:[Z

.field private drawPremium:Z

.field private drawReactionMention:Z

.field private drawReorder:Z

.field private drawRevealBackground:Z

.field private drawScam:I

.field private drawSpoiler:[Z

.field private drawUnmute:Z

.field private drawVerified:Z

.field private final emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private final emojiStatusView:Landroid/view/View;

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private errorLeft:I

.field private errorTop:I

.field private fadePaint:Landroid/graphics/Paint;

.field private fadePaintBack:Landroid/graphics/Paint;

.field private folderId:I

.field protected forbidDraft:Z

.field protected forbidVerified:Z

.field private forumFormattedNames:Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;

.field public forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

.field public fullSeparator:Z

.field public fullSeparator2:Z

.field private groupMessages:Ljava/util/ArrayList;

.field private halfCheckDrawLeft:I

.field private hasCall:Z

.field private hasNameInMessage:Z

.field private hasUnmutedTopics:Z

.field private hasVideoThumb:Z

.field public heightDefault:I

.field public heightThreeLines:I

.field public inPreviewMode:Z

.field private innerProgress:F

.field private interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

.field public isDialogCell:Z

.field public isForChannelSubscriberCell:Z

.field private isForum:Z

.field public isMonoForumTopicDialog:Z

.field public isSavedDialog:Z

.field public isSavedDialogCell:Z

.field private isSelected:Z

.field private isShareToStoryCell:Z

.field private isSliding:Z

.field private isTopic:Z

.field public isTransitionSupport:Z

.field lastDialogChangedTime:J

.field private lastDrawSwipeMessageStringId:I

.field private lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private lastMessageDate:I

.field private lastMessageString:Ljava/lang/CharSequence;

.field private lastPrintString:Ljava/lang/CharSequence;

.field private lastSendState:I

.field lastSize:I

.field private lastStatusDrawableParams:I

.field private lastTopicMessageUnread:Z

.field private lastUnreadState:Z

.field private lock2Left:I

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

.field private markUnread:Z

.field private mentionCount:I

.field private mentionLayout:Landroid/text/StaticLayout;

.field private mentionLeft:I

.field private mentionWidth:I

.field private message:Lorg/telegram/messenger/MessageObject;

.field private final messageAvatarSpan:Lorg/telegram/ui/AvatarSpan;

.field private messageId:I

.field private messageLayout:Landroid/text/StaticLayout;

.field private messageLeft:I

.field private messageNameLayout:Landroid/text/StaticLayout;

.field private messageNameLeft:I

.field private messageNameTop:I

.field public messagePaddingStart:I

.field private messageTop:I

.field moving:Z

.field public nameAdditionalsForChannelSubscriber:I

.field private nameIsEllipsized:Z

.field public nameLayout:Landroid/text/StaticLayout;

.field private nameLayoutEllipsizeByGradient:Z

.field private nameLayoutEllipsizeLeft:Z

.field private nameLayoutFits:Z

.field public nameLayoutTranslateX:F

.field public nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameMuteLeft:I

.field public namePaddingEnd:I

.field public nameWidth:I

.field private needEmoji:Z

.field private onOpenButtonClick:Lorg/telegram/messenger/Utilities$Callback;

.field private onlineProgress:F

.field private openBot:Z

.field private final openButtonBackgroundPaint:Landroid/graphics/Paint;

.field private final openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final openButtonRect:Landroid/graphics/RectF;

.field private openButtonText:Lorg/telegram/ui/Components/Text;

.field protected overrideSwipeAction:Z

.field protected overrideSwipeActionBackgroundColorKey:I

.field protected overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field protected overrideSwipeActionRevealBackgroundColorKey:I

.field protected overrideSwipeActionStringId:I

.field protected overrideSwipeActionStringKey:Ljava/lang/String;

.field private paintIndex:I

.field private parentFragment:Lorg/telegram/ui/DialogsActivity;

.field private pinLeft:I

.field private pinTop:I

.field private preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

.field private premiumBlocked:Z

.field private final premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field private printingStringType:I

.field private progressStage:I

.field private promoDialog:Z

.field private reactionMentionCount:I

.field private reactionMentionLeft:I

.field private reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

.field private reactionsMentionsChangeProgress:F

.field private readOutboxMaxId:I

.field private rect:Landroid/graphics/RectF;

.field private reorderGradientLastColor:I

.field private reorderGradientPaint:Landroid/graphics/Paint;

.field private reorderIconProgress:F

.field public repostStoryDrawable:Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public rightFragmentOffset:F

.field private rightFragmentOpenedProgress:F

.field private showTopicIconInName:Z

.field private showTtl:Z

.field private spoilers:Ljava/util/List;

.field private spoilers2:Ljava/util/List;

.field private spoilersPool:Ljava/util/Stack;

.field private spoilersPool2:Ljava/util/Stack;

.field private starBg:Landroid/graphics/drawable/Drawable;

.field private starBgColor:I

.field private starFg:Landroid/graphics/drawable/Drawable;

.field private final starsBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private starsPriceBlocked:J

.field private statusDrawableAnimationInProgress:Z

.field private statusDrawableAnimator:Landroid/animation/ValueAnimator;

.field private statusDrawableLeft:I

.field private statusDrawableProgress:F

.field public final storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field public swipeCanceled:Z

.field private swipeMessageTextId:I

.field private swipeMessageTextLayout:Landroid/text/StaticLayout;

.field private swipeMessageWidth:I

.field public tags:Lorg/telegram/ui/Components/DialogCellTags;

.field private tagsLeft:I

.field private tagsRight:I

.field private thumbBackgroundPaint:Landroid/graphics/Paint;

.field private thumbImage:[Lorg/telegram/messenger/ImageReceiver;

.field private thumbImageSeen:[Z

.field private thumbPath:Landroid/graphics/Path;

.field thumbSize:I

.field private thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field private thumbsCount:I

.field private timeLayout:Landroid/text/StaticLayout;

.field private timeLeft:I

.field private timeTop:I

.field private timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

.field private timerPaint:Landroid/graphics/Paint;

.field private timerPaint2:Landroid/graphics/Paint;

.field private titleOverride:Ljava/lang/String;

.field private topClip:I

.field topMessageTopicEndIndex:I

.field topMessageTopicStartIndex:I

.field private topicCounterPaint:Landroid/graphics/Paint;

.field protected topicIconInName:[Landroid/graphics/drawable/Drawable;

.field private topicMuted:Z

.field protected translateY:I

.field private translationAnimationStarted:Z

.field private translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field protected translationX:F

.field private ttlPeriod:I

.field private ttlProgress:F

.field private twoLinesForName:Z

.field private typingLayout:Landroid/text/StaticLayout;

.field private typingLeft:I

.field private unreadCount:I

.field private unsubscribePremiumBlocked:Ljava/lang/Runnable;

.field private final updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

.field private updateLayout:Z

.field public useForceThreeLines:Z

.field public useFromUserAsAvatar:Z

.field private useMeForMyMessages:Z

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private visibleOnScreen:Z

.field private wasDrawnOnline:Z

.field protected xOffset:F


# direct methods
.method public static synthetic $r8$lambda$-gEK1C7dfgC5WOqgTxiAHTxccXY(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->lambda$onDraw$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$H2PnsxVVis5UODdwhKaiS-dILUU(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->lambda$onDraw$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$L10qvr8XxiAI9uac66JZcuoYvoo(Lorg/telegram/ui/Cells/DialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$createStatusDrawableAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YwfXMRCzB4Q3fCCJ2ZhN3QFsLwc(Lorg/telegram/ui/Cells/DialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$update$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$osKkA8XL03pw11QUdOLufZauvyE(Lorg/telegram/ui/Cells/DialogCell;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$showPremiumBlocked$5([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t6EM9ISL74dRRjx25rpRTrBYfm4(Lorg/telegram/ui/Cells/DialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$update$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanimateToStatusDrawableParams(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchat(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDialogFolderId(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDialogId(Lorg/telegram/ui/Cells/DialogCell;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetdialogsType(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdraftVoice(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawCheck1(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawCheck2(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawClock(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawPin(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiStatus(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisTopic(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessage(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettypingLayout(Lorg/telegram/ui/Cells/DialogCell;)Landroid/text/StaticLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcountAnimationInLayout(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcountAnimationStableLayout(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcountChangeProgress(Lorg/telegram/ui/Cells/DialogCell;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcountOldLayout(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastStatusDrawableParams(Lorg/telegram/ui/Cells/DialogCell;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputreactionsMentionsChangeProgress(Lorg/telegram/ui/Cells/DialogCell;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstatusDrawableAnimationInProgress(Lorg/telegram/ui/Cells/DialogCell;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateStatusDrawableAnimator(Lorg/telegram/ui/Cells/DialogCell;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTopicId(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V
    .locals 7

    .line 644
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 650
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 150
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->drawArchive:Z

    .line 160
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    const/4 v8, 0x0

    .line 161
    iput-boolean v8, p0, Lorg/telegram/ui/Cells/DialogCell;->drawMonoforumAvatar:Z

    const/16 v0, 0xb

    .line 164
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarStart:I

    const/16 v2, 0x48

    .line 165
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    const/16 v2, 0x46

    .line 166
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    const/16 v2, 0x4c

    .line 167
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    const/4 v2, 0x3

    .line 168
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->addHeightForTags:I

    .line 169
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->addForumHeightForTags:I

    const/high16 v0, 0x42280000    # 42.0f

    .line 177
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chekBoxPaddingTop:F

    .line 203
    new-instance v9, Lorg/telegram/ui/Cells/DialogCell$1;

    invoke-direct {v9, p0, v8}, Lorg/telegram/ui/Cells/DialogCell$1;-><init>(Lorg/telegram/ui/Cells/DialogCell;Z)V

    iput-object v9, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 230
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    const/4 v0, 0x0

    .line 308
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    .line 389
    iput-boolean v8, p0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 422
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 423
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonBackgroundPaint:Landroid/graphics/Paint;

    .line 424
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    .line 442
    iput-boolean v8, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    .line 452
    new-array v0, v2, [Z

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    .line 453
    new-array v0, v2, [Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    .line 454
    new-array v0, v2, [Z

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    .line 455
    new-array v0, v2, [Z

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    .line 457
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 459
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 462
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    .line 473
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 475
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->starsBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 543
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    .line 545
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    .line 570
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 579
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 580
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 605
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 612
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 624
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 625
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;-><init>(Lorg/telegram/ui/Cells/DialogCell;Lorg/telegram/ui/Cells/DialogCell-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    .line 651
    iput-boolean v7, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->allowLongress:Z

    move-object/from16 v0, p6

    .line 652
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 653
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    .line 654
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 655
    iput-boolean v8, p0, Lorg/telegram/ui/Cells/DialogCell;->drawMonoforumAvatar:Z

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v0, v8

    .line 657
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 658
    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object v3, v2, v0

    .line 659
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    iput-boolean v7, v2, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    const/high16 v3, 0x40000000    # 2.0f

    .line 660
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 661
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    move v0, p5

    .line 664
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    .line 666
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Cells/DialogCell$2;-><init>(Lorg/telegram/ui/Cells/DialogCell;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatusView:Landroid/view/View;

    .line 673
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 674
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 675
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 678
    new-instance v0, Lorg/telegram/ui/AvatarSpan;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    const/high16 v3, 0x41900000    # 18.0f

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageAvatarSpan:Lorg/telegram/ui/AvatarSpan;

    .line 679
    iput-boolean v8, v0, Lorg/telegram/ui/AvatarSpan;->needDrawShadow:Z

    return-void
.end method

.method private addSenderAvatar(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;
    .locals 4

    .line 2836
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->senderMiniAvatars:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2840
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v0

    .line 2841
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    goto :goto_0

    .line 2845
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageAvatarSpan:Lorg/telegram/ui/AvatarSpan;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/AvatarSpan;->setDialogId(J)V

    .line 2847
    new-instance p2, Landroid/text/SpannableStringBuilder;

    const-string v0, "A "

    invoke-direct {p2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2848
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageAvatarSpan:Lorg/telegram/ui/AvatarSpan;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2850
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 2851
    const-string v1, " "

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2852
    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2854
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method private applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 2926
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_0

    .line 2927
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 2928
    const-string v0, " "

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2929
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;-><init>(I)V

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object p1
.end method

.method private checkChatTheme()V
    .locals 5

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    if-eqz v1, :cond_0

    .line 793
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    .line 794
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/telegram/messenger/ChatThemeController;->setDialogTheme(JLorg/telegram/tgnet/TLRPC$ChatTheme;Z)V

    :cond_0
    return-void
.end method

.method private checkGroupCall()V
    .locals 2

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 783
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    return-void
.end method

.method private checkOnline()V
    .locals 3

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 751
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 753
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 756
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 757
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    return-void
.end method

.method private checkTtl()V
    .locals 1

    .line 787
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 788
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    return-void
.end method

.method private checkTwoLinesForName()V
    .locals 1

    const/4 v0, 0x0

    .line 987
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 988
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 990
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 991
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 992
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    :cond_0
    return-void
.end method

.method private computeHeight()I
    .locals 2

    .line 958
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    if-nez v0, :cond_4

    .line 959
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b60000    # 91.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x42ac0000    # 86.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 960
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 963
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->addForumHeightForTags:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0

    .line 967
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method private createStatusDrawableAnimator(II)V
    .locals 3

    const/4 v0, 0x0

    .line 5199
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    const/4 v0, 0x2

    .line 5200
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdc

    .line 5201
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5203
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5204
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->animateFromStatusDrawableParams:I

    .line 5205
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    .line 5206
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5210
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$6;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x1

    .line 5223
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    .line 5224
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p6, v0

    if-nez v1, :cond_0

    if-nez p5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, p6, v2

    add-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x437f0000    # 255.0f

    const/16 v5, 0xff

    if-eqz p2, :cond_3

    .line 2962
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_1

    .line 2964
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2965
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    sget-object p4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, v3, v3, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2966
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2968
    :cond_1
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_2

    .line 2970
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2971
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2973
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void

    :cond_3
    if-eqz p4, :cond_a

    if-eqz p3, :cond_8

    .line 2976
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    if-eqz p5, :cond_4

    .line 2978
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2979
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2980
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float p3, p6, v4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    if-nez p5, :cond_5

    if-eqz v1, :cond_5

    .line 2983
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2984
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2985
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v4, p6

    float-to-int p3, v4

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2986
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2989
    :cond_5
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_6

    .line 2992
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2993
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p2, 0x40800000    # 4.0f

    .line 2994
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v2, p6

    mul-float/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2996
    :cond_6
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 2997
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_7

    .line 2999
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3000
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    if-nez p5, :cond_a

    if-eqz v1, :cond_a

    .line 3004
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3005
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3006
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3009
    :cond_8
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_9

    .line 3011
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3012
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    sget-object p4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, v3, v3, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3013
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3015
    :cond_9
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_a

    .line 3017
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3018
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a
    :goto_0
    return-void
.end method

.method private drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    .line 5036
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 5037
    :goto_1
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_2

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-nez v8, :cond_3

    :cond_2
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_28

    .line 5038
    :cond_3
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v8, :cond_4

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-nez v8, :cond_4

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    sub-float v8, v9, v8

    goto :goto_2

    :cond_4
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    :goto_2
    const/16 v10, 0xff

    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz p7, :cond_6

    .line 5043
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    if-nez v13, :cond_5

    .line 5044
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    .line 5045
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5046
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5047
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 5048
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5050
    :cond_5
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    .line 5051
    iget-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 5052
    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    .line 5053
    invoke-static {v13, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    .line 5054
    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v11

    .line 5051
    invoke-static {v15, v6, v13}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 5057
    :cond_6
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v6, :cond_a

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    if-nez v6, :cond_a

    .line 5058
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_7

    .line 5059
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    .line 5061
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_8

    .line 5062
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounterMuted:I

    goto :goto_3

    :cond_8
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounter:I

    :goto_3
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    .line 5063
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 5064
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p2, :cond_9

    const/16 v7, 0x1e

    :goto_4
    move v10, v7

    goto :goto_5

    :cond_9
    const/16 v7, 0x28

    goto :goto_4

    :goto_5
    const/16 v16, 0x1

    goto :goto_8

    :cond_a
    if-nez p2, :cond_c

    .line 5068
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v6, :cond_b

    goto :goto_6

    :cond_b
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    goto :goto_7

    :cond_c
    :goto_6
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    :goto_7
    move/from16 v16, v7

    .line 5071
    :goto_8
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    const/high16 v15, 0x40400000    # 3.0f

    const v17, 0x40caa7f0    # 6.333f

    const v18, 0x412553f8    # 10.333f

    move/from16 v19, v9

    if-eqz v7, :cond_d

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v9, :cond_e

    :cond_d
    const p2, 0x41a553f8    # 20.666f

    const v21, 0x414aa7f0    # 12.666f

    goto/16 :goto_12

    .line 5118
    :cond_e
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v9, v19, v7

    int-to-float v7, v10

    mul-float/2addr v9, v7

    float-to-int v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5119
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v9, v19, v9

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-float v7, v8, v12

    cmpl-float v9, v7, v19

    if-lez v9, :cond_f

    move/from16 v9, v19

    goto :goto_9

    :cond_f
    move v9, v7

    :goto_9
    int-to-float v3, v3

    mul-float/2addr v3, v9

    move/from16 v10, p5

    int-to-float v10, v10

    sub-float v11, v19, v9

    mul-float/2addr v10, v11

    add-float/2addr v3, v10

    .line 5128
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    move/from16 v20, v12

    int-to-float v12, v2

    const p2, 0x41a553f8    # 20.666f

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    int-to-float v13, v13

    mul-float/2addr v13, v9

    add-float/2addr v13, v3

    const v21, 0x414aa7f0    # 12.666f

    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    int-to-float v14, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v2, v14

    int-to-float v2, v2

    invoke-virtual {v10, v3, v12, v13, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v10, v8, v2

    const v13, 0x3dcccccd    # 0.1f

    if-gtz v10, :cond_10

    .line 5132
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    :goto_a
    mul-float/2addr v2, v13

    add-float v2, v2, v19

    goto :goto_b

    .line 5134
    :cond_10
    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float/2addr v8, v2

    mul-float v8, v8, v20

    sub-float v2, v19, v8

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_a

    .line 5137
    :goto_b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    mul-float/2addr v2, v4

    .line 5138
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v1, v2, v2, v4, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz v5, :cond_15

    .line 5140
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 5141
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v2, :cond_12

    .line 5142
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_c

    .line 5144
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 5146
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v2, :cond_13

    .line 5147
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 5149
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 5151
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_16

    .line 5153
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_d

    .line 5156
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p7, :cond_16

    .line 5158
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5161
    :cond_16
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_17

    .line 5162
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5163
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float/2addr v2, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v4, v12

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5164
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 5165
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 5168
    :cond_17
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 5169
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    int-to-float v5, v2

    mul-float v6, v5, v9

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5170
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    const/high16 v6, 0x41880000    # 17.0f

    if-eqz v4, :cond_19

    .line 5171
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5172
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v4, v3

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    if-eqz v7, :cond_18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_e

    :cond_18
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    :goto_e
    int-to-float v7, v7

    mul-float/2addr v7, v11

    add-float/2addr v7, v12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5173
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 5174
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_10

    .line 5175
    :cond_19
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1b

    .line 5176
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5177
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v4, v3

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    if-eqz v7, :cond_1a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_f

    :cond_1a
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    :goto_f
    int-to-float v7, v7

    mul-float/2addr v7, v11

    add-float/2addr v7, v12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5178
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 5179
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 5182
    :cond_1b
    :goto_10
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1d

    .line 5183
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    mul-float/2addr v5, v11

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5184
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5185
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v3, v4

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    if-eqz v4, :cond_1c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    goto :goto_11

    :cond_1c
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_11
    int-to-float v4, v4

    mul-float/2addr v4, v9

    add-float/2addr v4, v12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5186
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 5187
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 5189
    :cond_1d
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5190
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_16

    .line 5072
    :goto_12
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v9, :cond_1e

    goto :goto_13

    :cond_1e
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 5073
    :goto_13
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v9, v19, v9

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5074
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v10, v19, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5077
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v2

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    add-int/2addr v12, v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v2, v13

    int-to-float v2, v2

    invoke-virtual {v9, v10, v11, v12, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5079
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    cmpl-float v9, v4, v19

    if-eqz v9, :cond_1f

    .line 5081
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-virtual {v1, v4, v4, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1f
    cmpl-float v4, v8, v19

    if-eqz v4, :cond_20

    .line 5084
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v1, v8, v8, v4, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_20
    if-eqz v5, :cond_25

    .line 5088
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v4, :cond_21

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_21

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 5089
    :cond_21
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v4, :cond_22

    .line 5090
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_14

    .line 5092
    :cond_22
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 5094
    :goto_14
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v4, :cond_23

    .line 5095
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 5097
    :cond_23
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v5, v8}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 5099
    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_26

    .line 5101
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_15

    .line 5104
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p7, :cond_26

    .line 5106
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_26
    :goto_15
    if-eqz v7, :cond_27

    .line 5110
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5111
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v11, v4

    invoke-virtual {v1, v3, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5112
    invoke-virtual {v7, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 5113
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 5116
    :cond_27
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_16
    if-eqz v16, :cond_28

    .line 5193
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_28
    return-void
.end method

.method private findFolderTopMessage()Lorg/telegram/messenger/MessageObject;
    .locals 10

    .line 3076
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3080
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3081
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3082
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object v4, v1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_5

    .line 3083
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 3084
    iget v7, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    if-eqz v7, :cond_4

    .line 3086
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 3087
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_3

    if-eqz v4, :cond_2

    .line 3088
    iget-object v8, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v8, v9, :cond_3

    :cond_2
    move-object v4, v7

    .line 3091
    :cond_3
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->pinnedNum:I

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v4

    :cond_6
    return-object v1
.end method

.method private formatArchivedDialogNames()Ljava/lang/CharSequence;
    .locals 14

    .line 1055
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 1056
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1057
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 1058
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1059
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, ", "

    if-ge v5, v3, :cond_9

    .line 1060
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1063
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v8, v9}, Lorg/telegram/messenger/MessagesController;->isHiddenByUndo(J)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_3

    .line 1066
    :cond_0
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 1067
    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1069
    iget-wide v10, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v9

    goto :goto_1

    .line 1072
    :cond_2
    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1073
    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    goto :goto_1

    .line 1075
    :cond_3
    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_1
    const/16 v10, 0x20

    const/16 v11, 0xa

    if-eqz v9, :cond_4

    .line 1080
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_8

    .line 1082
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1083
    sget v8, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1085
    :cond_5
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v9, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1090
    :goto_2
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1091
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1093
    :cond_6
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 1094
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    .line 1095
    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1096
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v7, :cond_7

    .line 1097
    new-instance v7, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameArchived:I

    iget-object v12, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-direct {v7, v8, v4, v11}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    const/16 v8, 0x21

    invoke-virtual {v2, v7, v9, v10, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1099
    :cond_7
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x96

    if-le v7, v8, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1103
    :cond_9
    :goto_4
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->getTotalStoriesCount(Z)I

    move-result v0

    if-lez v0, :cond_b

    .line 1105
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->getTotalStoriesCount(Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1106
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 1107
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1109
    :cond_a
    const-string v1, "Stories"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1111
    :cond_b
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 2864
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 2865
    const-string/jumbo v2, "\u2069"

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    return-object v0

    .line 2880
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    .line 2876
    :cond_1
    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p3, ": "

    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    .line 2872
    :cond_2
    const-string/jumbo p1, "\u2068"

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    .line 2868
    :cond_3
    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p3, ": \u2068"

    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private formatTopicsNames()Ljava/lang/CharSequence;
    .locals 4

    .line 2941
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->forumFormattedNames:Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;

    if-nez v0, :cond_0

    .line 2942
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->forumFormattedNames:Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;

    .line 2945
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->forumFormattedNames:Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->-$$Nest$mformatTopicsNames(Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2946
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->forumFormattedNames:Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;

    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicStartIndex:I

    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    .line 2947
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicEndIndex:I

    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    .line 2948
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    .line 2949
    iget-object v0, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formattedNames:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;
    .locals 3

    .line 6259
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 6260
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColor:[I

    .line 6261
    new-array v0, v0, [Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    .line 6263
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColor:[I

    aget v0, v0, p1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 6264
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColor:[I

    aput p2, v2, p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    aput-object v1, v0, p1

    .line 6266
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    aget-object p1, p2, p1

    return-object p1
.end method

.method private getCaptionMessage()Lorg/telegram/messenger/MessageObject;
    .locals 6

    .line 5435
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5436
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    .line 5444
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 5445
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_3

    .line 5446
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 5448
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    move-object v3, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-le v2, v0, :cond_5

    return-object v1

    :cond_5
    return-object v3
.end method

.method private getCollapsedHeight()I
    .locals 2

    .line 973
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    :goto_0
    int-to-float v0, v0

    goto :goto_2

    :cond_1
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    goto :goto_0

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 977
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x41a00000    # 20.0f

    .line 978
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 980
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 981
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->addForumHeightForTags:I

    :goto_3
    int-to-float v1, v1

    goto :goto_4

    :cond_5
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->addHeightForTags:I

    goto :goto_3

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method private getPaintReorderGradient()Landroid/graphics/Paint;
    .locals 11

    .line 4748
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 4749
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderGradientLastColor:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderGradientPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 4750
    :cond_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderGradientLastColor:I

    .line 4752
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderGradientPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 4753
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderGradientPaint:Landroid/graphics/Paint;

    .line 4756
    :cond_1
    new-instance v3, Landroid/graphics/LinearGradient;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v6, v1

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v8

    const/4 v0, 0x2

    new-array v9, v0, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 4757
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4759
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderGradientPaint:Landroid/graphics/Paint;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getTimeTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 4733
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isCounterMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaintBold:Landroid/text/TextPaint;

    return-object v0

    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaintBoldAccent:Landroid/text/TextPaint;

    return-object v0

    :cond_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method private getTopicId()I
    .locals 1

    .line 3590
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    return v0
.end method

.method private isCounterMuted()Z
    .locals 1

    .line 4737
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_0

    .line 4738
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    return v0

    .line 4740
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    return v0
.end method

.method private isOnline()Z
    .locals 5

    .line 761
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 764
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    if-eqz v0, :cond_1

    return v1

    .line 767
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 770
    :cond_2
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v0, :cond_3

    .line 771
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 775
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_4

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    if-le v0, v3, :cond_4

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method private synthetic lambda$createStatusDrawableAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5207
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    .line 5208
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onDraw$2()V
    .locals 1

    .line 4170
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 4171
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonClicked(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDraw$3()V
    .locals 1

    .line 4175
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 4176
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonLongPress(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPremiumBlocked$5([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 6277
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->updatePremiumBlocked(Z)V

    return-void
.end method

.method private synthetic lambda$update$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3469
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 3470
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$update$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3531
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 3532
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private setThumb(ILorg/telegram/messenger/MessageObject;)V
    .locals 11

    .line 5503
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 5504
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    .line 5505
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isStoryMedia()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5506
    iget-object v2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_d

    .line 5507
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_d

    .line 5508
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_0

    .line 5509
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    move-object v1, v3

    goto :goto_0

    .line 5511
    :cond_0
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_1

    .line 5512
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object v1, v2

    .line 5520
    :cond_1
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getStrippedPhotoSize(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v2, 0x28

    .line 5522
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 5524
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v3, v10, v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_4

    .line 5529
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move-object v4, v2

    :cond_5
    if-eqz v2, :cond_d

    .line 5534
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v10

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v5

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 5535
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_d

    add-int/2addr v0, v5

    .line 5536
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5537
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v5

    goto :goto_4

    :cond_9
    move v3, v10

    :goto_4
    aput-boolean v3, v0, p1

    .line 5538
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v3

    aput-boolean v3, v0, p1

    .line 5539
    iget v0, p2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v0, v5, :cond_a

    if-eqz v4, :cond_a

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_5

    :cond_a
    move v0, v10

    .line 5540
    :goto_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "5_5_b"

    goto :goto_6

    :cond_b
    const-string v3, "20_20"

    .line 5541
    :goto_6
    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, p1

    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-static {v2, v1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    int-to-long v6, v0

    move-object v0, v5

    move-wide v5, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v2

    move-object v8, p2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 5542
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_c

    const/high16 v1, 0x41900000    # 18.0f

    :goto_7
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_8

    :cond_c
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_7

    :goto_8
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 5543
    iput-boolean v10, p0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    :cond_d
    return-void
.end method

.method private setThumb(ILorg/telegram/tgnet/TLRPC$MessageMedia;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 5552
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 5553
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5554
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    :goto_0
    move v5, v4

    goto :goto_1

    .line 5555
    :cond_0
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_1

    .line 5556
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    .line 5557
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 5558
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    move-object/from16 v17, v5

    move v5, v2

    move-object/from16 v2, v17

    goto :goto_1

    :cond_1
    move-object v1, v3

    move-object v2, v1

    goto :goto_0

    .line 5561
    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getStrippedPhotoSize(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    move-result-object v6

    if-nez v6, :cond_2

    const/16 v6, 0x28

    .line 5563
    invoke-static {v2, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 5565
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v2, v7, v4, v3, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-ne v6, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_4

    .line 5570
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v9, v7

    invoke-virtual {v2, v8, v9, v10}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(IJ)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move-object v3, v6

    :cond_5
    if-eqz v6, :cond_9

    .line 5575
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-nez v2, :cond_7

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v8

    :goto_4
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 5576
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    const/4 v7, 0x3

    if-ge v2, v7, :cond_9

    add-int/2addr v2, v8

    .line 5577
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5578
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    aput-boolean v5, v2, p1

    .line 5579
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    aput-boolean v4, v2, p1

    if-nez v5, :cond_8

    if-eqz v3, :cond_8

    .line 5580
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_5

    :cond_8
    move v2, v4

    .line 5582
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v7, v5, p1

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-static {v6, v1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    int-to-long v12, v2

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/16 v16, 0x0

    const-string v9, "20_20"

    const/4 v14, 0x0

    move-object v11, v9

    invoke-virtual/range {v7 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 5583
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 5584
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    :cond_9
    return-void
.end method

.method private setThumb(ILorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 12

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 5592
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 5593
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v2, v0, :cond_1

    const/4 v0, 0x1

    add-int/2addr v2, v0

    .line 5594
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5595
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    aput-boolean v1, v2, p1

    .line 5596
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    aput-boolean v0, v2, p1

    .line 5599
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v0, p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p2, v0}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    int-to-long v7, v1

    iget-object v10, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const-string v4, "2_2_b"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 5600
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p1, p2, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 5601
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePremiumBlocked(Z)V
    .locals 6

    .line 6284
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unsubscribePremiumBlocked:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6285
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlocked:Z

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    iget-wide v1, p0, Lorg/telegram/ui/Cells/DialogCell;->starsPriceBlocked:J

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 6286
    :cond_2
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlocked:Z

    .line 6287
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->starsPriceBlocked:J

    if-nez p1, :cond_4

    .line 6289
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlocked:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 6290
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->starsBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->starsPriceBlocked:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 6292
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private updateThumbsPosition()V
    .locals 7

    .line 2887
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_6

    .line 2888
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2889
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    :goto_1
    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 2894
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2895
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_6

    .line 2896
    move-object v3, v2

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;

    if-eqz v3, :cond_5

    .line 2897
    array-length v4, v3

    if-lez v4, :cond_5

    .line 2898
    check-cast v2, Landroid/text/Spanned;

    aget-object v3, v3, v6

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    move v2, v6

    .line 2903
    :cond_3
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 2904
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2905
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-eqz v0, :cond_4

    .line 2906
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawGiftIcon:Z

    if-nez v2, :cond_4

    const/high16 v2, 0x40400000    # 3.0f

    .line 2907
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    .line 2909
    :cond_4
    :goto_2
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v6, v2, :cond_6

    .line 2910
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v6

    add-int v3, v1, v0

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    add-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    .line 2911
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aput-boolean v4, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v0, v6

    :goto_3
    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    .line 2915
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aput-boolean v6, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2920
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    return-void
.end method


# virtual methods
.method public allowBotOpenButton(ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Cells/DialogCell;
    .locals 0

    .line 437
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->allowBotOpenButton:Z

    .line 438
    iput-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->onOpenButtonClick:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method protected allowCaching()Z
    .locals 2

    .line 6298
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public animateArchiveAvatar()V
    .locals 2

    .line 3044
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3047
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    const/4 v0, 0x0

    .line 3048
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    .line 3049
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3050
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 3051
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public buildLayout()V
    .locals 53

    move-object/from16 v1, p0

    .line 1137
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->update()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1142
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/messenger/SharedConfig;->PASSCODE_TYPE_PIN:I

    .line 1148
    :cond_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1149
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1150
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v7

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1151
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1153
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    const/4 v8, 0x1

    aget-object v0, v0, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1154
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1155
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1156
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    const-string v5, "fonts/rregular.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1157
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1159
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message_threeLines:I

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1160
    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    const/16 v0, 0x12

    .line 1161
    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    .line 1174
    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 1184
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v0, :cond_3

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_4

    .line 1185
    :cond_3
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v11, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v0

    int-to-long v13, v0

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JJZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v9

    .line 1187
    :goto_1
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v6

    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1190
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1191
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 1192
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    .line 1193
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    .line 1194
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    .line 1195
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    .line 1196
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawGiftIcon:Z

    .line 1197
    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1198
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1199
    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 1200
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 1201
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1203
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-nez v5, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    move v5, v7

    :goto_2
    const/4 v6, -0x1

    .line 1205
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    .line 1207
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1208
    iput-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    .line 1210
    :cond_6
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/DialogCell;->setOpenBotButton(Z)V

    .line 1213
    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    const/4 v11, 0x2

    if-nez v10, :cond_7

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v10, :cond_9

    :cond_7
    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v10, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_3

    .line 1220
    :cond_8
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    move v10, v11

    goto :goto_4

    .line 1216
    :cond_9
    :goto_3
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    move v10, v8

    .line 1223
    :goto_4
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v12, :cond_a

    .line 1224
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->updateTranslation()Z

    .line 1226
    :cond_a
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v12, :cond_b

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_b
    move-object v12, v9

    .line 1227
    :goto_5
    instance-of v13, v12, Landroid/text/Spannable;

    if-eqz v13, :cond_e

    .line 1228
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1229
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const-class v14, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    invoke-interface {v13, v7, v12, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    array-length v14, v12

    move v15, v7

    :goto_6
    if-ge v15, v14, :cond_c

    move/from16 v16, v2

    aget-object v2, v12, v15

    .line 1230
    invoke-interface {v13, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    goto :goto_6

    :cond_c
    move/from16 v16, v2

    .line 1231
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v12, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-interface {v13, v7, v2, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/URLSpanNoUnderline;

    array-length v12, v2

    move v14, v7

    :goto_7
    if-ge v14, v12, :cond_d

    aget-object v15, v2, v14

    .line 1232
    invoke-interface {v13, v15}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_d
    move-object v12, v13

    goto :goto_8

    :cond_e
    move/from16 v16, v2

    .line 1235
    :goto_8
    iput-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    .line 1237
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->isShareToStoryCell:Z

    if-eqz v2, :cond_f

    .line 1238
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    move v2, v7

    move v5, v2

    goto :goto_9

    :cond_f
    move v2, v8

    .line 1243
    :goto_9
    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/16 v14, 0x20

    const-string v15, "%d"

    move/from16 v17, v3

    const/16 v3, 0xa

    const/high16 v18, 0x41b00000    # 22.0f

    const/high16 v19, 0x41900000    # 18.0f

    move/from16 v20, v4

    const/16 v4, 0x96

    const/16 v21, 0x4

    const/16 v6, 0x21

    const-string v23, ""

    if-eqz v13, :cond_24

    .line 1244
    iget v0, v13, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v0, v11, :cond_14

    .line 1245
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1246
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_10

    goto :goto_a

    :cond_10
    const/high16 v0, 0x41840000    # 16.5f

    .line 1256
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1257
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_11

    .line 1258
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1259
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1261
    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v0, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1262
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    :cond_12
    :goto_a
    const/high16 v0, 0x41480000    # 12.5f

    .line 1247
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1248
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_13

    .line 1249
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1250
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1252
    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v5, v5, 0x6

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v0, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v0, v5

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1253
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1266
    :cond_14
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v0, :cond_15

    iget-boolean v0, v13, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    if-eqz v0, :cond_15

    move v0, v8

    goto :goto_b

    :cond_15
    move v0, v7

    :goto_b
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 1267
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_16

    goto :goto_c

    .line 1274
    :cond_16
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_17

    .line 1275
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1277
    :cond_17
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1268
    :cond_18
    :goto_c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_19

    .line 1269
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1271
    :cond_19
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1282
    :goto_d
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v5, v8, :cond_1e

    .line 1283
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1286
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v12, v5, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v12, :cond_1a

    .line 1287
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v12

    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1288
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-direct {v1, v10, v5, v9}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 1289
    new-instance v10, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v12, v13}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v5, v10, v7, v12, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    .line 1291
    :cond_1a
    iget-object v5, v5, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1292
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_1b

    .line 1293
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1295
    :cond_1b
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v6, :cond_1d

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v6, :cond_1c

    goto :goto_e

    .line 1298
    :cond_1c
    invoke-virtual {v5, v3, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v10, v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_f

    .line 1296
    :cond_1d
    :goto_e
    invoke-direct {v1, v10, v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 1301
    :goto_f
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    move v6, v7

    goto :goto_10

    .line 1303
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1304
    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v0, :cond_1f

    .line 1305
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v6

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    :cond_1f
    move v6, v8

    move-object v0, v9

    .line 1309
    :goto_10
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    int-to-long v12, v10

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v10

    .line 1311
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v12, v12, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v12, :cond_20

    .line 1312
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1313
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v12, v13, v7

    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_11

    .line 1315
    :cond_20
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object v12, v9

    .line 1318
    :goto_11
    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v15, v13, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    if-nez v15, :cond_21

    .line 1319
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1320
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1321
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    goto :goto_12

    :cond_21
    if-ne v15, v11, :cond_22

    .line 1323
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1324
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1325
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    :cond_22
    if-ne v15, v8, :cond_23

    .line 1327
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1328
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1329
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    .line 1331
    :cond_23
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1332
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1333
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1336
    :goto_12
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1337
    iget-object v13, v13, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    move v7, v2

    move/from16 v24, v3

    move-object v3, v9

    move-object/from16 v22, v3

    move-object/from16 v30, v23

    const/4 v11, -0x1

    :goto_13
    move-object v2, v0

    goto/16 :goto_82

    .line 1340
    :cond_24
    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v13, :cond_25

    iget-boolean v13, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v13, :cond_25

    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v13, :cond_25

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v13, :cond_25

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_25

    .line 1341
    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    :goto_14
    move/from16 v24, v3

    goto :goto_15

    :cond_25
    move-object v13, v9

    goto :goto_14

    .line 1344
    :goto_15
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_28

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_26

    goto :goto_16

    .line 1351
    :cond_26
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_27

    .line 1352
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_17

    .line 1354
    :cond_27
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_17

    .line 1345
    :cond_28
    :goto_16
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_29

    .line 1346
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_17

    .line 1348
    :cond_29
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1358
    :goto_17
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move/from16 v25, v5

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2f

    .line 1359
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v3, :cond_2b

    .line 1360
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1361
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_2d

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_2a

    goto :goto_19

    :cond_2a
    const/high16 v3, 0x41840000    # 16.5f

    .line 1371
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1372
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_2c

    .line 1373
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1374
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v26, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    add-int v3, v3, v26

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    :cond_2b
    :goto_18
    move-wide/from16 v30, v4

    move-object/from16 v32, v12

    goto/16 :goto_25

    .line 1376
    :cond_2c
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1377
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_18

    :cond_2d
    :goto_19
    const/high16 v3, 0x41480000    # 12.5f

    .line 1362
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1363
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_2e

    .line 1364
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1365
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v3, v6

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_18

    .line 1367
    :cond_2e
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v6, v6, 0x6

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1368
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_18

    .line 1382
    :cond_2f
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v3, :cond_2b

    .line 1384
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_37

    .line 1385
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getBotVerificationIcon(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v27

    .line 1386
    sget-object v3, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v3, v6}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v3

    .line 1387
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v14, v6, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    if-eqz v14, :cond_30

    .line 1388
    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1389
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    :goto_1a
    move-wide/from16 v30, v4

    goto/16 :goto_1d

    .line 1390
    :cond_30
    iget-boolean v14, v6, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    if-eqz v14, :cond_31

    .line 1391
    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1392
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_1a

    .line 1393
    :cond_31
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v30

    cmp-long v6, v30, v4

    if-eqz v6, :cond_32

    .line 1394
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    .line 1395
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1396
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v6, v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    .line 1397
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    move-wide/from16 v30, v4

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 1398
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v4

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto :goto_1d

    :cond_32
    move-wide/from16 v30, v4

    if-eqz v3, :cond_33

    .line 1399
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v4, :cond_33

    .line 1400
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    .line 1401
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1402
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v5, v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    .line 1403
    invoke-virtual {v3}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 1404
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v8, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto :goto_1d

    .line 1406
    :cond_33
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v3, :cond_34

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v4, :cond_34

    move v4, v8

    goto :goto_1b

    :cond_34
    move v4, v7

    :goto_1b
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v3, :cond_35

    .line 1407
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->bot_verification_icon:J

    cmp-long v3, v3, v30

    if-eqz v3, :cond_35

    move v3, v8

    goto :goto_1c

    :cond_35
    move v3, v7

    :goto_1c
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    :goto_1d
    move-object/from16 v32, v12

    :cond_36
    :goto_1e
    move-wide/from16 v3, v27

    goto/16 :goto_24

    :cond_37
    move-wide/from16 v30, v4

    .line 1409
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_42

    .line 1410
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getBotVerificationIcon(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v27

    .line 1411
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$User;->scam:Z

    if-eqz v4, :cond_38

    .line 1412
    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1413
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_21

    .line 1414
    :cond_38
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$User;->fake:Z

    if-eqz v4, :cond_39

    .line 1415
    iput v11, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1416
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_21

    .line 1418
    :cond_39
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v4, :cond_3a

    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v5, :cond_3a

    move v5, v8

    goto :goto_1f

    :cond_3a
    move v5, v7

    :goto_1f
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v4, :cond_3b

    .line 1419
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot_verification_icon:J

    cmp-long v3, v3, v30

    if-eqz v3, :cond_3b

    move v3, v8

    goto :goto_20

    :cond_3b
    move v3, v7

    :goto_20
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    .line 1421
    :goto_21
    sget-object v3, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v3

    .line 1422
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v6, v4, v30

    if-eqz v6, :cond_3c

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v32

    cmp-long v4, v4, v32

    if-eqz v4, :cond_3c

    if-eqz v3, :cond_3c

    move v4, v8

    goto :goto_22

    :cond_3c
    move v4, v7

    :goto_22
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    .line 1423
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v32, v12

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v4, v4, v11

    if-eqz v4, :cond_3e

    cmp-long v4, v11, v30

    if-eqz v4, :cond_3e

    move v4, v8

    goto :goto_23

    :cond_3d
    move-object/from16 v32, v12

    :cond_3e
    move v4, v7

    :goto_23
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v4, :cond_41

    .line 1425
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v4

    .line 1426
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v6, v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    if-eqz v4, :cond_3f

    .line 1428
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1429
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 1430
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v4

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto/16 :goto_1e

    .line 1432
    :cond_3f
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    if-eqz v4, :cond_40

    .line 1433
    invoke-virtual {v3}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 1434
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v8, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto/16 :goto_1e

    .line 1436
    :cond_40
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1437
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 1438
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v7, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto/16 :goto_1e

    .line 1441
    :cond_41
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    if-eqz v4, :cond_36

    .line 1442
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 1443
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v8, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto/16 :goto_1e

    :cond_42
    move-object/from16 v32, v12

    move-wide/from16 v3, v30

    :goto_24
    cmp-long v5, v3, v30

    if-eqz v5, :cond_43

    .line 1446
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    if-eqz v5, :cond_43

    .line 1447
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5, v3, v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 1452
    :cond_43
    :goto_25
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v3, :cond_44

    .line 1453
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_44

    .line 1454
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1457
    :cond_44
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v4, :cond_47

    .line 1458
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-wide v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v4, v5, v6, v11, v12}, Lorg/telegram/messenger/MediaDataController;->getDraftVoice(JJ)Lorg/telegram/messenger/MediaDataController$DraftVoice;

    move-result-object v4

    if-eqz v4, :cond_45

    move v4, v8

    goto :goto_26

    :cond_45
    move v4, v7

    :goto_26
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    if-nez v4, :cond_46

    .line 1459
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-wide v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v4, v5, v6, v11, v12}, Lorg/telegram/messenger/MediaDataController;->getDraft(JJ)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v4

    goto :goto_27

    :cond_46
    move-object v4, v9

    :goto_27
    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v4, :cond_4c

    .line 1460
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1461
    iput-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_2b

    .line 1463
    :cond_47
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v4, :cond_49

    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialogCell:Z

    if-eqz v4, :cond_48

    goto :goto_28

    .line 1467
    :cond_48
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    .line 1468
    iput-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_2b

    .line 1464
    :cond_49
    :goto_28
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-wide v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v4, v5, v6, v11, v12}, Lorg/telegram/messenger/MediaDataController;->getDraftVoice(JJ)Lorg/telegram/messenger/MediaDataController$DraftVoice;

    move-result-object v4

    if-eqz v4, :cond_4a

    move v4, v8

    goto :goto_29

    :cond_4a
    move v4, v7

    :goto_29
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    if-nez v4, :cond_4b

    .line 1465
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-wide v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    move-wide/from16 v11, v30

    invoke-virtual {v4, v5, v6, v11, v12}, Lorg/telegram/messenger/MediaDataController;->getDraft(JJ)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v4

    goto :goto_2a

    :cond_4b
    move-object v4, v9

    :goto_2a
    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1471
    :cond_4c
    :goto_2b
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    if-nez v4, :cond_4d

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v5, :cond_4f

    :cond_4d
    if-nez v4, :cond_4e

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v4, :cond_4e

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    if-eqz v4, :cond_52

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->reply_to_msg_id:I

    if-eqz v4, :cond_52

    :cond_4e
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v4, :cond_4f

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    if-le v3, v4, :cond_4f

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v3, :cond_52

    :cond_4f
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1472
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_50

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v4, :cond_50

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v3, :cond_52

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v3, :cond_52

    :cond_50
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_51

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v4, :cond_52

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v4, :cond_52

    :cond_51
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->forbidDraft:Z

    if-nez v4, :cond_52

    .line 1473
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v3, :cond_53

    .line 1474
    :cond_52
    iput-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1475
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    .line 1478
    :cond_53
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    const-string v5, "d "

    const/4 v6, 0x3

    const-string v11, " "

    if-eqz v3, :cond_5a

    .line 1479
    iput-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1480
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    .line 1481
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1482
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1483
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_54

    move-object v0, v9

    goto :goto_2c

    :cond_54
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1484
    :goto_2c
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/Cells/DialogCell;->addSenderAvatar(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1486
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_56

    if-ne v10, v8, :cond_55

    const/4 v10, 0x2

    :cond_55
    move-object v0, v9

    if-ne v10, v6, :cond_56

    move/from16 v10, v21

    .line 1495
    :cond_56
    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->formatTopicsNames()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1496
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v12, :cond_57

    iget v12, v12, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2d

    :cond_57
    move-object v12, v9

    .line 1497
    :goto_2d
    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v13, :cond_58

    invoke-virtual {v1, v10, v12, v0, v8}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(ILjava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    goto :goto_2e

    :cond_58
    move-object/from16 v10, v23

    .line 1498
    :goto_2e
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    if-eqz v12, :cond_59

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ltz v12, :cond_59

    if-eqz v0, :cond_59

    .line 1499
    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    .line 1500
    new-instance v12, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v12, v13, v14}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    add-int/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v10, v12, v7, v13, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1503
    :cond_59
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v12, v12, v13

    iput-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move-object/from16 v22, v9

    move-object v12, v10

    move-object v6, v11

    move-object v13, v15

    move-object/from16 v4, v23

    const/4 v11, -0x1

    move-object v9, v5

    move v10, v8

    :goto_2f
    move/from16 v5, v25

    goto/16 :goto_68

    .line 1504
    :cond_5a
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->customMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 1505
    iput-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1506
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    .line 1507
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->customMessage:Ljava/lang/String;

    .line 1509
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v10

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move v10, v8

    move-object v0, v9

    move-object v12, v0

    move-object/from16 v22, v12

    move-object v6, v11

    move-object v13, v15

    move-object/from16 v4, v23

    const/4 v11, -0x1

    move-object v9, v5

    goto :goto_2f

    :cond_5b
    if-eqz v0, :cond_5f

    .line 1512
    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 1513
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move-object/from16 v28, v5

    iget-wide v4, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v14

    move-object/from16 v33, v13

    int-to-long v12, v14

    invoke-virtual {v3, v4, v5, v12, v13}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    .line 1514
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 1517
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_30

    :cond_5c
    move v3, v7

    .line 1519
    :goto_30
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1521
    const-string v5, "..."

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v5, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1522
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v12, 0x5

    if-ne v5, v12, :cond_5d

    .line 1523
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v12, "**oo**"

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    goto :goto_31

    :cond_5d
    const/4 v5, -0x1

    :goto_31
    if-ltz v5, :cond_5e

    .line 1526
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-direct {v3, v12}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    add-int/lit8 v12, v5, 0x6

    invoke-virtual {v0, v3, v5, v12, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_32

    .line 1528
    :cond_5e
    invoke-virtual {v4, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v12, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-direct {v12, v3}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v0, v12, v7, v8, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_32
    move v3, v5

    move v0, v7

    const/4 v5, -0x1

    goto :goto_33

    :cond_5f
    move-object/from16 v28, v5

    move-object/from16 v33, v13

    .line 1534
    iput-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    const/4 v5, -0x1

    .line 1535
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    move v3, v5

    move v0, v8

    move-object/from16 v4, v23

    .line 1537
    :goto_33
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    if-nez v12, :cond_60

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v12, :cond_61

    :cond_60
    move-object/from16 v22, v9

    move-object v6, v11

    move-object v13, v15

    move-object/from16 v9, v28

    move v11, v10

    goto/16 :goto_63

    .line 1577
    :cond_61
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v12, :cond_62

    .line 1578
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v10

    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1579
    sget v5, Lorg/telegram/messenger/R$string;->HistoryCleared:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_34
    move v10, v0

    move-object v0, v9

    move-object v12, v0

    move-object/from16 v22, v12

    move-object v6, v11

    move-object v13, v15

    move-object/from16 v9, v28

    move v11, v3

    move-object v3, v5

    goto/16 :goto_2f

    .line 1580
    :cond_62
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v12, :cond_6b

    .line 1581
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_63

    .line 1582
    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_34

    .line 1583
    :cond_63
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v5, :cond_69

    .line 1584
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v10, v12

    iput-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1585
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v10, :cond_64

    .line 1586
    sget v5, Lorg/telegram/messenger/R$string;->EncryptionProcessing:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    .line 1587
    :cond_64
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v10, :cond_65

    .line 1588
    sget v5, Lorg/telegram/messenger/R$string;->AwaitingEncryption:I

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v10, v12, v7

    invoke-static {v5, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    .line 1589
    :cond_65
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v10, :cond_66

    .line 1590
    sget v5, Lorg/telegram/messenger/R$string;->EncryptionRejected:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    .line 1591
    :cond_66
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v10, :cond_68

    .line 1592
    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v32

    cmp-long v5, v12, v32

    if-nez v5, :cond_67

    .line 1593
    sget v5, Lorg/telegram/messenger/R$string;->EncryptedChatStartedOutgoing:I

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v10, v12, v7

    invoke-static {v5, v12}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    .line 1595
    :cond_67
    sget v5, Lorg/telegram/messenger/R$string;->EncryptedChatStartedIncoming:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    :cond_68
    move v10, v0

    move-object v0, v9

    move-object v12, v0

    move-object/from16 v22, v12

    move-object v6, v11

    move-object v13, v15

    move/from16 v5, v25

    move-object/from16 v9, v28

    move v11, v3

    move-object/from16 v3, v23

    goto/16 :goto_68

    .line 1599
    :cond_69
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-ne v5, v6, :cond_68

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1600
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_6a

    iget-boolean v2, v2, Lorg/telegram/ui/DialogsActivity;->isQuote:Z

    if-eqz v2, :cond_6a

    sget v2, Lorg/telegram/messenger/R$string;->SavedMessagesInfoQuote:I

    goto :goto_35

    :cond_6a
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessagesInfo:I

    :goto_35
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v10, v0

    move v5, v7

    move-object v0, v9

    move-object v12, v0

    move-object/from16 v22, v12

    move-object v6, v11

    move-object v13, v15

    move-object/from16 v9, v28

    move v11, v3

    move-object v3, v2

    move v2, v5

    goto/16 :goto_68

    .line 1608
    :cond_6b
    iget v12, v12, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v12

    .line 1611
    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v22, v9

    move/from16 v35, v10

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    .line 1612
    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v14

    if-eqz v14, :cond_6c

    .line 1613
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v14, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v9, v22

    goto :goto_36

    .line 1615
    :cond_6c
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v14, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 1617
    :goto_36
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    .line 1619
    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v10, :cond_6f

    iget-wide v13, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v30, 0x0

    cmp-long v13, v13, v30

    if-lez v13, :cond_6f

    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v13

    if-eqz v13, :cond_6f

    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v13, :cond_6f

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    if-eqz v13, :cond_6f

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6f

    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v13, :cond_6f

    .line 1620
    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    .line 1621
    iget-boolean v14, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->unread:Z

    if-eqz v14, :cond_6f

    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v36, v11

    iget-wide v10, v14, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v30, 0x0

    cmp-long v14, v10, v30

    if-eqz v14, :cond_70

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    iget-wide v5, v14, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v5, v10, v5

    if-eqz v5, :cond_70

    .line 1623
    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v5

    .line 1624
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v6, v6, v10

    iput-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1625
    iget-object v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v6, :cond_6d

    .line 1626
    sget v5, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v6, v10, v7

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v6, v8

    goto :goto_38

    .line 1628
    :cond_6d
    sget v6, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    new-array v10, v8, [Ljava/lang/Object;

    const-string v11, "**reaction**"

    aput-object v11, v10, v7

    invoke-static {v6, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1629
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1630
    const-string v13, "d"

    invoke-virtual {v6, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1632
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1633
    new-instance v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v13, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v5, :cond_6e

    move-object/from16 v5, v22

    goto :goto_37

    :cond_6e
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    :goto_37
    invoke-direct {v6, v13, v14, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v11, v6, v10, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v6, v8

    move-object v5, v11

    goto :goto_38

    :cond_6f
    move-object/from16 v36, v11

    :cond_70
    move v6, v7

    move-object/from16 v5, v23

    :goto_38
    if-eqz v6, :cond_71

    :goto_39
    move-object v13, v15

    move-object/from16 v10, v22

    move-object/from16 v9, v28

    move-object/from16 v6, v36

    goto/16 :goto_61

    .line 1641
    :cond_71
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v14, 0x2

    if-ne v5, v14, :cond_79

    .line 1642
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_78

    .line 1643
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_74

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v5, :cond_74

    .line 1644
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v5, :cond_72

    .line 1645
    const-string v2, "Subscribers"

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    .line 1647
    :cond_72
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 1648
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    .line 1650
    :cond_73
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    .line 1654
    :cond_74
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v5, :cond_75

    .line 1655
    const-string v2, "Members"

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    .line 1657
    :cond_75
    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v5, :cond_76

    .line 1658
    sget v2, Lorg/telegram/messenger/R$string;->MegaLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    .line 1659
    :cond_76
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 1660
    sget v2, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    .line 1662
    :cond_77
    sget v2, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    :cond_78
    move-object/from16 v2, v23

    .line 1669
    :goto_3a
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    :goto_3b
    move-object v5, v2

    move v2, v7

    move/from16 v25, v2

    goto/16 :goto_39

    :cond_79
    const/4 v6, 0x3

    if-ne v5, v6, :cond_7b

    .line 1672
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1673
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_7a

    iget-boolean v2, v2, Lorg/telegram/ui/DialogsActivity;->isQuote:Z

    if-eqz v2, :cond_7a

    sget v2, Lorg/telegram/messenger/R$string;->SavedMessagesInfoQuote:I

    goto :goto_3c

    :cond_7a
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessagesInfo:I

    :goto_3c
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 1676
    :cond_7b
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v5, :cond_7c

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v5, :cond_7c

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_7c

    .line 1678
    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    move v0, v7

    goto/16 :goto_39

    .line 1679
    :cond_7c
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v6, :cond_81

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_7d

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v5, :cond_81

    .line 1680
    :cond_7d
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_7e

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v5, :cond_7e

    move v5, v7

    move-object/from16 v12, v23

    goto :goto_3d

    .line 1683
    :cond_7e
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7f

    move-object v12, v5

    move/from16 v5, v25

    goto :goto_3d

    :cond_7f
    move/from16 v5, v25

    move-object/from16 v12, v32

    .line 1688
    :goto_3d
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v6, v6, v9

    iput-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1689
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v6, v6, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0x15

    if-ne v6, v9, :cond_80

    .line 1690
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1691
    invoke-direct {v1, v12}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    move/from16 v25, v5

    move-object v5, v6

    goto/16 :goto_39

    :cond_80
    move/from16 v25, v5

    move-object v5, v12

    goto/16 :goto_39

    .line 1694
    :cond_81
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1695
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1697
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-nez v5, :cond_82

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_82

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v5, :cond_82

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-nez v5, :cond_82

    .line 1698
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3e

    :cond_82
    move-object/from16 v5, v22

    .line 1700
    :goto_3e
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-eqz v6, :cond_84

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_84

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v6, :cond_84

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_84

    .line 1701
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-nez v6, :cond_83

    goto :goto_40

    :cond_83
    move-object v0, v12

    move-object v13, v15

    :goto_3f
    move-object/from16 v9, v28

    move-object/from16 v6, v36

    goto/16 :goto_5a

    :cond_84
    :goto_40
    if-nez v5, :cond_83

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_88

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide/16 v30, 0x0

    cmp-long v13, v10, v30

    if-lez v13, :cond_88

    move-object v13, v15

    if-eqz v9, :cond_85

    iget-wide v14, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v9, v14, v10

    if-eqz v9, :cond_89

    .line 1703
    :cond_85
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_86

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_86

    if-eqz v33, :cond_89

    :cond_86
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v6}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->isTopicCreateMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v6

    if-eqz v6, :cond_87

    goto :goto_42

    :cond_87
    :goto_41
    move-object v0, v12

    goto :goto_3f

    :cond_88
    move-object v13, v15

    :cond_89
    :goto_42
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_8a

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v14, 0x77628

    cmp-long v6, v9, v14

    if-nez v6, :cond_8a

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_8a

    .line 1704
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getForwardedFromId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_8a

    goto :goto_41

    .line 1756
    :cond_8a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x82

    if-nez v5, :cond_8b

    goto/16 :goto_55

    .line 1758
    :cond_8b
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 1759
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v9, :cond_8d

    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v10, :cond_8c

    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v10, :cond_8d

    :cond_8c
    :goto_43
    move-object v12, v9

    goto :goto_44

    .line 1762
    :cond_8d
    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_43

    .line 1764
    :goto_44
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    instance-of v5, v5, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v5, :cond_bb

    .line 1765
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v5

    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    neg-long v9, v9

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v11, v14, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v14

    invoke-virtual {v5, v9, v10, v14, v15}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v5

    if-eqz v5, :cond_bb

    .line 1767
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v7

    check-cast v9, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v9, v5}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    goto/16 :goto_55

    .line 1770
    :cond_8e
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v9, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v9, :cond_8f

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v9, :cond_8f

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v9, :cond_8f

    .line 1771
    sget v5, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_55

    .line 1772
    :cond_8f
    instance-of v9, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v9, :cond_93

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-nez v10, :cond_90

    if-nez v9, :cond_93

    :cond_90
    iget v9, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v9, :cond_93

    .line 1773
    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    if-eqz v9, :cond_91

    .line 1774
    sget v5, Lorg/telegram/messenger/R$string;->AttachVoiceExpired:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_55

    .line 1775
    :cond_91
    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    if-eqz v5, :cond_92

    .line 1776
    sget v5, Lorg/telegram/messenger/R$string;->AttachRoundExpired:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_55

    .line 1778
    :cond_92
    sget v5, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_55

    .line 1780
    :cond_93
    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-eqz v5, :cond_9f

    .line 1781
    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 1783
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v9, :cond_94

    move-object/from16 v9, v23

    goto :goto_45

    .line 1785
    :cond_94
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_95

    .line 1786
    const-string/jumbo v9, "\ud83d\udcf9 "

    goto :goto_45

    .line 1787
    :cond_95
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-eqz v9, :cond_96

    .line 1788
    const-string/jumbo v9, "\ud83c\udfa4 "

    goto :goto_45

    .line 1789
    :cond_96
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v9

    if-eqz v9, :cond_97

    .line 1790
    const-string/jumbo v9, "\ud83c\udfa7 "

    goto :goto_45

    .line 1791
    :cond_97
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v9

    if-eqz v9, :cond_98

    .line 1792
    const-string/jumbo v9, "\ud83d\uddbc "

    goto :goto_45

    .line 1794
    :cond_98
    const-string/jumbo v9, "\ud83d\udcce "

    .line 1796
    :goto_45
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v10

    if-eqz v10, :cond_9c

    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9c

    .line 1797
    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 1798
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v12, v12, 0x2f

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    .line 1799
    iget-boolean v12, v1, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v12, :cond_9a

    .line 1800
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_99

    int-to-float v11, v11

    .line 1803
    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const-string v14, ": "

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    sub-float/2addr v11, v12

    float-to-int v11, v11

    goto :goto_46

    .line 1801
    :cond_99
    throw v22

    :cond_9a
    :goto_46
    if-lez v11, :cond_9b

    .line 1805
    iget-boolean v12, v5, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlightCut:Z

    if-eqz v12, :cond_9b

    .line 1806
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v10, v5, v11, v12, v6}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1808
    :cond_9b
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    :goto_47
    move-object v12, v5

    goto/16 :goto_55

    .line 1810
    :cond_9c
    new-instance v10, Landroid/text/SpannableString;

    iget-object v11, v5, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-direct {v10, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1811
    iget-object v11, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v11, :cond_9e

    .line 1813
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 1815
    iget-object v11, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v12, v5, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/16 v14, 0x108

    invoke-static {v11, v12, v10, v14}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 1816
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v11, :cond_9d

    move-object/from16 v11, v22

    goto :goto_48

    :cond_9d
    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    :goto_48
    invoke-static {v5, v10, v11}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1818
    :cond_9e
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_47

    .line 1820
    :cond_9f
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v12, :cond_a3

    .line 1821
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    .line 1822
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1823
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz v9, :cond_a1

    if-le v5, v8, :cond_a0

    .line 1824
    const-string v9, "Media"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v9, v5, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_49

    :cond_a0
    sget v5, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_49

    :cond_a1
    if-le v5, v8, :cond_a2

    .line 1826
    const-string v9, "Photos"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v9, v5, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_49

    :cond_a2
    sget v5, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1828
    :goto_49
    sget v9, Lorg/telegram/messenger/R$string;->AttachPaidMedia:I

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v5, v10, v7

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    .line 1829
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v9

    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    goto/16 :goto_55

    .line 1830
    :cond_a3
    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-le v12, v8, :cond_a7

    .line 1831
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz v5, :cond_a5

    .line 1832
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v5, :cond_a4

    move v5, v7

    goto :goto_4a

    :cond_a4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4a
    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "Media"

    invoke-static {v10, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_4b
    move-object v12, v5

    goto :goto_4d

    .line 1834
    :cond_a5
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v5, :cond_a6

    move v5, v7

    goto :goto_4c

    :cond_a6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4c
    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "Photos"

    invoke-static {v10, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4b

    .line 1836
    :goto_4d
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v9

    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    goto/16 :goto_55

    .line 1838
    :cond_a7
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    if-eqz v12, :cond_aa

    .line 1840
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v5, :cond_a8

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v9, v5, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v9, :cond_a8

    .line 1841
    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v9, v10, v5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(JI)Z

    move-result v5

    goto :goto_4e

    .line 1843
    :cond_a8
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    :goto_4e
    if-eqz v5, :cond_a9

    .line 1845
    sget v5, Lorg/telegram/messenger/R$string;->BoostingGiveawayChannelStarted:I

    goto :goto_4f

    :cond_a9
    sget v5, Lorg/telegram/messenger/R$string;->BoostingGiveawayGroupStarted:I

    :goto_4f
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_50
    move-object v12, v5

    goto/16 :goto_54

    .line 1846
    :cond_aa
    instance-of v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;

    if-eqz v9, :cond_ab

    .line 1847
    sget v5, Lorg/telegram/messenger/R$string;->BoostingGiveawayResults:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_50

    .line 1848
    :cond_ab
    instance-of v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v9, :cond_ad

    .line 1849
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1850
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v5, :cond_ac

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    if-eqz v5, :cond_ac

    .line 1851
    new-instance v5, Landroid/text/SpannableString;

    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v5, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1852
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v10, v9, v5}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    .line 1853
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-static {v9, v5, v10}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1854
    new-instance v9, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v10, "\ud83d\udcca "

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_50

    .line 1856
    :cond_ac
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\ud83d\udcca "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_50

    .line 1858
    :cond_ad
    instance-of v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    if-eqz v9, :cond_af

    .line 1859
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    .line 1860
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v5, :cond_ae

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    if-eqz v5, :cond_ae

    .line 1861
    new-instance v5, Landroid/text/SpannableString;

    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v5, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1862
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v10, v9, v5}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    .line 1863
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-static {v9, v5, v10}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1864
    new-instance v9, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v10, "\u2705 "

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto/16 :goto_50

    .line 1866
    :cond_ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u2705 "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_50

    .line 1868
    :cond_af
    instance-of v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v9, :cond_b0

    .line 1869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\ud83c\udfae "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_50

    .line 1870
    :cond_b0
    instance-of v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v9, :cond_b1

    .line 1871
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    goto/16 :goto_50

    .line 1872
    :cond_b1
    iget v9, v5, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v12, 0xe

    if-ne v9, v12, :cond_b2

    .line 1873
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v7

    aput-object v9, v10, v8

    const-string/jumbo v5, "\ud83c\udfa7 %s - %s"

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_50

    .line 1874
    :cond_b2
    instance-of v9, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory;

    if-eqz v9, :cond_b6

    iget-boolean v9, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->via_mention:Z

    if-eqz v9, :cond_b6

    .line 1875
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 1876
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    .line 1878
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_b3

    .line 1880
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x20

    .line 1882
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_b4

    .line 1883
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_51

    :cond_b3
    move-object/from16 v5, v23

    .line 1886
    :cond_b4
    :goto_51
    sget v9, Lorg/telegram/messenger/R$string;->StoryYouMentionInDialog:I

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v5, v10, v7

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_50

    .line 1888
    :cond_b5
    sget v5, Lorg/telegram/messenger/R$string;->StoryMentionInDialog:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_50

    .line 1891
    :cond_b6
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v5

    if-eqz v5, :cond_b7

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b7

    .line 1892
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 1896
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v10, v10, 0x17

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    .line 1897
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-boolean v11, v10, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlightCut:Z

    if-eqz v11, :cond_ba

    .line 1898
    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v5, v10, v9, v11, v6}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_53

    .line 1901
    :cond_b7
    new-instance v5, Landroid/text/SpannableString;

    move-object/from16 v12, v32

    invoke-direct {v5, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1902
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_b8

    .line 1903
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 1905
    :cond_b8
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/16 v10, 0x108

    invoke-static {v9, v5, v10}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 1906
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_ba

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v9, :cond_ba

    .line 1907
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v10, :cond_b9

    move-object/from16 v10, v22

    goto :goto_52

    :cond_b9
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    :goto_52
    invoke-static {v9, v5, v10}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1911
    :cond_ba
    :goto_53
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    goto/16 :goto_50

    .line 1913
    :goto_54
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v9, :cond_bb

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v5

    if-nez v5, :cond_bb

    .line 1914
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v9

    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1917
    :cond_bb
    :goto_55
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isReplyToStory()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 1918
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v9, v28

    .line 1919
    invoke-virtual {v5, v7, v9}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1920
    new-instance v10, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_mini_replystory:I

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v10, v7, v8, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v12, v5

    goto :goto_56

    :cond_bc
    move-object/from16 v9, v28

    .line 1923
    :goto_56
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v5, :cond_c2

    .line 1924
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 1925
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 1929
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v10, v10, 0x17

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v11, v14

    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v5, v10

    .line 1930
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-boolean v11, v10, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlightCut:Z

    if-eqz v11, :cond_bf

    .line 1931
    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v0, v10, v5, v11, v6}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    .line 1934
    :cond_bd
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v5, 0x96

    if-le v0, v5, :cond_be

    .line 1935
    invoke-interface {v12, v7, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1937
    :cond_be
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1939
    :cond_bf
    :goto_57
    instance-of v5, v0, Landroid/text/SpannableStringBuilder;

    if-nez v5, :cond_c0

    .line 1940
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v5

    .line 1943
    :cond_c0
    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object/from16 v6, v36

    .line 1944
    invoke-virtual {v0, v7, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1945
    new-instance v5, Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v10, v14

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x3

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-direct {v5, v10}, Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v0, v5, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1946
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v10

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v0, v5, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1947
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 1948
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5, v10}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c1

    move-object v5, v0

    move v0, v7

    goto :goto_59

    :cond_c1
    move v0, v7

    :goto_58
    move-object v5, v12

    goto :goto_59

    :cond_c2
    move-object/from16 v6, v36

    goto :goto_58

    .line 1954
    :goto_59
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v10

    if-eqz v10, :cond_c3

    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 1955
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    .line 1956
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1957
    invoke-virtual {v10, v7, v9}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1958
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$drawable;->mini_forwarded:I

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const v12, 0x3f666666    # 0.9f

    .line 1959
    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/ColoredImageSpan;->setAlpha(F)V

    .line 1960
    invoke-virtual {v10, v5, v7, v8, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v10

    :cond_c3
    move-object/from16 v10, v22

    goto/16 :goto_61

    :goto_5a
    if-eqz v5, :cond_c4

    goto :goto_5b

    :cond_c4
    if-eqz v33, :cond_c5

    move-object/from16 v5, v33

    goto :goto_5b

    .line 1706
    :cond_c5
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v5

    :goto_5b
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1707
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v10, :cond_c8

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v10, :cond_c8

    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v10, :cond_c8

    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v10, :cond_c8

    .line 1708
    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v10

    iget-object v11, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v15, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v11, v15, v12}, Lorg/telegram/messenger/TopicsController;->getTopicIconName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;Landroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1709
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c8

    .line 1710
    new-instance v11, Landroid/text/SpannableStringBuilder;

    const-string v12, "-"

    invoke-direct {v11, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1711
    new-instance v12, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget-object v15, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_mini_forumarrow:I

    invoke-static {v15, v14}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1712
    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v14, :cond_c7

    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v14, :cond_c6

    goto :goto_5c

    :cond_c6
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    goto :goto_5d

    :cond_c7
    :goto_5c
    const/4 v14, -0x1

    :goto_5d
    invoke-virtual {v12, v14}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    .line 1713
    invoke-virtual {v11, v12, v7, v8, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1714
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1715
    invoke-virtual {v12, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v5, v12

    .line 1720
    :cond_c8
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-direct {v1, v5, v10}, Lorg/telegram/ui/Cells/DialogCell;->addSenderAvatar(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;

    move-result-object v5

    move/from16 v11, v35

    .line 1723
    invoke-virtual {v1, v11, v0, v5, v7}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(ILjava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    .line 1726
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v0, :cond_cb

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_c9

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_ca

    :cond_c9
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_cb

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_cb

    .line 1728
    :cond_ca
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v11, v12}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v11, v8

    const/16 v12, 0x21

    :try_start_1
    invoke-virtual {v10, v0, v7, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5f

    :catch_0
    move-exception v0

    goto :goto_5e

    :catch_1
    move-exception v0

    move v11, v7

    .line 1731
    :goto_5e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5f

    :cond_cb
    move v11, v7

    .line 1734
    :goto_5f
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v12

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {v10, v0, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1735
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 1736
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v10, v12}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_cc

    move-object v0, v10

    .line 1741
    :cond_cc
    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v10, :cond_cf

    .line 1742
    instance-of v10, v0, Landroid/text/SpannableStringBuilder;

    if-nez v10, :cond_cd

    .line 1743
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v10

    .line 1746
    :cond_cd
    move-object v10, v0

    check-cast v10, Landroid/text/SpannableStringBuilder;

    .line 1747
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-lt v11, v12, :cond_ce

    .line 1748
    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1749
    new-instance v11, Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;

    iget v12, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/16 v27, 0x2

    add-int/lit8 v15, v14, 0x2

    mul-int/2addr v12, v15

    add-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-direct {v11, v12}, Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;-><init>(I)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v14, 0x21

    invoke-virtual {v10, v11, v12, v15, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_60

    .line 1751
    :cond_ce
    invoke-virtual {v10, v11, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1752
    new-instance v12, Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;

    iget v15, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/16 v27, 0x2

    add-int/lit8 v28, v14, 0x2

    mul-int v15, v15, v28

    add-int/lit8 v15, v15, 0x3

    int-to-float v15, v15

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-direct {v12, v15}, Lorg/telegram/ui/Cells/DialogCell$ThumbnailSpan;-><init>(I)V

    add-int/lit8 v15, v11, 0x1

    const/16 v14, 0x21

    invoke-virtual {v10, v12, v11, v15, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_cf
    :goto_60
    move-object v10, v5

    move-object v5, v0

    move v0, v7

    .line 1965
    :goto_61
    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v11, :cond_d0

    .line 1966
    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v10

    :cond_d0
    move-object v11, v10

    move v10, v0

    move-object v0, v11

    move v11, v3

    move-object v3, v5

    :goto_62
    move-object/from16 v12, v22

    goto/16 :goto_2f

    .line 1539
    :goto_63
    sget v0, Lorg/telegram/messenger/R$string;->Draft:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1540
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v5, :cond_d3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 1541
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v5, :cond_d1

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v5, :cond_d2

    :cond_d1
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v5

    if-nez v5, :cond_d2

    move v11, v3

    move v10, v7

    move-object/from16 v12, v22

    move-object/from16 v3, v23

    goto/16 :goto_2f

    .line 1544
    :cond_d2
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 1545
    new-instance v10, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v11, v12}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/16 v14, 0x21

    invoke-virtual {v5, v10, v7, v11, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_64
    move v11, v3

    move-object v3, v5

    move v10, v7

    goto :goto_62

    .line 1550
    :cond_d3
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    if-eqz v5, :cond_d4

    .line 1551
    sget v5, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_65

    .line 1552
    :cond_d4
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v5, :cond_d5

    .line 1553
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 1554
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v14, 0x96

    if-le v12, v14, :cond_d6

    .line 1555
    invoke-virtual {v5, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_65

    :cond_d5
    move-object/from16 v5, v23

    .line 1560
    :cond_d6
    :goto_65
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1561
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v5, :cond_d8

    const/16 v10, 0x108

    .line 1562
    invoke-static {v5, v12, v10}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/tgnet/TLRPC$DraftMessage;Landroid/text/Spannable;I)V

    .line 1563
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v5, :cond_d9

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    if-eqz v5, :cond_d9

    .line 1564
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v10, :cond_d7

    move-object/from16 v10, v22

    goto :goto_66

    :cond_d7
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    :goto_66
    invoke-static {v5, v12, v10}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_67

    .line 1566
    :cond_d8
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->draftVoice:Z

    if-eqz v5, :cond_d9

    .line 1567
    new-instance v5, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v10, v14}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/16 v14, 0x21

    invoke-interface {v12, v5, v7, v10, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1570
    :cond_d9
    :goto_67
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v1, v11, v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 1571
    iget-boolean v10, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v10, :cond_da

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v10, :cond_db

    :cond_da
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v10

    if-eqz v10, :cond_dc

    .line 1572
    :cond_db
    new-instance v10, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    iget-object v12, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v11, v12}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v8

    const/16 v14, 0x21

    invoke-virtual {v5, v10, v7, v11, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1574
    :cond_dc
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v11, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-static {v5, v10, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_64

    .line 1972
    :goto_68
    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    if-nez v14, :cond_de

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v14

    if-nez v14, :cond_de

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v14

    if-nez v14, :cond_de

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isDialogFolder()Z

    move-result v14

    if-nez v14, :cond_de

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-nez v14, :cond_de

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v14, :cond_de

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v14, :cond_de

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v14, :cond_de

    .line 1973
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawGiftIcon:Z

    .line 1974
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1975
    invoke-virtual {v14, v7, v9}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1976
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v15, Lorg/telegram/messenger/R$drawable;->mini_gift:I

    invoke-static {v9, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 v9, 0x3fa00000    # 1.25f

    const/high16 v15, 0x3fa00000    # 1.25f

    .line 1977
    invoke-virtual {v3, v9, v15}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const v9, 0x3f666666    # 0.9f

    .line 1978
    iput v9, v3, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    .line 1979
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;->setAlpha(F)V

    .line 1980
    invoke-virtual {v14, v3, v7, v8, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1982
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    .line 1983
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v3, :cond_dd

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_dd

    .line 1984
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v9

    iput-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    :cond_dd
    move-object v3, v14

    .line 1988
    :cond_de
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->customMessage:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e0

    :cond_df
    move-object/from16 v9, v23

    goto :goto_69

    .line 1990
    :cond_e0
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v9, :cond_e1

    .line 1991
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    int-to-long v14, v9

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_69

    .line 1992
    :cond_e1
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz v9, :cond_e2

    int-to-long v14, v9

    .line 1993
    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_69

    .line 1994
    :cond_e2
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_df

    .line 1995
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v14, v9

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v9

    .line 1998
    :goto_69
    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v14, :cond_fd

    iget-boolean v15, v1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-eqz v15, :cond_e3

    goto/16 :goto_78

    .line 2007
    :cond_e3
    iget v15, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v15, :cond_e6

    .line 2008
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v15, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    add-int v25, v14, v15

    if-lez v25, :cond_e5

    if-le v14, v15, :cond_e4

    .line 2010
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2011
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    add-int/2addr v14, v15

    .line 2012
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v14, v15, v7

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v22

    goto :goto_6a

    .line 2014
    :cond_e4
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2015
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    add-int/2addr v14, v15

    .line 2016
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v14, v15, v7

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v14, v13

    move-object/from16 v13, v22

    goto :goto_6a

    .line 2019
    :cond_e5
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2020
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    move-object/from16 v13, v22

    move-object v14, v13

    .line 2022
    :goto_6a
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto/16 :goto_71

    .line 2024
    :cond_e6
    iget-boolean v15, v1, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v15, :cond_e7

    .line 2025
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move v5, v7

    :goto_6b
    move-object/from16 v13, v22

    goto :goto_6d

    .line 2027
    :cond_e7
    iget v15, v1, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    move/from16 v25, v7

    if-eqz v15, :cond_e9

    if-ne v15, v8, :cond_e8

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-ne v15, v7, :cond_e8

    if-eqz v14, :cond_e8

    iget-object v7, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-nez v7, :cond_e9

    .line 2028
    :cond_e8
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2029
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v14, v8, [Ljava/lang/Object;

    aput-object v7, v14, v25

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    :goto_6c
    move/from16 v7, v25

    goto :goto_6d

    .line 2030
    :cond_e9
    iget-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v7, :cond_ea

    .line 2031
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object/from16 v13, v23

    goto :goto_6c

    :cond_ea
    move/from16 v7, v25

    .line 2034
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_6b

    .line 2036
    :goto_6d
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-eqz v14, :cond_eb

    .line 2037
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    .line 2038
    const-string v14, "@"

    goto :goto_6e

    .line 2040
    :cond_eb
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    move-object/from16 v14, v22

    .line 2042
    :goto_6e
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v7, :cond_f0

    .line 2043
    sget-boolean v7, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInChannels:Z

    if-eqz v7, :cond_ec

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-nez v7, :cond_ee

    :cond_ec
    sget-boolean v7, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInGroups:Z

    if-eqz v7, :cond_ed

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2044
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-nez v7, :cond_ed

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v7, :cond_ee

    :cond_ed
    sget-boolean v7, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInPrivateChats:Z

    if-eqz v7, :cond_ef

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v7, :cond_ee

    goto :goto_6f

    :cond_ee
    const/4 v7, 0x0

    goto :goto_70

    :cond_ef
    :goto_6f
    move v7, v8

    :goto_70
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto :goto_71

    :cond_f0
    const/4 v7, 0x0

    .line 2047
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    .line 2051
    :goto_71
    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v7

    if-eqz v7, :cond_fc

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-nez v7, :cond_fc

    if-eqz v5, :cond_fc

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-nez v7, :cond_fc

    .line 2052
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v5

    if-eqz v5, :cond_f1

    const/4 v7, 0x0

    .line 2053
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 2054
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 2055
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 2056
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_7a

    :cond_f1
    const/4 v7, 0x0

    .line 2057
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 2058
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 2059
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 2060
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 2061
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 2062
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2063
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_7a

    .line 2064
    :cond_f2
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v5

    if-eqz v5, :cond_fb

    .line 2065
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_f4

    .line 2066
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-lt v5, v7, :cond_f3

    move v5, v8

    goto :goto_72

    :cond_f3
    const/4 v5, 0x0

    :goto_72
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    goto :goto_77

    .line 2067
    :cond_f4
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v5, :cond_f8

    .line 2068
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    if-lez v5, :cond_f5

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-ge v5, v7, :cond_f7

    :cond_f5
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v5

    if-eqz v5, :cond_f7

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_f6

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v5, :cond_f6

    goto :goto_73

    :cond_f6
    const/4 v5, 0x0

    goto :goto_74

    :cond_f7
    :goto_73
    move v5, v8

    :goto_74
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    goto :goto_77

    .line 2070
    :cond_f8
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v5

    if-eqz v5, :cond_fa

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_f9

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v5, :cond_f9

    goto :goto_75

    :cond_f9
    const/4 v5, 0x0

    goto :goto_76

    :cond_fa
    :goto_75
    move v5, v8

    :goto_76
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 2072
    :goto_77
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    const/4 v7, 0x0

    .line 2073
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 2074
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto :goto_7a

    :cond_fb
    const/4 v7, 0x0

    goto :goto_7a

    :cond_fc
    const/4 v7, 0x0

    .line 2077
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 2078
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 2079
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 2080
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto :goto_7a

    .line 1999
    :cond_fd
    :goto_78
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 2000
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v14, :cond_fe

    .line 2001
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v5

    if-eqz v5, :cond_fe

    iget-wide v13, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v32

    cmp-long v5, v13, v32

    if-nez v5, :cond_fe

    move v5, v8

    goto :goto_79

    :cond_fe
    const/4 v5, 0x0

    :goto_79
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    const/4 v7, 0x0

    .line 2002
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2003
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    .line 2004
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    .line 2005
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    move-object/from16 v13, v22

    move-object v14, v13

    .line 2084
    :goto_7a
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 2085
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    .line 2086
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v7, :cond_103

    move v7, v2

    move-object v15, v3

    iget-wide v2, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v5, v2, v3, v8}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 2087
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 2088
    iput-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 2089
    iget v2, v5, Lorg/telegram/messenger/MessagesController;->promoDialogType:I

    sget v3, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PROXY:I

    if-ne v2, v3, :cond_100

    .line 2090
    sget v2, Lorg/telegram/messenger/R$string;->UseProxySponsor:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_ff
    const/4 v5, 0x0

    goto :goto_7d

    .line 2091
    :cond_100
    sget v3, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PSA:I

    if-ne v2, v3, :cond_102

    .line 2092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PsaType_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lorg/telegram/messenger/MessagesController;->promoPsaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2093
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 2094
    sget v2, Lorg/telegram/messenger/R$string;->PsaTypeDefault:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2096
    :cond_101
    iget-object v3, v5, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ff

    .line 2097
    iget-object v3, v5, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    const/4 v5, 0x0

    .line 2098
    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    move-object v15, v3

    goto :goto_7d

    :cond_102
    :goto_7b
    const/4 v5, 0x0

    goto :goto_7c

    :cond_103
    move v7, v2

    move-object v15, v3

    goto :goto_7b

    :goto_7c
    move-object v2, v9

    .line 2103
    :goto_7d
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isForChannelSubscriberCell:Z

    if-eqz v3, :cond_104

    .line 2104
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 2105
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 2106
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 2107
    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 2110
    :cond_104
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->titleOverride:Ljava/lang/String;

    if-eqz v3, :cond_105

    :goto_7e
    move-object v5, v13

    move-object v13, v3

    move-object v3, v12

    move-object v12, v5

    move-object/from16 v30, v4

    move v6, v10

    move-object v9, v14

    move-object v5, v15

    move-object v10, v2

    goto/16 :goto_13

    .line 2112
    :cond_105
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v3, :cond_106

    .line 2113
    sget v3, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7e

    .line 2115
    :cond_106
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_111

    .line 2116
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v5, :cond_10b

    .line 2117
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_107

    .line 2118
    new-array v3, v8, [Landroid/graphics/drawable/Drawable;

    iput-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 2120
    :cond_107
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/16 v25, 0x0

    aput-object v22, v3, v25

    .line 2121
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v6, v9, v8}, Lorg/telegram/messenger/TopicsController;->getTopicIconName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;Landroid/text/TextPaint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_108

    .line 2122
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_108

    .line 2123
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v30

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getTopicId()J

    move-result-wide v32

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v3

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    invoke-virtual/range {v30 .. v35}, Lorg/telegram/messenger/TopicsController;->getTopicIconNameSafe(Lorg/telegram/tgnet/TLRPC$Chat;JLandroid/text/TextPaint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_108
    if-nez v3, :cond_10a

    move-object/from16 v30, v0

    move-object/from16 v31, v2

    :cond_109
    move-object/from16 v0, v23

    goto/16 :goto_81

    :cond_10a
    :goto_7f
    move-object/from16 v30, v0

    move-object/from16 v31, v2

    move-object v0, v3

    goto/16 :goto_81

    .line 2128
    :cond_10b
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v5, :cond_10e

    .line 2129
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_10c

    const/4 v3, 0x1

    .line 2130
    new-array v5, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 2132
    :cond_10c
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v22, v3, v5

    .line 2133
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    if-eqz v6, :cond_10d

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v8, v8, v9

    invoke-static {v6, v8, v3, v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Z)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_7f

    :cond_10d
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7f

    .line 2134
    :cond_10e
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v5, :cond_110

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    const-wide/16 v30, 0x0

    cmp-long v5, v8, v30

    if-eqz v5, :cond_110

    .line 2135
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_10f

    .line 2137
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2138
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2139
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 2140
    sget v6, Lorg/telegram/messenger/R$string;->MonoforumSpan:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2141
    new-instance v6, Lorg/telegram/ui/FilterCreateActivity$TextSpan;

    sget v8, Lorg/telegram/messenger/R$string;->MonoforumSpan:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move-object/from16 v30, v0

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v31, v2

    const v2, 0x411547ae    # 9.33f

    invoke-direct {v6, v8, v2, v9, v0}, Lorg/telegram/ui/FilterCreateActivity$TextSpan;-><init>(Ljava/lang/String;FILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v2, 0x21

    invoke-virtual {v5, v6, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_80

    :cond_10f
    move-object/from16 v30, v0

    move-object/from16 v31, v2

    .line 2144
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_80
    move-object v0, v5

    goto/16 :goto_81

    :cond_110
    move-object/from16 v30, v0

    move-object/from16 v31, v2

    .line 2147
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_81

    :cond_111
    move-object/from16 v30, v0

    move-object/from16 v31, v2

    .line 2149
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_109

    .line 2150
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 2151
    sget v0, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_81

    .line 2152
    :cond_112
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 2153
    sget v0, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 2154
    :cond_113
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_117

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isMonoForumTopicDialog:Z

    if-nez v0, :cond_117

    .line 2155
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-eqz v0, :cond_114

    .line 2156
    sget v0, Lorg/telegram/messenger/R$string;->MyNotes:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 2157
    :cond_114
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-eqz v0, :cond_115

    .line 2158
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 2160
    :cond_115
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_116

    const/4 v3, 0x1

    .line 2161
    iput-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 2163
    :cond_116
    sget v0, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 2165
    :cond_117
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_11a

    .line 2166
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_118

    const/4 v3, 0x1

    .line 2167
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 2169
    :cond_118
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v22, v0, v5

    .line 2170
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    if-eqz v2, :cond_119

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v6

    invoke-static {v2, v3, v0, v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_81

    :cond_119
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 2172
    :cond_11a
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_81
    if-eqz v0, :cond_11b

    .line 2175
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_11b

    .line 2176
    sget v0, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_11b
    move v6, v10

    move-object v3, v12

    move-object v12, v13

    move-object v9, v14

    move-object v5, v15

    move-object/from16 v2, v30

    move-object/from16 v10, v31

    move-object v13, v0

    move-object/from16 v30, v4

    :goto_82
    if-eqz v7, :cond_11e

    .line 2182
    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getTimeTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 2183
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    move-object v7, v9

    const/high16 v26, 0x41c00000    # 24.0f

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 2184
    new-instance v31, Landroid/text/StaticLayout;

    sget-object v35, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    move-object/from16 v33, v0

    move/from16 v34, v4

    move-object/from16 v32, v10

    invoke-direct/range {v31 .. v38}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v31

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 2185
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_11c

    move/from16 v0, v26

    goto :goto_83

    :cond_11c
    const/4 v0, 0x0

    :goto_83
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int v0, v34, v0

    .line 2186
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_11d

    .line 2187
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v4, v8

    sub-int/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto :goto_84

    .line 2189
    :cond_11d
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto :goto_84

    :cond_11e
    move-object v7, v9

    move-object/from16 v4, v22

    const/high16 v26, 0x41c00000    # 24.0f

    .line 2193
    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    .line 2194
    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    const/4 v0, 0x0

    .line 2198
    :goto_84
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v4

    const/high16 v8, 0x40800000    # 4.0f

    if-eqz v4, :cond_120

    .line 2199
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_11f

    .line 2200
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v4, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v4, v9

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    goto :goto_85

    .line 2202
    :cond_11f
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v4, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v4, v9

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    .line 2204
    :goto_85
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v4, v9

    add-int/2addr v0, v4

    goto :goto_86

    :cond_120
    const/4 v4, 0x0

    .line 2208
    :goto_86
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_121

    .line 2209
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v9, v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_87

    .line 2211
    :cond_121
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v9, v10

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v10, v10, 0xd

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2212
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2214
    :goto_87
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    const/high16 v10, 0x41000000    # 8.0f

    if-eqz v9, :cond_123

    .line 2215
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_122

    move v8, v10

    :cond_122
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v8, v14

    sub-int/2addr v9, v8

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2217
    :cond_123
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    const/high16 v9, 0x40a00000    # 5.0f

    if-eqz v8, :cond_126

    .line 2218
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v8, v14

    .line 2219
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v14, v8

    iput v14, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2220
    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v14, :cond_124

    .line 2221
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    goto :goto_88

    .line 2223
    :cond_124
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v4, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    .line 2224
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    :cond_125
    :goto_88
    move/from16 v20, v9

    :goto_89
    const/4 v4, 0x0

    goto/16 :goto_8a

    .line 2226
    :cond_126
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v8, :cond_125

    .line 2227
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v8, v14

    .line 2228
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v14, v8

    iput v14, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    move/from16 v20, v9

    .line 2229
    iget-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v9, :cond_128

    .line 2230
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v31

    sub-int v9, v9, v31

    sub-int/2addr v14, v9

    iput v14, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2231
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_127

    .line 2232
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    const/high16 v4, 0x40b00000    # 5.5f

    .line 2233
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto :goto_89

    .line 2235
    :cond_127
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v4, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    const/high16 v0, 0x40b00000    # 5.5f

    .line 2236
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 2237
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v8, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v8, v4

    add-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_89

    .line 2240
    :cond_128
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_129

    .line 2241
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    goto :goto_89

    .line 2243
    :cond_129
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v4, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v4, v0

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    .line 2244
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_89

    .line 2249
    :goto_8a
    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    .line 2250
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    const/high16 v4, 0x42100000    # 36.0f

    const/high16 v8, 0x40c00000    # 6.0f

    if-eqz v0, :cond_12a

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12a

    .line 2251
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2252
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2253
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    .line 2254
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_131

    .line 2255
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_8c

    .line 2257
    :cond_12a
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v0, :cond_12b

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_12c

    :cond_12b
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v0, :cond_12c

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    if-nez v0, :cond_12c

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v0, :cond_12c

    .line 2258
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v0, v9

    .line 2259
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2260
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    .line 2261
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_131

    .line 2262
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_8c

    .line 2264
    :cond_12c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_12d

    .line 2265
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v0, v9

    .line 2266
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2267
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    .line 2268
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_131

    .line 2269
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_8c

    .line 2271
    :cond_12d
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    if-eqz v0, :cond_12e

    .line 2272
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2273
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2274
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    .line 2275
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_131

    .line 2276
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_8c

    .line 2278
    :cond_12e
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v0, :cond_12f

    .line 2279
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2280
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2281
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    .line 2282
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_131

    .line 2283
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_8c

    .line 2285
    :cond_12f
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v0, :cond_131

    .line 2286
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    const/4 v14, 0x1

    if-ne v9, v14, :cond_130

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_8b

    :cond_130
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_8b
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v0, v9

    .line 2287
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2288
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameAdditionalsForChannelSubscriber:I

    .line 2289
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_131

    .line 2290
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2293
    :cond_131
    :goto_8c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    const/high16 v9, 0x41a80000    # 21.0f

    if-eqz v0, :cond_132

    .line 2294
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v0, v14

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2296
    :cond_132
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->namePaddingEnd:I

    if-lez v0, :cond_133

    .line 2297
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v14, v0

    iput v14, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2298
    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_133

    .line 2299
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v14, v0

    iput v14, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    :cond_133
    const/high16 v40, 0x41400000    # 12.0f

    .line 2303
    :try_start_2
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v0, v14

    if-gez v0, :cond_134

    const/4 v0, 0x0

    .line 2307
    :cond_134
    instance-of v14, v13, Ljava/lang/String;

    if-eqz v14, :cond_135

    .line 2308
    check-cast v13, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v14, v24

    move/from16 v24, v4

    move v4, v14

    const/16 v14, 0x20

    :try_start_3
    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    goto :goto_8f

    :catch_2
    move-exception v0

    :goto_8d
    move/from16 v29, v8

    :goto_8e
    move/from16 v41, v9

    goto/16 :goto_97

    :catch_3
    move-exception v0

    move/from16 v24, v4

    goto :goto_8d

    :cond_135
    move/from16 v24, v4

    .line 2311
    :goto_8f
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v4, :cond_137

    .line 2312
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v29, v8

    :try_start_4
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v8, v14, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    int-to-float v14, v0

    move/from16 v41, v9

    :try_start_5
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v13, v8, v14, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne v4, v8, :cond_136

    const/4 v4, 0x1

    goto :goto_90

    :cond_136
    const/4 v4, 0x0

    :goto_90
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    const/high16 v4, 0x42400000    # 48.0f

    .line 2313
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    .line 2314
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->channelShouldUseLineWidth:Z

    goto :goto_92

    :catch_4
    move-exception v0

    goto/16 :goto_97

    :catch_5
    move-exception v0

    goto :goto_8e

    :cond_137
    move/from16 v29, v8

    move/from16 v41, v9

    .line 2315
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isForChannelSubscriberCell:Z

    if-eqz v4, :cond_139

    .line 2316
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v8, v8, v9

    int-to-float v9, v0

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v13, v8, v9, v14}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne v4, v8, :cond_138

    const/4 v4, 0x1

    goto :goto_91

    :cond_138
    const/4 v4, 0x0

    :goto_91
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->channelShouldUseLineWidth:Z

    .line 2318
    :cond_139
    :goto_92
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v4, v4, v8

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v8, v0

    cmpl-float v4, v4, v8

    if-lez v4, :cond_13a

    const/4 v4, 0x1

    goto :goto_93

    :cond_13a
    const/4 v4, 0x0

    :goto_93
    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    .line 2319
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-nez v4, :cond_13b

    .line 2320
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v4, v4, v9

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v13, v4, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2322
    :cond_13b
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v13, v4, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2323
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_13c

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v8

    if-eqz v8, :cond_13c

    .line 2324
    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_13c

    move-object/from16 v32, v8

    goto :goto_94

    :cond_13c
    move-object/from16 v32, v4

    .line 2329
    :goto_94
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v4, :cond_13d

    .line 2330
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v43, v4, v8

    sget-object v45, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v49, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v51, 0x2

    const/high16 v46, 0x3f800000    # 1.0f

    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v50, v0

    move/from16 v44, v0

    move-object/from16 v42, v32

    invoke-static/range {v42 .. v51}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    goto :goto_95

    .line 2332
    :cond_13d
    new-instance v31, Landroid/text/StaticLayout;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v33, v4, v8

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v34

    sget-object v35, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    invoke-direct/range {v31 .. v38}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v31

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    .line 2334
    :goto_95
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_13e

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_96

    :cond_13e
    const/4 v0, 0x0

    :goto_96
    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutTranslateX:F

    .line 2335
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_98

    .line 2337
    :goto_97
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2340
    :goto_98
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v14, 0x1

    new-array v8, v14, [Landroid/text/Layout;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v9, v1, v0, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2347
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    const/high16 v4, 0x41f80000    # 31.0f

    const/high16 v8, 0x41100000    # 9.0f

    if-nez v0, :cond_13f

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_140

    :cond_13f
    move/from16 v18, v8

    move/from16 v21, v10

    const/high16 v27, 0x41a00000    # 20.0f

    const/high16 v31, 0x41500000    # 13.0f

    const/16 v42, 0x0

    goto/16 :goto_a1

    .line 2371
    :cond_140
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2372
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    .line 2373
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/high16 v4, 0x42180000    # 38.0f

    .line 2374
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/high16 v4, 0x421c0000    # 39.0f

    .line 2375
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    .line 2376
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v4, :cond_141

    const/high16 v4, 0x420c0000    # 35.0f

    :goto_99
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_9a

    :cond_141
    const/high16 v4, 0x42180000    # 38.0f

    goto :goto_99

    :goto_9a
    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    .line 2377
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 2378
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v14, v14, 0x14

    sget-boolean v17, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v17, :cond_142

    const/16 v17, 0x0

    goto :goto_9b

    :cond_142
    const/16 v17, 0xc

    :goto_9b
    sub-int v14, v14, v17

    int-to-float v14, v14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v4, v14

    .line 2380
    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_143

    .line 2381
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    iput v14, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v14, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v14, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v14, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2382
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move/from16 v18, v8

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->avatarStart:I

    add-int/lit8 v8, v8, 0x34

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v14, v8

    .line 2383
    iget v14, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    const/high16 v31, 0x41500000    # 13.0f

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/16 v27, 0x2

    add-int/lit8 v9, v9, 0x2

    move/from16 v17, v14

    mul-int v9, v9, v17

    add-int/lit8 v9, v9, 0x9

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v8, v9

    :goto_9c
    move/from16 v21, v10

    goto :goto_9d

    :cond_143
    move/from16 v18, v8

    const/high16 v31, 0x41500000    # 13.0f

    .line 2385
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2386
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->avatarStart:I

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x42860000    # 67.0f

    .line 2387
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v8

    goto :goto_9c

    .line 2389
    :goto_9d
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    const/high16 v27, 0x41a00000    # 20.0f

    int-to-float v13, v8

    int-to-float v14, v0

    const/high16 v19, 0x42500000    # 52.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    add-int v8, v8, v19

    int-to-float v8, v8

    const/high16 v19, 0x42500000    # 52.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    const/16 v42, 0x0

    add-int v15, v0, v19

    int-to-float v15, v15

    invoke-virtual {v10, v13, v14, v8, v15}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v8, 0x0

    .line 2390
    :goto_9e
    iget-object v10, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v13, v10

    if-ge v8, v13, :cond_146

    .line 2391
    aget-object v10, v10, v8

    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v13, v14

    mul-int/2addr v13, v8

    add-int/2addr v13, v9

    int-to-float v13, v13

    const/high16 v15, 0x41f00000    # 30.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v0

    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v14, :cond_144

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_9f

    :cond_144
    const/4 v14, 0x0

    :goto_9f
    add-int/2addr v15, v14

    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v14, :cond_145

    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v14, :cond_145

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    if-eqz v14, :cond_145

    invoke-virtual {v14}, Lorg/telegram/ui/Components/DialogCellTags;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_145

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_a0

    :cond_145
    const/4 v14, 0x0

    :goto_a0
    sub-int/2addr v15, v14

    int-to-float v14, v15

    iget v15, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    int-to-float v15, v15

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    move/from16 v19, v0

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10, v13, v14, v15, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v19

    goto :goto_9e

    :cond_146
    move/from16 v19, v0

    goto/16 :goto_a6

    :goto_a1
    const/high16 v0, 0x41300000    # 11.0f

    .line 2348
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v8, 0x42000000    # 32.0f

    .line 2349
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    .line 2350
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const v8, 0x422951ec    # 42.33f

    .line 2351
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/high16 v8, 0x422c0000    # 43.0f

    .line 2352
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    const v8, 0x422951ec    # 42.33f

    .line 2353
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    .line 2354
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 2355
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x15

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    .line 2357
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_147

    .line 2358
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2359
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, v1, Lorg/telegram/ui/Cells/DialogCell;->avatarStart:I

    add-int/lit8 v10, v10, 0x38

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    .line 2360
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v9, v10

    goto :goto_a2

    .line 2362
    :cond_147
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x6

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2363
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->avatarStart:I

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x428a0000    # 69.0f

    .line 2364
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v9

    .line 2366
    :goto_a2
    iget-object v13, v1, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v13, v13, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v14, v9

    int-to-float v15, v0

    const/high16 v17, 0x42600000    # 56.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v9, v9, v17

    int-to-float v9, v9

    const/high16 v17, 0x42600000    # 56.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v33, v4

    add-int v4, v0, v17

    int-to-float v4, v4

    invoke-virtual {v13, v14, v15, v9, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v4, 0x0

    .line 2367
    :goto_a3
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v13, v9

    if-ge v4, v13, :cond_14a

    .line 2368
    aget-object v9, v9, v4

    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v13, v14

    mul-int/2addr v13, v4

    add-int/2addr v13, v10

    int-to-float v13, v13

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v0

    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v14, :cond_148

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_a4

    :cond_148
    const/4 v14, 0x0

    :goto_a4
    add-int/2addr v15, v14

    iget-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v14, :cond_149

    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v14, :cond_149

    iget-object v14, v1, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    if-eqz v14, :cond_149

    invoke-virtual {v14}, Lorg/telegram/ui/Components/DialogCellTags;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_149

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_a5

    :cond_149
    const/4 v14, 0x0

    :goto_a5
    sub-int/2addr v15, v14

    int-to-float v14, v15

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    move/from16 v32, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v13, v14, v15, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v32

    goto :goto_a3

    :cond_14a
    move/from16 v32, v0

    move v4, v8

    move/from16 v19, v32

    .line 2394
    :goto_a6
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_14b

    .line 2395
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->tagsRight:I

    const/high16 v0, 0x42800000    # 64.0f

    .line 2396
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->tagsLeft:I

    goto :goto_a7

    .line 2398
    :cond_14b
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->tagsLeft:I

    .line 2399
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v8, 0x42800000    # 64.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->tagsRight:I

    .line 2401
    :goto_a7
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_14c

    .line 2402
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    .line 2404
    :cond_14c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_14d

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_14e

    :cond_14d
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_14f

    :cond_14e
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    if-eqz v0, :cond_14f

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DialogCellTags;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14f

    .line 2405
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    .line 2406
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 2408
    :cond_14f
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 2409
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_150

    .line 2410
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int/2addr v0, v8

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    goto :goto_a8

    :cond_150
    const/high16 v0, 0x41600000    # 14.0f

    .line 2412
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2415
    :cond_151
    :goto_a8
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    const v8, 0x417aa7f0    # 15.666f

    if-eqz v0, :cond_153

    const/high16 v0, 0x41e80000    # 29.0f

    .line 2416
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v4, v0

    .line 2418
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v7, :cond_152

    .line 2419
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const v7, 0x4211554d

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    goto/16 :goto_bb

    .line 2421
    :cond_152
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2422
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2423
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2424
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2425
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto/16 :goto_bb

    :cond_153
    if-nez v12, :cond_15a

    if-nez v7, :cond_15a

    .line 2427
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v0, :cond_154

    goto/16 :goto_ad

    .line 2493
    :cond_154
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->allowBotOpenButton:Z

    if-eqz v0, :cond_159

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_159

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_159

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isDialogFolder()Z

    move-result v0

    if-nez v0, :cond_159

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_159

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    if-eqz v0, :cond_159

    const/4 v14, 0x1

    .line 2494
    invoke-virtual {v1, v14}, Lorg/telegram/ui/Cells/DialogCell;->setOpenBotButton(Z)V

    const/high16 v0, 0x41d00000    # 26.0f

    .line 2495
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v7

    add-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v4, v0

    .line 2498
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v8, :cond_157

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v8, :cond_155

    goto :goto_a9

    .line 2501
    :cond_155
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v8, :cond_156

    const/high16 v8, 0x42040000    # 33.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_aa

    :cond_156
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_aa

    :cond_157
    :goto_a9
    const/high16 v8, 0x42200000    # 40.0f

    .line 2499
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 2503
    :goto_aa
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_158

    .line 2504
    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v9, v0

    int-to-float v0, v9

    int-to-float v9, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v8, v12

    int-to-float v8, v8

    invoke-virtual {v7, v0, v9, v10, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_ab
    const/4 v7, 0x0

    goto :goto_ac

    .line 2506
    :cond_158
    iget-object v9, v1, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    int-to-float v12, v8

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v0

    int-to-float v13, v13

    const/high16 v14, 0x41e00000    # 28.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v8, v14

    int-to-float v8, v8

    invoke-virtual {v9, v10, v12, v13, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2507
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v0, v7

    add-int/2addr v8, v0

    iput v8, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2508
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2509
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2510
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto :goto_ab

    .line 2512
    :goto_ac
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2513
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_bb

    :cond_159
    const/4 v7, 0x0

    .line 2515
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2516
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_bb

    :cond_15a
    :goto_ad
    if-eqz v12, :cond_15c

    .line 2429
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    .line 2430
    new-instance v31, Landroid/text/StaticLayout;

    sget-object v33, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sget-object v35, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    move/from16 v34, v0

    move-object/from16 v32, v12

    invoke-direct/range {v31 .. v38}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v31

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 2431
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v0, v9

    sub-int/2addr v4, v0

    .line 2433
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_15b

    .line 2434
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v0, v9

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    const v10, 0x414aa7f0    # 12.666f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    :goto_ae
    const/4 v14, 0x1

    goto :goto_af

    .line 2436
    :cond_15b
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2437
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2438
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2439
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2440
    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v9, v0

    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto :goto_ae

    .line 2442
    :goto_af
    iput-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_b0

    :cond_15c
    const/4 v9, 0x0

    .line 2444
    iput v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    :goto_b0
    if-eqz v7, :cond_161

    .line 2447
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_15d

    .line 2448
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2449
    new-instance v31, Landroid/text/StaticLayout;

    sget-object v33, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    sget-object v35, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    move/from16 v34, v0

    move-object/from16 v32, v7

    invoke-direct/range {v31 .. v38}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v31

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    goto :goto_b1

    .line 2451
    :cond_15d
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2453
    :goto_b1
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v0, v7

    sub-int/2addr v4, v0

    .line 2455
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v7, :cond_15f

    .line 2456
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    const v9, 0x414aa7f0    # 12.666f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v7, v9

    sub-int/2addr v0, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v0, v7

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v7, :cond_15e

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_b2

    :cond_15e
    const/4 v7, 0x0

    :goto_b2
    sub-int/2addr v0, v7

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    :goto_b3
    const/4 v14, 0x1

    goto :goto_b5

    .line 2458
    :cond_15f
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v9, :cond_160

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_b4

    :cond_160
    const/4 v9, 0x0

    :goto_b4
    add-int/2addr v7, v9

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    .line 2459
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2460
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2461
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2462
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto :goto_b3

    .line 2464
    :goto_b5
    iput-boolean v14, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto :goto_b6

    :cond_161
    const/4 v7, 0x0

    .line 2466
    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2468
    :goto_b6
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v0, :cond_16a

    const/high16 v0, 0x41c80000    # 25.0f

    .line 2469
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v4, v0

    .line 2471
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v7, :cond_165

    .line 2472
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const v7, 0x421153f8    # 36.332f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2473
    iget-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v7, :cond_163

    .line 2474
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    if-eqz v7, :cond_162

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_b7

    :cond_162
    const/4 v7, 0x0

    :goto_b7
    sub-int/2addr v0, v7

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2476
    :cond_163
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v0, :cond_16a

    .line 2477
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v7, :cond_164

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_b8

    :cond_164
    const/4 v7, 0x0

    :goto_b8
    sub-int/2addr v0, v7

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    goto :goto_bb

    .line 2480
    :cond_165
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2481
    iget-boolean v8, v1, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v8, :cond_167

    .line 2482
    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    if-eqz v8, :cond_166

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_b9

    :cond_166
    const/4 v8, 0x0

    :goto_b9
    add-int/2addr v7, v8

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2484
    :cond_167
    iget-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v7, :cond_169

    .line 2485
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    iget v8, v1, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v8, :cond_168

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_ba

    :cond_168
    const/4 v8, 0x0

    :goto_ba
    add-int/2addr v7, v8

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2487
    :cond_169
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2488
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2489
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2490
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v7, v0

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_16a
    :goto_bb
    if-eqz v6, :cond_170

    if-nez v5, :cond_16b

    move-object/from16 v5, v23

    .line 2524
    :cond_16b
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v14, 0x96

    if-le v0, v14, :cond_16c

    const/4 v7, 0x0

    .line 2525
    invoke-interface {v5, v7, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2527
    :cond_16c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_16d

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_16f

    :cond_16d
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-nez v0, :cond_16f

    if-eqz v2, :cond_16e

    goto :goto_bc

    .line 2530
    :cond_16e
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTwoNewLinesToOne(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_bd

    .line 2528
    :cond_16f
    :goto_bc
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2532
    :goto_bd
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v0, v5, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2533
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_170

    .line 2534
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v0, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_170

    move-object v5, v0

    .line 2540
    :cond_170
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 2541
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_172

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_171

    goto :goto_be

    :cond_171
    const/high16 v0, 0x42780000    # 62.0f

    goto :goto_bf

    :cond_172
    :goto_be
    const/high16 v0, 0x42680000    # 58.0f

    :goto_bf
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    .line 2542
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_173

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_174

    :cond_173
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_176

    :cond_174
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-eqz v0, :cond_176

    .line 2543
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v4

    if-eqz v4, :cond_175

    const/high16 v4, 0x41200000    # 10.0f

    goto :goto_c0

    :cond_175
    move/from16 v4, v40

    :goto_c0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    .line 2545
    :cond_176
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_179

    .line 2546
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_178

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_177

    goto :goto_c1

    :cond_177
    const/high16 v0, 0x421c0000    # 39.0f

    goto :goto_c2

    :cond_178
    :goto_c1
    const/high16 v0, 0x42080000    # 34.0f

    :goto_c2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    const/4 v0, 0x0

    .line 2547
    :goto_c3
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v6, v4

    if-ge v0, v6, :cond_182

    .line 2548
    aget-object v4, v4, v0

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 2550
    :cond_179
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_17b

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_17a

    goto :goto_c4

    :cond_17a
    const/4 v4, 0x0

    goto/16 :goto_cb

    :cond_17b
    :goto_c4
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-nez v0, :cond_17a

    if-eqz v2, :cond_17a

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_17c

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    const/4 v14, 0x1

    if-ne v0, v14, :cond_17a

    .line 2551
    :cond_17c
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v2, v0, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2553
    :try_start_6
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_17d

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 2554
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v0, :cond_17d

    move-object/from16 v43, v0

    goto :goto_c5

    :catch_6
    move-exception v0

    goto :goto_c7

    :cond_17d
    move-object/from16 v43, v2

    .line 2559
    :goto_c5
    :try_start_7
    sget-object v44, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget-object v46, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v50, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/16 v52, 0x1

    const/high16 v47, 0x3f800000    # 1.0f

    const/16 v48, 0x0

    const/16 v49, 0x0

    move/from16 v51, v32

    move/from16 v45, v32

    :try_start_8
    invoke-static/range {v43 .. v52}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :try_start_9
    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-object/from16 v2, v43

    goto :goto_c8

    :catch_7
    move-exception v0

    :goto_c6
    move-object/from16 v2, v43

    goto :goto_c7

    :catch_8
    move-exception v0

    move/from16 v32, v45

    goto :goto_c6

    .line 2561
    :goto_c7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_c8
    const/high16 v0, 0x424c0000    # 51.0f

    .line 2563
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2564
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_17e

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_17e

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_c9

    :cond_17e
    const/4 v0, 0x0

    :goto_c9
    const/4 v4, 0x0

    .line 2565
    :goto_ca
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v7, v6

    if-ge v4, v7, :cond_182

    .line 2566
    aget-object v6, v6, v4

    add-int v7, v19, v0

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ca

    .line 2569
    :goto_cb
    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    .line 2570
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_180

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_17f

    goto :goto_cc

    :cond_17f
    const/high16 v0, 0x421c0000    # 39.0f

    .line 2577
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    goto :goto_cf

    :cond_180
    :goto_cc
    const/high16 v0, 0x42000000    # 32.0f

    .line 2571
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2572
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_181

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_181

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_cd

    :cond_181
    const/4 v0, 0x0

    :goto_cd
    const/4 v4, 0x0

    .line 2573
    :goto_ce
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v7, v6

    if-ge v4, v7, :cond_182

    .line 2574
    aget-object v6, v6, v4

    add-int v7, v19, v0

    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    .line 2581
    :cond_182
    :goto_cf
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_183

    .line 2582
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2584
    :cond_183
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v14, 0x1

    new-array v6, v14, [Landroid/text/Layout;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v7, v1, v0, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2588
    :try_start_a
    iput-boolean v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    .line 2589
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_184

    .line 2590
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {v3, v0, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2591
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v32, v4

    int-to-float v4, v4

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v44

    .line 2592
    new-instance v43, Landroid/text/StaticLayout;

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v46, v32, v3

    sget-object v47, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/high16 v48, 0x3f800000    # 1.0f

    move-object/from16 v45, v0

    invoke-direct/range {v43 .. v50}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v43

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    .line 2593
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 2594
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2595
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v1, v0, v3, v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    goto :goto_d0

    :cond_184
    const/4 v4, 0x0

    .line 2597
    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 2602
    :catch_9
    :goto_d0
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    const/4 v14, 0x1

    new-array v4, v14, [Landroid/text/Layout;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    invoke-static {v7, v1, v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2605
    :try_start_b
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_187

    .line 2606
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_186

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_185

    goto :goto_d1

    :cond_185
    move-object/from16 v4, v30

    goto :goto_d2

    :catch_a
    move-exception v0

    goto :goto_d3

    :cond_186
    :goto_d1
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-nez v0, :cond_185

    .line 2607
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v31, v0, v3

    sget-object v33, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v37, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v39, 0x1

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v36, 0x0

    move/from16 v38, v32

    move/from16 v35, v0

    invoke-static/range {v30 .. v39}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    goto :goto_d4

    .line 2609
    :goto_d2
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v32, v3

    int-to-float v3, v3

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v0, v3, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2610
    new-instance v31, Landroid/text/StaticLayout;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v33, v3, v4

    sget-object v35, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    move/from16 v34, v32

    move-object/from16 v32, v0

    :try_start_c
    invoke-direct/range {v31 .. v38}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    move-object/from16 v0, v31

    move/from16 v32, v34

    :try_start_d
    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_d4

    :catch_b
    move-exception v0

    move/from16 v32, v34

    .line 2614
    :goto_d3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2620
    :cond_187
    :goto_d4
    :try_start_e
    instance-of v0, v5, Landroid/text/Spannable;

    if-eqz v0, :cond_18c

    .line 2621
    move-object v0, v5

    check-cast v0, Landroid/text/Spannable;

    .line 2622
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0, v7, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_d5
    if-ge v6, v4, :cond_18c

    aget-object v7, v3, v6

    .line 2623
    instance-of v8, v7, Landroid/text/style/ClickableSpan;

    if-nez v8, :cond_189

    instance-of v8, v7, Lorg/telegram/messenger/CodeHighlighting$Span;

    if-nez v8, :cond_189

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v8

    if-nez v8, :cond_188

    instance-of v8, v7, Lorg/telegram/ui/Components/TypefaceSpan;

    if-nez v8, :cond_189

    goto :goto_d7

    :catch_c
    move-exception v0

    :goto_d6
    const/4 v4, 0x0

    goto/16 :goto_e0

    :cond_188
    :goto_d7
    instance-of v8, v7, Lorg/telegram/messenger/CodeHighlighting$ColorSpan;

    if-nez v8, :cond_189

    instance-of v8, v7, Lorg/telegram/ui/Components/QuoteSpan;

    if-nez v8, :cond_189

    instance-of v8, v7, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-nez v8, :cond_189

    instance-of v8, v7, Landroid/text/style/StyleSpan;

    if-eqz v8, :cond_18a

    move-object v8, v7

    check-cast v8, Landroid/text/style/StyleSpan;

    invoke-virtual {v8}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v8

    const/4 v14, 0x1

    if-ne v8, v14, :cond_18a

    .line 2624
    :cond_189
    invoke-interface {v0, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2627
    :cond_18a
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v8

    if-eqz v8, :cond_18b

    instance-of v8, v7, Lorg/telegram/ui/Components/URLSpanMono;

    if-eqz v8, :cond_18b

    check-cast v7, Lorg/telegram/ui/Components/URLSpanMono;

    const/4 v14, 0x2

    .line 2628
    invoke-virtual {v7, v14}, Lorg/telegram/ui/Components/URLSpanMono;->setCurrentType(B)V

    :cond_18b
    add-int/lit8 v6, v6, 0x1

    goto :goto_d5

    .line 2632
    :cond_18c
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_18d

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_18e

    :cond_18d
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-nez v0, :cond_18e

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_18e

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    const/4 v3, 0x1

    if-le v0, v3, :cond_18e

    .line 2635
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v3

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move-object/from16 v43, v2

    const/4 v4, 0x0

    goto/16 :goto_da

    .line 2636
    :cond_18e
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_18f

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_191

    :cond_18f
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-nez v0, :cond_191

    if-nez v2, :cond_191

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_190

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_190

    goto :goto_d9

    :cond_190
    :goto_d8
    move-object v4, v2

    move-object/from16 v43, v5

    goto :goto_da

    .line 2637
    :cond_191
    :goto_d9
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_192

    instance-of v0, v5, Landroid/text/Spanned;

    if-eqz v0, :cond_192

    move-object v0, v5

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v7, 0x0

    invoke-interface {v0, v7, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    array-length v0, v0

    if-gtz v0, :cond_192

    .line 2638
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v4, v14

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xf

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v32, v3

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v0, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_d8

    .line 2640
    :cond_192
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v32, v3

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v0, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_d8

    .line 2646
    :goto_da
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isForum:Z

    if-eqz v0, :cond_193

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_193

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_db
    move-object/from16 v46, v0

    goto :goto_dc

    :cond_193
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_db

    .line 2647
    :goto_dc
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_194

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_197

    :cond_194
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-nez v0, :cond_197

    .line 2648
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_195

    if-eqz v4, :cond_195

    .line 2649
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    add-int v32, v32, v0

    :cond_195
    move/from16 v45, v32

    .line 2651
    :try_start_f
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v50, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eqz v4, :cond_196

    const/16 v52, 0x1

    goto :goto_dd

    :cond_196
    const/16 v52, 0x2

    :goto_dd
    const/high16 v47, 0x3f800000    # 1.0f

    const/16 v49, 0x0

    move/from16 v51, v45

    move-object/from16 v44, v0

    move/from16 v48, v2

    invoke-static/range {v43 .. v52}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    move/from16 v32, v45

    goto :goto_de

    :catch_d
    move-exception v0

    move/from16 v32, v45

    goto/16 :goto_d6

    .line 2653
    :cond_197
    :try_start_10
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_198

    .line 2654
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v2, v14

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int v32, v32, v0

    .line 2655
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_198

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_198

    .line 2656
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v3, v14

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    :cond_198
    move-object/from16 v44, v43

    .line 2659
    :try_start_11
    new-instance v43, Landroid/text/StaticLayout;

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/high16 v48, 0x3f800000    # 1.0f

    move-object/from16 v45, v0

    move-object/from16 v47, v46

    move/from16 v46, v32

    :try_start_12
    invoke-direct/range {v43 .. v50}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v43

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    move/from16 v32, v46

    .line 2661
    :goto_de
    :try_start_13
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 2662
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2663
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    :goto_df
    move/from16 v0, v32

    goto :goto_e1

    :catch_e
    move-exception v0

    move/from16 v32, v46

    goto/16 :goto_d6

    :catch_f
    move-exception v0

    move/from16 v46, v32

    goto/16 :goto_d6

    .line 2665
    :goto_e0
    iput-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2666
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_df

    .line 2668
    :goto_e1
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v14, 0x1

    new-array v4, v14, [Landroid/text/Layout;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    invoke-static {v7, v1, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2672
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1ab

    .line 2673
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1a2

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_1a2

    .line 2674
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    .line 2675
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    .line 2676
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2677
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    if-eqz v6, :cond_199

    .line 2678
    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2680
    :cond_199
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v5, :cond_19a

    .line 2681
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 2683
    :cond_19a
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v5, :cond_19b

    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v5, :cond_19c

    :cond_19b
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v5, :cond_19c

    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    if-nez v5, :cond_19c

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v5, :cond_19c

    .line 2684
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v5, v5

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v7, v7

    sub-double/2addr v7, v3

    add-double/2addr v5, v7

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto/16 :goto_e3

    .line 2685
    :cond_19c
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v5, :cond_19d

    .line 2686
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v5, v5

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v7, v7

    sub-double/2addr v7, v3

    add-double/2addr v5, v7

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto/16 :goto_e3

    .line 2687
    :cond_19d
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    if-eqz v5, :cond_19e

    .line 2688
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v5, v5

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v7, v7

    sub-double/2addr v7, v3

    add-double/2addr v5, v7

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_e3

    .line 2689
    :cond_19e
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v5, :cond_19f

    .line 2690
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v5, v5

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v7, v7

    sub-double/2addr v7, v3

    float-to-double v9, v2

    sub-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_e3

    .line 2691
    :cond_19f
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v5, :cond_1a1

    .line 2692
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v5, v5

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v7, v7

    sub-double/2addr v7, v3

    add-double/2addr v5, v7

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    const/4 v14, 0x1

    if-ne v7, v14, :cond_1a0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_e2

    :cond_1a0
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_e2
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicWidth()I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_e3

    .line 2694
    :cond_1a1
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v5, v5

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v7, v7

    sub-double/2addr v7, v3

    add-double/2addr v5, v7

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    :goto_e3
    cmpl-float v2, v2, v42

    if-nez v2, :cond_1a2

    .line 2697
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v2

    cmpg-double v5, v3, v5

    if-gez v5, :cond_1a2

    .line 2698
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v5, v5

    int-to-double v7, v2

    sub-double/2addr v7, v3

    add-double/2addr v5, v7

    double-to-int v2, v5

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2702
    :cond_1a2
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const v3, 0x7fffffff

    if-eqz v2, :cond_1a5

    .line 2703
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_1a5

    move v5, v3

    const/4 v4, 0x0

    :goto_e4
    if-ge v4, v2, :cond_1a4

    .line 2707
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    cmpl-float v6, v6, v42

    if-nez v6, :cond_1a3

    .line 2709
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v8, v6

    double-to-int v6, v8

    .line 2710
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    :cond_1a3
    const/4 v5, 0x0

    :cond_1a4
    if-eq v5, v3, :cond_1a5

    .line 2717
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v2, v5

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2721
    :cond_1a5
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1a8

    .line 2722
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_1a8

    move v5, v3

    const/4 v4, 0x0

    :goto_e5
    if-ge v4, v2, :cond_1a7

    .line 2726
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    cmpl-float v6, v6, v42

    if-nez v6, :cond_1a6

    .line 2728
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v8, v6

    double-to-int v6, v8

    .line 2729
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_e5

    :cond_1a6
    const/4 v5, 0x0

    :cond_1a7
    if-eq v5, v3, :cond_1a8

    .line 2736
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v2, v5

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2740
    :cond_1a8
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1a9

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_1a9

    .line 2741
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpl-float v2, v2, v42

    if-nez v2, :cond_1a9

    .line 2743
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1a9

    .line 2745
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-double v8, v0

    sub-double/2addr v6, v4

    add-double/2addr v8, v6

    double-to-int v0, v8

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    .line 2749
    :cond_1a9
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b7

    .line 2750
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1b7

    const/4 v2, 0x0

    :goto_e6
    if-ge v2, v0, :cond_1aa

    int-to-float v3, v3

    .line 2754
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_e6

    .line 2756
    :cond_1aa
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    goto/16 :goto_ea

    .line 2760
    :cond_1ab
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1b0

    .line 2761
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    .line 2762
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v2, :cond_1ac

    .line 2763
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2765
    :cond_1ac
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1ae

    .line 2766
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 2767
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v4, :cond_1ad

    .line 2768
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 2772
    :cond_1ad
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v4

    cmpg-double v5, v2, v5

    if-gez v5, :cond_1ae

    .line 2773
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v5, v5

    int-to-double v7, v4

    sub-double/2addr v7, v2

    sub-double/2addr v5, v7

    double-to-int v2, v5

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2776
    :cond_1ae
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    if-eqz v2, :cond_1af

    .line 2777
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    invoke-static/range {v41 .. v41}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2780
    :cond_1af
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 2783
    :cond_1b0
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b2

    .line 2784
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1b2

    const/high16 v2, 0x4f000000

    const/4 v3, 0x0

    :goto_e7
    if-ge v3, v0, :cond_1b1

    .line 2788
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_e7

    .line 2790
    :cond_1b1
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2793
    :cond_1b2
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b4

    .line 2794
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1b4

    const/high16 v2, 0x4f000000

    const/4 v3, 0x0

    :goto_e8
    if-ge v3, v0, :cond_1b3

    .line 2798
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_e8

    .line 2800
    :cond_1b3
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2803
    :cond_1b4
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b6

    .line 2804
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1b6

    const/high16 v2, 0x4f000000

    const/4 v3, 0x0

    :goto_e9
    if-ge v3, v0, :cond_1b5

    .line 2808
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    .line 2810
    :cond_1b5
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2813
    :cond_1b6
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b7

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1b7

    .line 2814
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    .line 2817
    :cond_1b7
    :goto_ea
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1ba

    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-ltz v2, :cond_1ba

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1ba

    if-ltz v11, :cond_1b8

    add-int/lit8 v0, v11, 0x1

    .line 2819
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b8

    .line 2820
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 2821
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_eb

    .line 2823
    :cond_1b8
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 2824
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    :goto_eb
    cmpg-float v3, v2, v0

    if-gez v3, :cond_1b9

    .line 2827
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    goto :goto_ec

    .line 2829
    :cond_1b9
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    .line 2832
    :cond_1ba
    :goto_ec
    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->updateThumbsPosition()V

    return-void
.end method

.method public checkCurrentDialogIndex(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkHeight()V
    .locals 2

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5880
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isShareToStoryCell:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5881
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 5883
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawAvatarOverlays(Landroid/graphics/Canvas;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4770
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_4

    .line 4772
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v2

    .line 4773
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v7

    .line 4774
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v8

    sub-float v8, v5, v8

    goto :goto_0

    :cond_0
    move v8, v5

    .line 4776
    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->starBg:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_1

    .line 4777
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->star_small_outline:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->starBg:Landroid/graphics/drawable/Drawable;

    .line 4779
    :cond_1
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    .line 4780
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->starBgColor:I

    if-eq v10, v9, :cond_2

    .line 4781
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->starBg:Landroid/graphics/drawable/Drawable;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->starBgColor:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v9, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4783
    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->starFg:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_3

    .line 4784
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->starFg:Landroid/graphics/drawable/Drawable;

    :cond_3
    const v9, 0x419aa3d7    # 19.33f

    .line 4787
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 4788
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    float-to-int v7, v7

    const v11, 0x3fd47ae1    # 1.66f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v7

    sub-int/2addr v12, v9

    float-to-int v2, v2

    sub-int v13, v2, v9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v10, v12, v13, v14, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4789
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    neg-int v12, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    neg-int v14, v14

    invoke-virtual {v10, v12, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 4790
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->starBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4791
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->starBg:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-virtual {v12, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4792
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->starBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4793
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v7

    sub-int/2addr v12, v9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {v10, v12, v13, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4794
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->starFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4795
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->starFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4796
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->starFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v6

    .line 4798
    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlocked:Z

    if-eqz v8, :cond_5

    if-nez v2, :cond_5

    move v8, v4

    goto :goto_2

    :cond_5
    move v8, v6

    :goto_2
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40000000    # 2.0f

    if-lez v9, :cond_8

    .line 4800
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 4801
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    .line 4803
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4804
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x413547ae    # 11.33f

    .line 4805
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4806
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v4, :cond_6

    .line 4807
    new-instance v12, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const/16 v17, -0x1

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v15, -0x1

    const/16 v16, -0x1

    move-object/from16 v18, v4

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 4809
    :cond_6
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v5, v4

    float-to-int v14, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    float-to-int v15, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    float-to-int v8, v8

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v4

    move/from16 v17, v8

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 4810
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4811
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    .line 4812
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4813
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    const/4 v9, -0x1

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4815
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4816
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    const/high16 v9, 0x3f600000    # 0.875f

    mul-float/2addr v8, v9

    mul-float/2addr v8, v7

    sub-float v8, v5, v8

    float-to-int v8, v8

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4817
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v11

    mul-float/2addr v10, v9

    mul-float/2addr v10, v7

    sub-float v10, v2, v10

    float-to-int v10, v10

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4818
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    mul-float/2addr v12, v9

    mul-float/2addr v12, v7

    add-float/2addr v5, v12

    float-to-int v5, v5

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4819
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    mul-float/2addr v12, v9

    mul-float/2addr v12, v7

    add-float/2addr v2, v12

    float-to-int v2, v2

    .line 4815
    invoke-virtual {v4, v8, v10, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4821
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v7, v3

    float-to-int v3, v7

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4822
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4823
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return v6

    .line 4826
    :cond_8
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v3, :cond_3a

    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v3, :cond_3a

    if-nez v2, :cond_3a

    .line 4827
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-lez v2, :cond_9

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    if-nez v2, :cond_9

    move v2, v4

    goto :goto_3

    :cond_9
    move v2, v6

    :goto_3
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    .line 4828
    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v3, v3, v5

    const/high16 v7, 0x41100000    # 9.0f

    const/high16 v9, 0x41300000    # 11.0f

    if-eqz v3, :cond_15

    if-nez v2, :cond_a

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_15

    .line 4829
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TimerDrawable;->getTime()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-eq v2, v3, :cond_c

    if-lez v3, :cond_c

    .line 4830
    :cond_b
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-static {v2}, Lorg/telegram/ui/Components/TimerDrawable;->getTtlIconForDialogs(I)Lorg/telegram/ui/Components/TimerDrawable;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    .line 4832
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_d

    .line 4833
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    .line 4834
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    const/high16 v3, 0x32000000

    .line 4835
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4837
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 4839
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_e

    .line 4840
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v3, v12

    :goto_4
    float-to-int v3, v3

    goto :goto_5

    .line 4842
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v3, v12

    goto :goto_4

    .line 4844
    :goto_5
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    const/high16 v13, 0x41b00000    # 22.0f

    .line 4845
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    .line 4844
    invoke-virtual {v12, v6, v6, v14, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4848
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    .line 4849
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->updateThumbShaderMatrix()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 4850
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v13, v12, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    if-eqz v13, :cond_f

    .line 4851
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_6

    .line 4852
    :cond_f
    iget-object v12, v12, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    if-eqz v12, :cond_13

    .line 4853
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_6

    .line 4856
    :cond_10
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4857
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_11

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_11

    .line 4858
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 4859
    :cond_11
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v12, :cond_12

    .line 4860
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 4861
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v12, v12, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/GradientTools;->getAverageColor()I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 4863
    :cond_12
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 4866
    :cond_13
    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4867
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v13, v5, v13

    mul-float/2addr v12, v13

    .line 4868
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v13, :cond_14

    .line 4869
    invoke-virtual {v13}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v13

    sub-float v13, v5, v13

    mul-float/2addr v12, v13

    :cond_14
    int-to-float v3, v3

    int-to-float v2, v2

    .line 4871
    invoke-virtual {v1, v12, v12, v3, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4872
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4873
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4874
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4875
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    sub-float/2addr v3, v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    sub-float/2addr v2, v12

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4876
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/TimerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4877
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 4878
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 4880
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v12, 0x40c00000    # 6.0f

    const v13, 0x3dda740e

    if-eqz v2, :cond_1b

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_1b

    .line 4881
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v2

    .line 4882
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->wasDrawnOnline:Z

    if-nez v2, :cond_16

    .line 4883
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1a

    .line 4884
    :cond_16
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getOnlineDotOuterRadius()I

    move-result v7

    int-to-float v7, v7

    .line 4885
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getOnlineDotInnerRadius()I

    move-result v9

    int-to-float v9, v9

    .line 4886
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10, v7}, Lcom/exteragram/messenger/ExteraConfig;->getOnlineDotOffset(FF)F

    move-result v10

    .line 4887
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v7}, Lcom/exteragram/messenger/ExteraConfig;->getOnlineDotOffset(FF)F

    move-result v3

    .line 4889
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v3

    .line 4890
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_17

    iget v3, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v10

    goto :goto_7

    :cond_17
    iget v3, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v10

    .line 4892
    :goto_7
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 4893
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v7, v10

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12, v7, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4894
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 4895
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v9, v7

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12, v9, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_19

    .line 4897
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v2, v1, v5

    if-gez v2, :cond_1a

    add-float/2addr v1, v13

    .line 4898
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_18

    .line 4900
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    :cond_18
    :goto_8
    move v6, v4

    goto :goto_9

    .line 4905
    :cond_19
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v2, v1, v8

    if-lez v2, :cond_1a

    sub-float/2addr v1, v13

    .line 4906
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_18

    .line 4908
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    goto :goto_8

    :cond_1a
    :goto_9
    move/from16 v18, v4

    move/from16 v19, v13

    goto/16 :goto_14

    .line 4914
    :cond_1b
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1a

    .line 4915
    iget-boolean v14, v2, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v14, :cond_1c

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v2, :cond_1c

    move v2, v4

    goto :goto_a

    :cond_1c
    move v2, v6

    :goto_a
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v2, :cond_1d

    .line 4916
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_1a

    :cond_1d
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1a

    .line 4917
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v2

    sub-float v2, v5, v2

    goto :goto_b

    :cond_1e
    move v2, v5

    .line 4918
    :goto_b
    iget-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v14, v14, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_1f

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_20

    :cond_1f
    move v3, v12

    :cond_20
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v14, v3

    float-to-int v3, v14

    .line 4920
    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_23

    .line 4921
    iget-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v14, v14, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_22

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_21

    goto :goto_c

    :cond_21
    move v10, v12

    :cond_22
    :goto_c
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v14, v10

    :goto_d
    float-to-int v10, v14

    goto :goto_f

    .line 4923
    :cond_23
    iget-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v14, v14, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_25

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_24

    goto :goto_e

    :cond_24
    move v10, v12

    :cond_25
    :goto_e
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v14, v10

    goto :goto_d

    .line 4926
    :goto_f
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v12, v12, v8

    if-eqz v12, :cond_26

    .line 4927
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4928
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v12, v5, v12

    int-to-float v14, v10

    int-to-float v15, v3

    .line 4929
    invoke-virtual {v1, v12, v12, v14, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4931
    :cond_26
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v10

    int-to-float v3, v3

    .line 4932
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float/2addr v9, v15

    mul-float/2addr v9, v2

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v3, v9, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4933
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    move/from16 v16, v7

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 4934
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float/2addr v7, v9

    mul-float/2addr v7, v2

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v3, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4935
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    const v7, 0x581e0

    .line 4939
    invoke-static {v7}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_27

    const v9, 0x3f266666    # 0.65f

    .line 4940
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4942
    :cond_27
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    const/high16 v14, 0x40400000    # 3.0f

    const/high16 v15, 0x40a00000    # 5.0f

    const/high16 v16, 0x40800000    # 4.0f

    if-nez v9, :cond_28

    .line 4943
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    move/from16 v17, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    move/from16 v18, v11

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v7, v11

    add-float/2addr v9, v7

    .line 4944
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    move/from16 v19, v13

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_10
    mul-float/2addr v11, v13

    sub-float/2addr v7, v11

    goto/16 :goto_12

    :cond_28
    move/from16 v17, v7

    move/from16 v18, v11

    move/from16 v19, v13

    if-ne v9, v4, :cond_29

    .line 4946
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v11

    sub-float v9, v7, v9

    .line 4947
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_11
    mul-float/2addr v11, v13

    add-float/2addr v7, v11

    goto/16 :goto_12

    :cond_29
    const/4 v7, 0x2

    if-ne v9, v7, :cond_2a

    .line 4949
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v11

    add-float/2addr v9, v7

    .line 4950
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_10

    :cond_2a
    const/4 v7, 0x3

    if-ne v9, v7, :cond_2b

    .line 4952
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v11

    sub-float v9, v7, v9

    .line 4953
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_11

    :cond_2b
    const/4 v7, 0x4

    if-ne v9, v7, :cond_2c

    .line 4955
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v11

    add-float/2addr v9, v7

    .line 4956
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto/16 :goto_10

    :cond_2c
    const/4 v7, 0x5

    if-ne v9, v7, :cond_2d

    .line 4958
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v11

    sub-float v9, v7, v9

    .line 4959
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_11

    :cond_2d
    const/4 v7, 0x6

    if-ne v9, v7, :cond_2e

    .line 4961
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v11

    add-float/2addr v9, v7

    .line 4962
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto/16 :goto_10

    .line 4964
    :cond_2e
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v11

    sub-float v9, v7, v9

    .line 4965
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto/16 :goto_11

    .line 4968
    :goto_12
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v11, v11, v5

    if-ltz v11, :cond_2f

    cmpg-float v11, v2, v5

    if-gez v11, :cond_30

    .line 4969
    :cond_2f
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4970
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float v13, v11, v2

    mul-float/2addr v11, v2

    invoke-virtual {v1, v13, v11, v12, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4972
    :cond_30
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v10, v12

    int-to-float v12, v12

    sub-float v13, v3, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v18, v4

    add-int v4, v10, v16

    int-to-float v4, v4

    add-float/2addr v9, v3

    invoke-virtual {v11, v12, v13, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4973
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4975
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v10, v9

    int-to-float v9, v9

    sub-float v11, v3, v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v10, v12

    int-to-float v12, v12

    add-float/2addr v3, v7

    invoke-virtual {v4, v9, v11, v12, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4976
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v7, v9, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4978
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v10

    int-to-float v7, v7

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v10, v9

    int-to-float v9, v10

    invoke-virtual {v4, v7, v11, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4979
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4980
    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_31

    cmpg-float v2, v2, v5

    if-gez v2, :cond_32

    .line 4981
    :cond_31
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 4984
    :cond_32
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 4985
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    const v3, 0x3d23d70a    # 0.04f

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_33

    .line 4987
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4988
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_33

    .line 4990
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    :cond_33
    move/from16 v6, v18

    .line 4996
    :cond_34
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eqz v2, :cond_35

    .line 4997
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v3, v2, v5

    if-gez v3, :cond_36

    add-float v2, v2, v19

    .line 4998
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_36

    .line 5000
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    goto :goto_13

    .line 5004
    :cond_35
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpl-float v3, v2, v8

    if-lez v3, :cond_36

    sub-float v2, v2, v19

    .line 5005
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_36

    .line 5007
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    .line 5013
    :cond_36
    :goto_13
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_37

    .line 5014
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 5019
    :cond_37
    :goto_14
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    if-eqz v1, :cond_38

    .line 5020
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    cmpg-float v2, v1, v5

    if-gez v2, :cond_39

    add-float v1, v1, v19

    .line 5021
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    :goto_15
    move/from16 v4, v18

    goto :goto_16

    .line 5025
    :cond_38
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    cmpl-float v2, v1, v8

    if-lez v2, :cond_39

    sub-float v1, v1, v19

    .line 5026
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    goto :goto_15

    :cond_39
    move v4, v6

    .line 5030
    :goto_16
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    invoke-static {v1, v5, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    return v4

    :cond_3a
    return v6
.end method

.method protected drawLock2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClipProgress()F
    .locals 1

    .line 5922
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    return v0
.end method

.method public getCurrentDialogFolderId()I
    .locals 1

    .line 5938
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    return v0
.end method

.method public getDialogId()J
    .locals 2

    .line 846
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method public getHasUnread()Z
    .locals 1

    .line 1035
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getIsMuted()Z
    .locals 1

    .line 1039
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .line 1043
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPinForced:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 5946
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 850
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    return v0
.end method

.method public getMessageNameString()Ljava/lang/String;
    .locals 12

    .line 5607
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5613
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v2

    .line 5614
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    .line 5615
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    const-wide/16 v6, 0x0

    if-nez v0, :cond_4

    iget-wide v8, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_4

    .line 5616
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-wide/32 v10, 0x28ae10

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 5620
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v0, :cond_3

    .line 5621
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    .line 5623
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    :cond_2
    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    cmp-long v0, v2, v8

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    move-wide v2, v8

    .line 5632
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v0, :cond_5

    .line 5633
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_5

    .line 5635
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 5638
    :cond_5
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5639
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v2, v1

    goto :goto_0

    .line 5641
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 5644
    :goto_0
    iget-wide v6, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v3, v6, v4

    const-string v4, "\n"

    const-string v5, ""

    if-nez v3, :cond_9

    if-eqz v0, :cond_7

    .line 5646
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    if-eqz v2, :cond_8

    .line 5648
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v1

    :cond_9
    const-wide/32 v8, 0x77628

    cmp-long v1, v6, v8

    if-nez v1, :cond_d

    .line 5651
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v1, :cond_d

    .line 5652
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 5653
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5655
    :cond_a
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 5656
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5657
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 5658
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5660
    :cond_b
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v5

    .line 5661
    :cond_c
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object v0

    .line 5664
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    .line 5665
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5666
    :cond_e
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v1, :cond_f

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 5667
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5668
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 5669
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    if-eqz v0, :cond_14

    .line 5671
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_12

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_11

    goto :goto_1

    .line 5678
    :cond_11
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5672
    :cond_12
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5673
    sget v0, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5675
    :cond_13
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    if-eqz v2, :cond_15

    .line 5680
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 5681
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5683
    :cond_15
    const-string v0, "DELETED"

    return-object v0
.end method

.method public getMessageStringFormatted(ILjava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;
    .locals 11

    .line 5689
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 5690
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 5691
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 5692
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5693
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    .line 5694
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 5696
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 5699
    :cond_2
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 5701
    :cond_3
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5702
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 5703
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v6

    instance-of p2, p2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz p2, :cond_5

    .line 5704
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    neg-long v0, v0

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 5706
    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v6

    check-cast p3, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    goto :goto_2

    .line 5710
    :cond_4
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 5711
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 5714
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_6
    return-object p1

    :cond_7
    const/16 v5, 0x108

    const/16 v7, 0x82

    .line 5716
    const-string v8, ": "

    const/16 v9, 0x96

    if-eqz v0, :cond_15

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v10, :cond_15

    .line 5718
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5720
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v1, :cond_8

    .line 5721
    const-string v1, ""

    goto :goto_3

    .line 5722
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5723
    const-string/jumbo v1, "\ud83d\udcf9 "

    goto :goto_3

    .line 5724
    :cond_9
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5725
    const-string/jumbo v1, "\ud83c\udfa4 "

    goto :goto_3

    .line 5726
    :cond_a
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5727
    const-string/jumbo v1, "\ud83c\udfa7 "

    goto :goto_3

    .line 5728
    :cond_b
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5729
    const-string/jumbo v1, "\ud83d\uddbc "

    goto :goto_3

    .line 5731
    :cond_c
    const-string/jumbo v1, "\ud83d\udcce "

    .line 5733
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 5734
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 5735
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 p4, p4, 0x2f

    int-to-float p4, p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p2, p4

    .line 5736
    iget-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz p4, :cond_e

    .line 5737
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_d

    int-to-float p2, p2

    .line 5738
    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    :cond_d
    int-to-float p2, p2

    .line 5740
    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    :cond_e
    if-lez p2, :cond_f

    .line 5742
    iget-boolean p3, v0, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlightCut:Z

    if-eqz p3, :cond_f

    .line 5743
    iget-object p3, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {p1, p3, p2, p4, v7}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5745
    :cond_f
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    .line 5747
    :cond_10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v9, :cond_11

    .line 5748
    invoke-interface {p2, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5750
    :cond_11
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5752
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 5754
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-static {v4, p2, v3, v5}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 5755
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p2, :cond_13

    .line 5756
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    :goto_4
    invoke-static {p2, v3, v2}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 5758
    :cond_13
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    if-eqz p4, :cond_14

    .line 5760
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5762
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    .line 5764
    :cond_15
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/16 v4, 0x21

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result p2

    if-nez p2, :cond_29

    .line 5765
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object p2, p2, v0

    iput-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 5767
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    .line 5768
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    const/4 v7, 0x2

    const-string/jumbo v8, "\u2069"

    const/16 v9, 0x20

    const/16 v10, 0xa

    if-eqz v5, :cond_17

    .line 5769
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 5770
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v0, :cond_16

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    .line 5771
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5772
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    .line 5773
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 5774
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v2, "\ud83d\udcca \u2068"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_a

    .line 5776
    :cond_16
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string/jumbo v0, "\ud83d\udcca \u2068%s\u2069"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 5778
    :cond_17
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    if-eqz v5, :cond_19

    .line 5779
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    .line 5780
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v0, :cond_18

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    .line 5781
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5782
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    .line 5783
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 5784
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v2, "\u2705 \u2068"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_a

    .line 5786
    :cond_18
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string/jumbo v0, "\u2705 \u2068%s\u2069"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 5788
    :cond_19
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v5, :cond_1a

    .line 5789
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string/jumbo v0, "\ud83c\udfae \u2068%s\u2069"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 5790
    :cond_1a
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v5, :cond_1b

    .line 5791
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    goto/16 :goto_a

    .line 5792
    :cond_1b
    iget v5, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v8, 0xe

    if-ne v5, v8, :cond_1c

    .line 5793
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    aput-object v1, v2, v3

    const-string/jumbo v0, "\ud83c\udfa7 \u2068%s - %s\u2069"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 5794
    :cond_1c
    instance-of p2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    const-string v0, "Photos"

    const-string v5, "Media"

    if-eqz p2, :cond_20

    .line 5795
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    .line 5796
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 5797
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz v1, :cond_1e

    if-le p2, v3, :cond_1d

    .line 5798
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v5, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_1d
    sget p2, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_1e
    if-le p2, v3, :cond_1f

    .line 5800
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_1f
    sget p2, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5802
    :goto_5
    sget v0, Lorg/telegram/messenger/R$string;->AttachPaidMedia:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 5803
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    goto :goto_a

    .line 5804
    :cond_20
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-le p2, v3, :cond_24

    .line 5805
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz p2, :cond_22

    .line 5806
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez p2, :cond_21

    move p2, v6

    goto :goto_6

    :cond_21
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_6
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v5, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_7
    move-object v0, p2

    goto :goto_9

    .line 5808
    :cond_22
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez p2, :cond_23

    move p2, v6

    goto :goto_8

    :cond_23
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_8
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    .line 5810
    :goto_9
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    goto :goto_a

    .line 5812
    :cond_24
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5813
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    .line 5815
    :goto_a
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 5816
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_25
    if-eqz p4, :cond_26

    .line 5820
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5822
    :cond_26
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 5823
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result p4

    if-nez p4, :cond_28

    .line 5825
    :try_start_0
    new-instance p4, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p2, v0}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz p2, :cond_27

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/lit8 v6, p2, 0x2

    goto :goto_b

    :catch_0
    move-exception p2

    goto :goto_c

    :cond_27
    :goto_b
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {p1, p4, v6, p2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    .line 5827
    :goto_c
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_28
    :goto_d
    return-object p1

    .line 5830
    :cond_29
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 5832
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 5833
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    if-eqz p2, :cond_2a

    move-object v0, p2

    .line 5836
    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p2, v1

    .line 5837
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v1, :cond_2c

    .line 5838
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    int-to-float p2, p2

    .line 5839
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    :cond_2b
    int-to-float p2, p2

    .line 5841
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    :cond_2c
    if-lez p2, :cond_2f

    .line 5844
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v0, v1, p2, v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 5847
    :cond_2d
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-le p2, v9, :cond_2e

    .line 5848
    invoke-interface {v0, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5850
    :cond_2e
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5852
    :cond_2f
    :goto_e
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5853
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_30

    .line 5854
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 5856
    :cond_30
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, p2, v5}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 5857
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_32

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_32

    .line 5858
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v1, :cond_31

    goto :goto_f

    :cond_31
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    :goto_f
    invoke-static {v0, p2, v2}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    :cond_32
    if-eqz p4, :cond_33

    .line 5861
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5863
    :cond_33
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    .line 5865
    :cond_34
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    return-object p1
.end method

.method public getStarsPrice()J
    .locals 2

    .line 482
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->starsPriceBlocked:J

    return-wide v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 3595
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasTags()Z
    .locals 1

    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DialogCellTags;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 6109
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 6112
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 6117
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 6120
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 5269
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5272
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5270
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public isBlocked()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlocked:Z

    return v0
.end method

.method public isDialogFolder()Z
    .locals 1

    .line 5942
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFolderCell()Z
    .locals 1

    .line 3101
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isForumCell()Z
    .locals 2

    .line 2953
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isDialogFolder()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isMoving()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return v0
.end method

.method public isPointInsideAvatar(FF)Z
    .locals 3

    .line 3025
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x42700000    # 60.0f

    if-nez p2, :cond_1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    .line 3026
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 3028
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 895
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    move v1, v0

    .line 897
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 898
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->resetPinnedArchiveState()V

    .line 901
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/text/Layout;

    aput-object v2, v4, v0

    invoke-static {v0, p0, v1, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 902
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    new-array v4, v3, [Landroid/text/Layout;

    aput-object v2, v4, v0

    invoke-static {v0, p0, v1, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 903
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    new-array v4, v3, [Landroid/text/Layout;

    aput-object v2, v4, v0

    invoke-static {v0, p0, v1, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 904
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    new-array v3, v3, [Landroid/text/Layout;

    aput-object v2, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 906
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 908
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 909
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 859
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 860
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 861
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    const/4 v1, 0x0

    .line 862
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 863
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    .line 864
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    .line 865
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    move v2, v0

    .line 866
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 867
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 869
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 870
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 871
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 872
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 873
    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 874
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 876
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_3

    .line 877
    iget-wide v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->remove(J)V

    .line 879
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    .line 880
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 882
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_5

    .line 883
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 885
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 889
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    .line 890
    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3640
    iget-wide v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez v0, :cond_0

    :goto_0
    move-object v7, v1

    goto/16 :goto_78

    .line 3643
    :cond_0
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 3649
    :cond_1
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawArchive:Z

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    if-eqz v0, :cond_3

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v3, :cond_2

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v3, :cond_3

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v3, v13, :cond_3

    :cond_2
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v3, :cond_3

    iget v3, v3, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    cmpl-float v3, v3, v15

    if-nez v3, :cond_3

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v3, v3, v15

    if-nez v3, :cond_3

    .line 3650
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3651
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    sub-float/2addr v0, v3

    invoke-virtual {v2, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3652
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getPullProgress()F

    move-result v3

    sub-float/2addr v14, v3

    mul-float/2addr v0, v14

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v15, v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3653
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3654
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 3656
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->emojiStatusView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    const/4 v9, 0x0

    if-eqz v0, :cond_6

    .line 3663
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_6

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v13, :cond_6

    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_6

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v15

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->hasHiddenArchive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v0, :cond_5

    .line 3664
    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move/from16 v16, v13

    goto :goto_1

    :cond_6
    move/from16 v16, v9

    .line 3665
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getPullProgress()F

    move-result v0

    move/from16 v17, v0

    goto :goto_2

    :cond_7
    move/from16 v17, v14

    :goto_2
    if-eqz v16, :cond_8

    .line 3667
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3671
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v14, v17

    mul-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v15, v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3674
    :cond_8
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    cmpl-float v0, v0, v15

    const/16 v10, 0x18

    if-eqz v0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v10, :cond_9

    .line 3675
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3676
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    int-to-float v5, v5

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v15, v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3680
    :cond_9
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v15

    const/4 v11, 0x3

    const/4 v8, 0x0

    const/high16 v18, 0x40800000    # 4.0f

    const/high16 v19, 0x41000000    # 8.0f

    const/high16 v20, 0x40000000    # 2.0f

    if-nez v0, :cond_c

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_a

    goto :goto_3

    .line 3846
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_b

    .line 3847
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 3848
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3849
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3850
    iput-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3851
    iput-boolean v9, v1, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    :cond_b
    move/from16 v33, v14

    const/16 v37, 0x2

    goto/16 :goto_b

    .line 3681
    :cond_c
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3682
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3686
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    if-eqz v0, :cond_d

    .line 3687
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionBackgroundColorKey:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3688
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionRevealBackgroundColorKey:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    .line 3689
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringKey:Ljava/lang/String;

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringId:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3690
    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_4
    move-object/from16 v22, v5

    goto/16 :goto_6

    .line 3691
    :cond_d
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_f

    .line 3692
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_e

    .line 3693
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3694
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    .line 3695
    sget v6, Lorg/telegram/messenger/R$string;->UnhideFromTop:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3696
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unpinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_4

    .line 3698
    :cond_e
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3699
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    .line 3700
    sget v6, Lorg/telegram/messenger/R$string;->HideOnTop:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3701
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_4

    .line 3704
    :cond_f
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    if-eqz v0, :cond_10

    .line 3705
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3706
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    .line 3707
    sget v6, Lorg/telegram/messenger/R$string;->PsaHide:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3708
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_4

    .line 3709
    :cond_10
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-nez v0, :cond_19

    .line 3710
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3711
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    .line 3712
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v5

    if-ne v5, v11, :cond_12

    .line 3713
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v5, :cond_11

    .line 3714
    sget v6, Lorg/telegram/messenger/R$string;->SwipeUnmute:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3715
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnmuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_4

    .line 3717
    :cond_11
    sget v6, Lorg/telegram/messenger/R$string;->SwipeMute:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3718
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeMuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_4

    .line 3720
    :cond_12
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v5

    if-ne v5, v12, :cond_13

    .line 3721
    sget v6, Lorg/telegram/messenger/R$string;->SwipeDeleteChat:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3722
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSwipeRemove:I

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3723
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeDeleteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_4

    .line 3724
    :cond_13
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v5

    if-ne v5, v13, :cond_16

    .line 3725
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-gtz v5, :cond_15

    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v5, :cond_14

    goto :goto_5

    .line 3729
    :cond_14
    sget v6, Lorg/telegram/messenger/R$string;->SwipeMarkAsUnread:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3730
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnreadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_4

    .line 3726
    :cond_15
    :goto_5
    sget v6, Lorg/telegram/messenger/R$string;->SwipeMarkAsRead:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3727
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeReadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_4

    .line 3732
    :cond_16
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v5

    if-nez v5, :cond_18

    .line 3733
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3734
    sget v6, Lorg/telegram/messenger/R$string;->SwipeUnpin:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3735
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnpinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_4

    .line 3737
    :cond_17
    sget v6, Lorg/telegram/messenger/R$string;->SwipePin:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3738
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipePinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_4

    .line 3741
    :cond_18
    sget v6, Lorg/telegram/messenger/R$string;->Archive:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3742
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_4

    .line 3745
    :cond_19
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3746
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    .line 3747
    sget v6, Lorg/telegram/messenger/R$string;->Unarchive:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3748
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unarchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_4

    .line 3752
    :goto_6
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-eqz v5, :cond_1a

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v5, :cond_1a

    .line 3753
    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3754
    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    goto :goto_7

    .line 3756
    :cond_1a
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3757
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    .line 3760
    :goto_7
    iget-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    const/high16 v29, 0x422c0000    # 43.0f

    if-nez v5, :cond_1b

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1b

    .line 3761
    iput-boolean v13, v1, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3762
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3763
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3764
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 3767
    :cond_1b
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    add-float/2addr v5, v7

    .line 3768
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v7, v7, v14

    const-string v8, "Line 3.**"

    const-string v10, "Line 2.**"

    const-string v11, "Line 1.**"

    const-string v12, "Arrow.**"

    if-gez v7, :cond_1d

    .line 3769
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3770
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    move/from16 v23, v5

    move v5, v7

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move/from16 v24, v4

    const/4 v4, 0x0

    move/from16 v35, v9

    move/from16 v34, v13

    move/from16 v33, v14

    move/from16 v36, v15

    move/from16 v9, v23

    move/from16 v14, v24

    const/4 v15, 0x2

    move v13, v6

    move v6, v3

    move v3, v0

    move-object/from16 v0, v22

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3771
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v3, v3, v36

    if-nez v3, :cond_1e

    .line 3772
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-eqz v3, :cond_1c

    .line 3773
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3774
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3776
    :cond_1c
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-eqz v3, :cond_1e

    .line 3777
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3778
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v5

    invoke-virtual {v3, v11, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3779
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v5

    invoke-virtual {v3, v10, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3780
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3781
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 3782
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    goto :goto_8

    :cond_1d
    move/from16 v35, v9

    move/from16 v34, v13

    move/from16 v33, v14

    move/from16 v36, v15

    move-object/from16 v0, v22

    const/4 v15, 0x2

    move v14, v4

    move v9, v5

    move v13, v6

    .line 3786
    :cond_1e
    :goto_8
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v15

    sub-int/2addr v3, v4

    .line 3787
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v15

    .line 3788
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v5

    div-int/2addr v5, v15

    add-int/2addr v5, v3

    .line 3789
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v6

    div-int/2addr v6, v15

    add-int/2addr v6, v4

    .line 3791
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v7, v7, v36

    if-lez v7, :cond_20

    .line 3792
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3793
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v9, v7

    move/from16 v37, v15

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    move/from16 v21, v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    move/from16 v23, v9

    move/from16 v9, v36

    invoke-virtual {v2, v7, v9, v15, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3794
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setColor(I)V

    mul-int v7, v5, v5

    .line 3796
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v6, v13

    mul-int/2addr v9, v13

    add-int/2addr v7, v9

    int-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v7, v13

    int-to-float v5, v5

    int-to-float v6, v6

    .line 3797
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v13, v1, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    invoke-virtual {v9, v13}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v7, v9

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3798
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 3800
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-nez v5, :cond_1f

    .line 3801
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v6

    invoke-virtual {v5, v12, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3802
    sput-boolean v34, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3804
    :cond_1f
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-nez v5, :cond_21

    .line 3805
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3806
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v7

    invoke-virtual {v5, v11, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3807
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v7

    invoke-virtual {v5, v10, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3808
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3809
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 3810
    sput-boolean v34, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    goto :goto_9

    :cond_20
    move/from16 v23, v9

    move/from16 v21, v13

    move/from16 v37, v15

    .line 3814
    :cond_21
    :goto_9
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v3

    int-to-float v5, v4

    .line 3815
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3816
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    const/16 v36, 0x0

    cmpl-float v5, v3, v36

    if-eqz v5, :cond_22

    cmpl-float v5, v3, v33

    if-eqz v5, :cond_22

    .line 3817
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v3

    add-float v3, v3, v33

    .line 3818
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v3, v3, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3820
    :cond_22
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    move/from16 v5, v35

    invoke-static {v3, v5, v5}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3821
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3822
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 3824
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    move/from16 v9, v23

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v6, v3, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3826
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 3828
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    move/from16 v13, v21

    if-ne v5, v13, :cond_23

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-eq v5, v6, :cond_24

    .line 3829
    :cond_23
    iput v13, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    .line 3830
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    .line 3831
    new-instance v21, Landroid/text/StaticLayout;

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v24

    sget-object v25, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v28}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v21

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    .line 3833
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    move/from16 v5, v34

    if-le v0, v5, :cond_24

    .line 3834
    new-instance v21, Landroid/text/StaticLayout;

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveTextPaintSmall:Landroid/text/TextPaint;

    const/high16 v0, 0x42a40000    # 82.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v24

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v21 .. v28}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v21

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    .line 3838
    :cond_24
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_26

    .line 3839
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3840
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_25

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_a

    :cond_25
    const/4 v0, 0x0

    .line 3841
    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v20

    sub-float/2addr v3, v5

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3842
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 3843
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 3845
    :cond_26
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 3854
    :goto_b
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_27

    .line 3855
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3856
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3857
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    add-float/2addr v0, v6

    goto :goto_c

    :cond_27
    const/4 v0, 0x0

    .line 3860
    :goto_c
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    mul-float v9, v3, v4

    .line 3861
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v3, :cond_28

    .line 3862
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getCollapsedHeight()I

    move-result v6

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3863
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 3864
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v9, v9, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_28
    const/4 v6, 0x0

    .line 3867
    :goto_d
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3868
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    neg-float v3, v3

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3869
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v3, :cond_2a

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v3, :cond_29

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2a

    .line 3870
    :cond_29
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    move/from16 v7, v33

    const/4 v6, 0x0

    invoke-static {v6, v4, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3871
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v14, v7, v5

    mul-float/2addr v4, v14

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_e

    .line 3873
    :cond_2a
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v3

    if-nez v3, :cond_2b

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v3, :cond_2c

    .line 3874
    :cond_2b
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3875
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v14, v33, v5

    mul-float/2addr v4, v14

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3878
    :cond_2c
    :goto_e
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 3880
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->updateAnimationValues()V

    .line 3882
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2d

    .line 3883
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3884
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3885
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float v36, v6, v3

    move/from16 v12, v36

    goto :goto_f

    :cond_2d
    move v12, v6

    .line 3888
    :goto_f
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v33

    const/high16 v21, 0x41200000    # 10.0f

    const/high16 v22, 0x437f0000    # 255.0f

    if-eqz v4, :cond_dc

    cmpl-float v4, v3, v6

    const/4 v10, -0x1

    if-eqz v4, :cond_2f

    const v4, 0x3ecccccd    # 0.4f

    div-float/2addr v3, v4

    const/high16 v7, 0x3f800000    # 1.0f

    .line 3891
    invoke-static {v3, v7, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    .line 3892
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v4

    move/from16 v5, v37

    if-lt v4, v5, :cond_2e

    .line 3893
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v4

    const/16 v34, 0x1

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v7, v3

    mul-float/2addr v5, v3

    sub-float v3, v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v5, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v6, v4

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v4, v7, v4

    mul-float v4, v4, v22

    float-to-int v7, v4

    const/16 v8, 0x1f

    const/4 v4, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v3

    goto :goto_10

    :cond_2e
    const/16 v30, 0x0

    .line 3895
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3896
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v5

    const/16 v34, 0x1

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v3, v33, v3

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v3, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move v3, v4

    .line 3898
    :goto_10
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x42940000    # 74.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    neg-int v4, v4

    int-to-float v4, v4

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v4, v6

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3899
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    move v11, v3

    :goto_11
    move/from16 v23, v0

    goto :goto_12

    :cond_2f
    const/16 v30, 0x0

    move v11, v10

    goto :goto_11

    .line 3902
    :goto_12
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    if-nez v0, :cond_30

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v36

    if-eqz v0, :cond_36

    .line 3903
    :cond_30
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3905
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3906
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3907
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v6, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 3908
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3910
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v0, :cond_31

    .line 3911
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3914
    :cond_31
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_33

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v0, :cond_32

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    if-eqz v0, :cond_33

    .line 3915
    :cond_32
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v3, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3916
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v4, v7, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_13

    .line 3918
    :cond_33
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-nez v0, :cond_34

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v0, :cond_35

    .line 3919
    :cond_34
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3920
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v4, v33, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3923
    :cond_35
    :goto_13
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 3926
    :cond_36
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    const v24, 0x3dda740e

    if-eqz v0, :cond_38

    .line 3927
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v7

    if-gez v3, :cond_39

    add-float v0, v0, v24

    .line 3928
    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_37

    .line 3930
    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    :cond_37
    :goto_14
    const/16 v25, 0x1

    goto :goto_15

    .line 3934
    :cond_38
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    const/4 v6, 0x0

    cmpl-float v3, v0, v6

    if-lez v3, :cond_39

    sub-float v0, v0, v24

    .line 3935
    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_37

    .line 3937
    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    goto :goto_14

    :cond_39
    const/16 v25, 0x0

    .line 3943
    :goto_15
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v0, :cond_3a

    .line 3944
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3945
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3948
    :cond_3a
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    const/high16 v26, 0x41600000    # 14.0f

    if-nez v0, :cond_3c

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_3b

    goto :goto_16

    :cond_3b
    move/from16 v0, v26

    goto :goto_17

    :cond_3c
    :goto_16
    move/from16 v0, v21

    :goto_17
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 3949
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    const/high16 v27, 0x41100000    # 9.0f

    if-nez v3, :cond_3d

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_3e

    :cond_3d
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    if-eqz v3, :cond_40

    :cond_3e
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 3950
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    if-eqz v3, :cond_3f

    move/from16 v3, v19

    goto :goto_18

    :cond_3f
    move/from16 v3, v27

    :goto_18
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    .line 3952
    :cond_40
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/high16 v28, 0x41c00000    # 24.0f

    if-eqz v3, :cond_49

    .line 3953
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v3, :cond_43

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v3, :cond_43

    .line 3954
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v3, :cond_41

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    if-nez v3, :cond_41

    .line 3955
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    .line 3956
    new-instance v38, Landroid/graphics/LinearGradient;

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    filled-new-array {v10, v5}, [I

    move-result-object v43

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    sget-object v45, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    move/from16 v41, v4

    move-object/from16 v44, v6

    invoke-direct/range {v38 .. v45}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v4, v38

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3957
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_19

    .line 3958
    :cond_41
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    if-nez v3, :cond_42

    .line 3959
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    .line 3960
    new-instance v38, Landroid/graphics/LinearGradient;

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    filled-new-array {v5, v10}, [I

    move-result-object v43

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_1

    sget-object v45, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    move/from16 v41, v4

    move-object/from16 v44, v6

    invoke-direct/range {v38 .. v45}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v4, v38

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3961
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3963
    :cond_42
    :goto_19
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v6, v3

    const/16 v7, 0xff

    const/16 v8, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3964
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    add-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3966
    :cond_43
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    if-nez v3, :cond_44

    .line 3967
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 3969
    :cond_44
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v3, :cond_45

    .line 3970
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v4

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameArchived:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iput v4, v3, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1b

    .line 3971
    :cond_45
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v3, :cond_47

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-eqz v3, :cond_46

    iget v3, v3, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_46

    goto :goto_1a

    .line 3974
    :cond_46
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v4

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iput v4, v3, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1b

    .line 3972
    :cond_47
    :goto_1a
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v4

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iput v4, v3, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3976
    :goto_1b
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3977
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutTranslateX:F

    add-float/2addr v3, v4

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3978
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3979
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v5, 0x0

    invoke-direct {v1, v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v0

    move/from16 v35, v5

    const v5, -0x42666666    # -0.075f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v29, v10

    const/high16 v10, 0x3f800000    # 1.0f

    move v14, v11

    move/from16 v31, v29

    move/from16 v13, v35

    const/4 v15, 0x3

    const/high16 v29, 0x40a00000    # 5.0f

    const/high16 v30, 0x41800000    # 16.0f

    const/high16 v38, 0x40c00000    # 6.0f

    move-object v11, v0

    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 3980
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 3981
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v0, :cond_4a

    .line 3982
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3983
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v0, :cond_48

    .line 3984
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3985
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 3987
    :cond_48
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    add-int/2addr v0, v3

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3988
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3990
    :goto_1c
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 3991
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1d

    :cond_49
    move/from16 v31, v10

    move v14, v11

    const/4 v13, 0x0

    const/4 v15, 0x3

    const/high16 v29, 0x40a00000    # 5.0f

    const/high16 v30, 0x41800000    # 16.0f

    const/high16 v38, 0x40c00000    # 6.0f

    .line 3995
    :cond_4a
    :goto_1d
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    const/high16 v35, 0x41a00000    # 20.0f

    if-eqz v0, :cond_50

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_50

    .line 3996
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 3997
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3999
    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->getTimeTextPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 4000
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 4001
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4003
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v20

    const/high16 v3, 0x41080000    # 8.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    .line 4004
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 4005
    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 4007
    iget-boolean v6, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v6, :cond_4b

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell;->isCounterMuted()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 4008
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable2Accent:Landroid/graphics/drawable/Drawable;

    :goto_1e
    move-object v10, v6

    goto :goto_1f

    .line 4009
    :cond_4b
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable2:Landroid/graphics/drawable/Drawable;

    goto :goto_1e

    :goto_1f
    const/high16 v6, 0x41880000    # 17.0f

    .line 4011
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v7, v7, v20

    add-float/2addr v7, v4

    float-to-int v7, v7

    float-to-int v8, v0

    .line 4012
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v8, v11

    .line 4015
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v11, v8

    .line 4016
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v39

    move/from16 v40, v3

    add-int v3, v7, v39

    .line 4014
    invoke-virtual {v10, v8, v7, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4019
    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    const/16 v3, 0x1b

    .line 4020
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4021
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v6, v4, v3

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v7, v3

    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v8, v3

    move v3, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 4022
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4024
    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4027
    :cond_4c
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 4028
    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    if-eq v0, v3, :cond_4d

    const/4 v3, 0x1

    goto :goto_20

    :cond_4d
    move v3, v13

    :goto_20
    if-eqz v3, :cond_4e

    .line 4030
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 4032
    :cond_4e
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_4f

    .line 4034
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4036
    :cond_4f
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4039
    :cond_50
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 4040
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 4042
    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/16 v37, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    .line 4043
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 4044
    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/16 v37, 0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 4040
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4046
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4049
    :cond_51
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_54

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_54

    .line 4050
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_52

    .line 4051
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived_threeLines:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_21

    .line 4052
    :cond_52
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v0, :cond_53

    .line 4053
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_21

    .line 4055
    :cond_53
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4057
    :goto_21
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4058
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4060
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 4061
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v5, 0x1

    invoke-direct {v1, v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v11

    const v5, -0x42666666    # -0.075f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_22

    :catch_0
    move-exception v0

    .line 4063
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4065
    :goto_22
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4068
    :cond_54
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/high16 v39, 0x41900000    # 18.0f

    const/high16 v40, 0x41300000    # 11.0f

    if-eqz v0, :cond_6f

    .line 4069
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_56

    .line 4070
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_55

    .line 4071
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v3

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_23

    .line 4073
    :cond_55
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v3

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_messageArchived:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_23

    .line 4076
    :cond_56
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v3

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4079
    :goto_23
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    .line 4080
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v4, :cond_57

    .line 4081
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v4, v4

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v0, v3

    sub-float/2addr v4, v0

    goto :goto_24

    .line 4083
    :cond_57
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v4, v4

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    .line 4085
    :goto_24
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_58

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_59

    :cond_58
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_59
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4086
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_5a

    move/from16 v0, v21

    goto :goto_25

    :cond_5a
    move/from16 v0, v40

    :goto_25
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, v0

    .line 4088
    :cond_5b
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v33

    if-eqz v0, :cond_5e

    .line 4089
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4090
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4091
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    .line 4092
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    int-to-float v5, v4

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v6, v6, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v6, v33, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4093
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 4095
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4096
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 4097
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move v5, v3

    .line 4098
    :try_start_2
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move v6, v4

    :try_start_3
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v7, v6

    :try_start_4
    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v8, 0x2

    invoke-direct {v1, v8, v0}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v8, v5

    const v5, -0x42666666    # -0.075f

    move v9, v7

    const/4 v7, 0x0

    move v10, v8

    const/4 v8, 0x0

    move/from16 v41, v9

    const/4 v9, 0x0

    move/from16 v42, v10

    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v15, v41

    :try_start_5
    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 4099
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    move v9, v13

    .line 4101
    :goto_26
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5d

    .line 4102
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 4103
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 4104
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :catch_1
    move-exception v0

    goto :goto_27

    :catch_2
    move-exception v0

    move/from16 v42, v5

    move v15, v7

    goto :goto_27

    :catch_3
    move-exception v0

    move/from16 v42, v5

    move v15, v6

    goto :goto_27

    :catch_4
    move-exception v0

    move v15, v4

    move/from16 v42, v5

    goto :goto_27

    :catch_5
    move-exception v0

    move/from16 v42, v3

    move v15, v4

    .line 4107
    :goto_27
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_5c
    move/from16 v42, v3

    move v15, v4

    .line 4110
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 4111
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v5, 0x2

    invoke-direct {v1, v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v11

    const v5, -0x42666666    # -0.075f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 4113
    :cond_5d
    :goto_28
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4114
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_29

    :cond_5e
    move/from16 v42, v3

    .line 4117
    :goto_29
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4118
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v3, :cond_5f

    .line 4119
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v3, v3

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v0, v33, v0

    mul-float v0, v0, v42

    add-float/2addr v3, v0

    goto :goto_2a

    :cond_5f
    const/high16 v33, 0x3f800000    # 1.0f

    .line 4121
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v3, v3

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v0, v33, v0

    mul-float v0, v0, v42

    sub-float/2addr v3, v0

    .line 4123
    :goto_2a
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_60

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_61

    :cond_60
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_61
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 4124
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_62

    move/from16 v0, v21

    goto :goto_2b

    :cond_62
    move/from16 v0, v40

    :goto_2b
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 4126
    :cond_63
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4127
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_64

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v3, v3, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/16 v36, 0x0

    cmpl-float v3, v3, v36

    if-lez v3, :cond_64

    .line 4128
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 4129
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    int-to-float v4, v0

    iget-object v5, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v5, v5, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4130
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 4131
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4133
    :cond_64
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4135
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6f

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-gez v0, :cond_65

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v4, v3, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/16 v36, 0x0

    cmpl-float v4, v4, v36

    if-lez v4, :cond_6f

    iget v3, v3, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    if-ltz v3, :cond_6f

    :cond_65
    if-ltz v0, :cond_66

    goto :goto_2c

    .line 4136
    :cond_66
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    .line 4137
    :goto_2c
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 4139
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4140
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    .line 4141
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v6, v6, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 4142
    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v5, :cond_67

    .line 4143
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v5, v5

    iget v4, v4, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v4, v33, v4

    mul-float v4, v4, v42

    add-float/2addr v5, v4

    goto :goto_2d

    :cond_67
    const/high16 v33, 0x3f800000    # 1.0f

    .line 4145
    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v5, v5

    iget v4, v4, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v4, v33, v4

    mul-float v4, v4, v42

    sub-float/2addr v5, v4

    .line 4147
    :goto_2d
    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_68

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_69

    :cond_68
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v4

    if-eqz v4, :cond_6b

    :cond_69
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 4148
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v4

    if-eqz v4, :cond_6a

    move/from16 v4, v21

    goto :goto_2e

    :cond_6a
    move/from16 v4, v40

    :goto_2e
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v5, v4

    :cond_6b
    const/4 v4, 0x1

    if-eq v0, v4, :cond_6d

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6c

    goto :goto_2f

    .line 4153
    :cond_6c
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    int-to-float v0, v0

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float v4, v4, v20

    add-float/2addr v5, v4

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_31

    .line 4151
    :cond_6d
    :goto_2f
    iget v4, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    int-to-float v4, v4

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6e

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    goto :goto_30

    :cond_6e
    move v9, v13

    :goto_30
    int-to-float v0, v9

    add-float/2addr v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4155
    :goto_31
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4156
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 4157
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4162
    :cond_6f
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    const/high16 v15, 0x41400000    # 12.0f

    if-eqz v0, :cond_7d

    .line 4163
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4164
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_70

    .line 4165
    new-instance v0, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    .line 4167
    :cond_70
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v0, :cond_71

    .line 4168
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 4169
    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 4174
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CanvasButton;->setLongPress(Ljava/lang/Runnable;)V

    .line 4181
    :cond_71
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v0, :cond_7a

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    if-eq v0, v3, :cond_7a

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-eqz v0, :cond_72

    const/4 v3, 0x7

    if-eq v0, v3, :cond_72

    const/16 v3, 0x8

    if-ne v0, v3, :cond_7a

    .line 4182
    :cond_72
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    if-eqz v4, :cond_73

    const/16 v4, 0x24

    goto :goto_32

    :cond_73
    const/16 v4, 0x1a

    :goto_32
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CanvasButton;->setColor(I)V

    .line 4183
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    if-nez v0, :cond_79

    .line 4184
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CanvasButton;->rewind()V

    .line 4185
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    const/high16 v4, 0x40400000    # 3.0f

    if-eq v0, v3, :cond_78

    if-lez v0, :cond_78

    .line 4186
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v0, v0

    .line 4187
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_74

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_75

    :cond_74
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    if-eqz v3, :cond_77

    :cond_75
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 4188
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    if-eqz v3, :cond_76

    move/from16 v40, v21

    :cond_76
    invoke-static/range {v40 .. v40}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 4190
    :cond_77
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    add-float/2addr v5, v6

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v6, v6

    iget-object v7, v1, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iget v9, v1, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v5, v0, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4191
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v0, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 4192
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget v5, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_78

    .line 4193
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    .line 4197
    :cond_78
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    .line 4198
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v5, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    add-float/2addr v7, v0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v7, v0

    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    iget-object v8, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {v3, v5, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4199
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 4200
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    .line 4202
    :cond_79
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    .line 4204
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4205
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    invoke-static/range {v39 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    div-float v3, v3, v20

    add-float/2addr v5, v3

    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 4206
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4210
    :cond_7a
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v0, v0

    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4211
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 4213
    :try_start_6
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4214
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 4215
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 4216
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v6, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v5, 0x3

    invoke-direct {v1, v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v11

    const v5, -0x42666666    # -0.075f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 4217
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    move v9, v13

    .line 4219
    :goto_33
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_7c

    .line 4220
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 4221
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 4222
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :catch_6
    move-exception v0

    .line 4225
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_34

    .line 4228
    :cond_7b
    iget-object v0, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 4229
    iget-object v3, v1, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v4, v1, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v5, 0x3

    invoke-direct {v1, v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v11

    const v5, -0x42666666    # -0.075f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 4231
    :cond_7c
    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4234
    :cond_7d
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_8c

    .line 4235
    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v2, :cond_7e

    const/4 v9, 0x2

    goto :goto_35

    :cond_7e
    move v9, v13

    :goto_35
    add-int/2addr v0, v9

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v2, :cond_7f

    const/4 v9, 0x4

    goto :goto_36

    :cond_7f
    move v9, v13

    :goto_36
    add-int/2addr v0, v9

    .line 4236
    iget v2, v1, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    if-ltz v2, :cond_80

    if-eq v2, v0, :cond_80

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-nez v3, :cond_80

    .line 4237
    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    .line 4239
    :cond_80
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-eqz v2, :cond_81

    .line 4240
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    :cond_81
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_82

    const/4 v3, 0x1

    goto :goto_37

    :cond_82
    move v3, v13

    :goto_37
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_83

    const/4 v4, 0x1

    :goto_38
    const/16 v32, 0x4

    goto :goto_39

    :cond_83
    move v4, v13

    goto :goto_38

    :goto_39
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_84

    const/4 v5, 0x1

    goto :goto_3a

    :cond_84
    move v5, v13

    :goto_3a
    if-eqz v2, :cond_89

    .line 4248
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell;->animateFromStatusDrawableParams:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_85

    const/4 v9, 0x1

    goto :goto_3b

    :cond_85
    move v9, v13

    :goto_3b
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_86

    const/4 v2, 0x1

    :goto_3c
    const/16 v32, 0x4

    goto :goto_3d

    :cond_86
    move v2, v13

    goto :goto_3c

    :goto_3d
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_87

    move v0, v5

    const/4 v5, 0x1

    goto :goto_3e

    :cond_87
    move v0, v5

    move v5, v13

    :goto_3e
    if-nez v3, :cond_88

    if-nez v9, :cond_88

    if-eqz v5, :cond_88

    if-nez v2, :cond_88

    if-eqz v4, :cond_88

    if-eqz v0, :cond_88

    const/4 v6, 0x1

    .line 4252
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    move-object/from16 v2, p1

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    goto :goto_3f

    :cond_88
    move v10, v0

    move v0, v3

    move v8, v4

    .line 4254
    iget v3, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v7, v33, v3

    const/4 v6, 0x0

    move v4, v2

    move v3, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    .line 4255
    iget v7, v1, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    move v3, v0

    move v4, v8

    move v5, v10

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    :goto_3f
    move-object/from16 v7, p0

    move-object/from16 v2, p1

    goto :goto_40

    :cond_89
    const/16 v32, 0x4

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 4258
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    move-object v7, v1

    .line 4260
    :goto_40
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v1, :cond_8a

    const/4 v9, 0x2

    goto :goto_41

    :cond_8a
    move v9, v13

    :goto_41
    add-int/2addr v0, v9

    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v1, :cond_8b

    move/from16 v9, v32

    goto :goto_42

    :cond_8b
    move v9, v13

    :goto_42
    add-int/2addr v0, v9

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    goto :goto_43

    :cond_8c
    move-object/from16 v2, p1

    move-object v7, v1

    const/16 v32, 0x4

    .line 4263
    :goto_43
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    const/high16 v1, 0x41480000    # 12.5f

    const/high16 v3, 0x41780000    # 15.5f

    if-eqz v0, :cond_92

    .line 4264
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_8e

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_8d

    goto :goto_44

    :cond_8d
    move v0, v3

    goto :goto_45

    :cond_8e
    :goto_44
    move v0, v1

    :goto_45
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 4265
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_8f

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_90

    :cond_8f
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v4

    if-eqz v4, :cond_91

    :cond_90
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 4266
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    .line 4268
    :cond_91
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v4, :cond_92

    .line 4269
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    const/high16 v6, 0x41980000    # 19.0f

    .line 4270
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    .line 4271
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v0

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 4272
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    .line 4273
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v0, v9

    .line 4269
    invoke-virtual {v4, v5, v6, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4275
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 4276
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4279
    :cond_92
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-nez v0, :cond_94

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_93

    goto :goto_46

    :cond_93
    move v9, v13

    goto :goto_47

    :cond_94
    :goto_46
    const/4 v9, 0x1

    .line 4280
    :goto_47
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/high16 v4, 0x41580000    # 13.5f

    const/4 v5, 0x2

    if-eq v0, v5, :cond_a4

    if-nez v9, :cond_95

    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    if-lez v0, :cond_a4

    :cond_95
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v0, :cond_a4

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    if-nez v0, :cond_a4

    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v0, :cond_a4

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-nez v0, :cond_a4

    if-eqz v9, :cond_97

    .line 4281
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_97

    add-float v0, v0, v24

    .line 4282
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_96

    .line 4284
    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_48

    .line 4286
    :cond_96
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    goto :goto_48

    :cond_97
    if-nez v9, :cond_99

    .line 4288
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    const/4 v6, 0x0

    cmpl-float v1, v0, v6

    if-eqz v1, :cond_99

    sub-float v0, v0, v24

    .line 4289
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_98

    .line 4291
    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_48

    .line 4293
    :cond_98
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 4296
    :cond_99
    :goto_48
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_9b

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_9a

    goto :goto_49

    :cond_9a
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4a

    :cond_9b
    :goto_49
    const/4 v1, 0x0

    :goto_4a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 4297
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_9c

    goto :goto_4b

    :cond_9c
    const/high16 v4, 0x418c0000    # 17.5f

    :goto_4b
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 4298
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_9d

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_9e

    :cond_9d
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    if-eqz v3, :cond_a0

    :cond_9e
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 4299
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    if-eqz v3, :cond_9f

    goto :goto_4c

    :cond_9f
    move/from16 v19, v27

    :goto_4c
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 4301
    :cond_a0
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 4302
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 4303
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v33

    if-eqz v0, :cond_a2

    .line 4304
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4305
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4306
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_a1

    .line 4307
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4308
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4309
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4d

    .line 4311
    :cond_a1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4312
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4313
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4315
    :goto_4d
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_52

    .line 4317
    :cond_a2
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_a3

    .line 4318
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_52

    .line 4320
    :cond_a3
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_52

    .line 4324
    :cond_a4
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_aa

    .line 4325
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_a6

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_a5

    goto :goto_4e

    :cond_a5
    const/high16 v4, 0x41840000    # 16.5f

    :cond_a6
    :goto_4e
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 4326
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_a7

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_a8

    :cond_a7
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eqz v1, :cond_a9

    :cond_a8
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 4327
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 4329
    :cond_a9
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 4330
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 4331
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4332
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_52

    .line 4333
    :cond_aa
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-nez v0, :cond_b4

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    if-eqz v0, :cond_ab

    goto :goto_53

    .line 4358
    :cond_ab
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v0, :cond_b3

    .line 4359
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_ad

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_ac

    goto :goto_4f

    :cond_ac
    const/high16 v15, 0x41700000    # 15.0f

    :cond_ad
    :goto_4f
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 4360
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_ae

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_af

    :cond_ae
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eqz v1, :cond_b0

    :cond_af
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 4361
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4363
    :cond_b0
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_b1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_50

    :cond_b1
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_50
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v1, v3, v0}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4364
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-ne v0, v5, :cond_b2

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_51

    :cond_b2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_51
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ScamDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b3
    :goto_52
    move v9, v13

    goto/16 :goto_58

    .line 4334
    :cond_b4
    :goto_53
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_b6

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_b5

    goto :goto_54

    :cond_b5
    move v0, v3

    goto :goto_55

    :cond_b6
    :goto_54
    move v0, v1

    :goto_55
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 4335
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_b7

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_b8

    :cond_b7
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v4

    if-eqz v4, :cond_b9

    :cond_b8
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 4336
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    .line 4338
    :cond_b9
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v4, :cond_bc

    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-nez v4, :cond_ba

    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawBadge:Z

    if-eqz v4, :cond_bc

    .line 4339
    :cond_ba
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatusView:Landroid/view/View;

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    int-to-float v3, v3

    add-float v23, v23, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v23, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 4340
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatusView:Landroid/view/View;

    int-to-float v3, v0

    add-float/2addr v12, v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v12, v3

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 4341
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/16 v36, 0x0

    cmpl-float v1, v1, v36

    if-lez v1, :cond_bb

    .line 4342
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 4343
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 4344
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v0, v4

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 4345
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 4346
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v0, v6

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v0, v6

    .line 4342
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4348
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    move v9, v13

    goto :goto_56

    :cond_bb
    const/4 v9, 0x1

    .line 4352
    :goto_56
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_58

    .line 4354
    :cond_bc
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    .line 4355
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v5, :cond_be

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v5, :cond_bd

    goto :goto_57

    :cond_bd
    move v1, v3

    :cond_be
    :goto_57
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v4, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4356
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_52

    .line 4367
    :goto_58
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-nez v0, :cond_bf

    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    if-eqz v0, :cond_c1

    .line 4368
    :cond_bf
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_c0

    .line 4369
    invoke-direct {v7}, Lorg/telegram/ui/Cells/DialogCell;->getPaintReorderGradient()Landroid/graphics/Paint;

    move-result-object v6

    .line 4370
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    mul-float v0, v0, v22

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4371
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4372
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4373
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v2, v1

    .line 4374
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4377
    :cond_c0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4378
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4379
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4381
    :cond_c1
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    const v10, 0x41a553f8    # 20.666f

    if-eqz v0, :cond_c2

    .line 4382
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v1, v33, v1

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4383
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    int-to-float v3, v1

    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    int-to-float v4, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4384
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x41280000    # 10.5f

    mul-float/2addr v3, v1

    const/high16 v4, 0x41280000    # 10.5f

    mul-float/2addr v1, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4385
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    const/high16 v3, 0x40900000    # 4.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4386
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_59
    move-object v8, v7

    goto/16 :goto_5f

    .line 4387
    :cond_c2
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-nez v0, :cond_c3

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v0, :cond_c4

    :cond_c3
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-nez v0, :cond_c8

    :cond_c4
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v33

    if-nez v0, :cond_c8

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v0, :cond_c8

    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v0, v0, v33

    if-eqz v0, :cond_c5

    goto :goto_5a

    .line 4431
    :cond_c5
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->openBot:Z

    if-eqz v0, :cond_c7

    .line 4432
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4433
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 4434
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v2, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4435
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonBackgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4436
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v1, v20

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v3, v3, v20

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4437
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_c6

    .line 4438
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v46, v2

    move v2, v1

    move-object/from16 v1, v46

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 4440
    :cond_c6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c7
    move-object/from16 v2, p1

    goto/16 :goto_59

    .line 4388
    :cond_c8
    :goto_5a
    invoke-direct {v7}, Lorg/telegram/ui/Cells/DialogCell;->isCounterMuted()Z

    move-result v3

    .line 4389
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeftOld:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V

    move-object v8, v1

    .line 4390
    iget-boolean v0, v8, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    const v1, 0x40154fe0    # 2.3330002f

    if-eqz v0, :cond_cb

    .line 4391
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    iget v4, v8, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v4, v33, v4

    mul-float v4, v4, v22

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4393
    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    .line 4394
    iget-object v4, v8, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v5, v0

    iget v6, v8, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    int-to-float v6, v6

    iget v7, v8, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    add-int/2addr v0, v7

    const v7, 0x414aa7f0    # 12.666f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v0, v0

    iget v7, v8, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v7, v11

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v3, :cond_c9

    .line 4395
    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-eqz v0, :cond_c9

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    goto :goto_5b

    :cond_c9
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    .line 4396
    :goto_5b
    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v4, v4, v20

    iget-object v5, v8, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v5, v5, v20

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4397
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_ca

    .line 4398
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v3, v33, v3

    mul-float v3, v3, v22

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4400
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4401
    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const v3, 0x40caa7f0    # 6.333f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4402
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 4403
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5c

    .line 4405
    :cond_ca
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v3, v33, v3

    mul-float v3, v3, v22

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4407
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v8, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 4408
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4412
    :cond_cb
    :goto_5c
    iget-boolean v0, v8, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v0, :cond_cc

    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v33

    if-eqz v0, :cond_cf

    goto :goto_5d

    :cond_cc
    const/high16 v33, 0x3f800000    # 1.0f

    .line 4414
    :goto_5d
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v3, v33, v3

    mul-float v3, v3, v22

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4416
    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 4417
    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v4, v0

    iget v5, v8, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    int-to-float v5, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v0, v6

    int-to-float v0, v0

    iget v6, v8, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4418
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    .line 4420
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4421
    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v33

    if-eqz v4, :cond_ce

    .line 4422
    iget-boolean v4, v8, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v4, :cond_cd

    goto :goto_5e

    :cond_cd
    sub-float v3, v33, v3

    .line 4423
    :goto_5e
    iget-object v4, v8, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v8, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4425
    :cond_ce
    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v4, v4, v20

    iget-object v5, v8, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v5, v5, v20

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4426
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v3, v33, v3

    mul-float v3, v3, v22

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4427
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v8, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v4, v1

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v0, v3, v4, v1, v5}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 4428
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4429
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4443
    :cond_cf
    :goto_5f
    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_d9

    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v33

    if-eqz v1, :cond_d9

    const/16 v36, 0x0

    cmpl-float v1, v0, v36

    if-lez v1, :cond_d1

    sub-float v0, v33, v0

    .line 4447
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    mul-float v0, v0, v22

    float-to-int v6, v0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v2, v1

    .line 4449
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v0, :cond_d0

    .line 4450
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    :goto_60
    mul-float/2addr v0, v1

    const/4 v6, 0x0

    goto :goto_61

    .line 4452
    :cond_d0
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    goto :goto_60

    .line 4454
    :goto_61
    invoke-virtual {v2, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_d1
    move v0, v13

    .line 4456
    :goto_62
    iget v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v0, v1, :cond_d8

    .line 4457
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_d2

    move/from16 v4, v31

    goto/16 :goto_65

    .line 4460
    :cond_d2
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_d3

    .line 4461
    new-instance v1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    const v3, 0x3fab851f    # 1.34f

    .line 4462
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3eae147b    # 0.34f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x18000000

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 4463
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 4465
    :cond_d3
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    .line 4466
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    iget-object v4, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v4, v4, v0

    .line 4467
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    iget-object v5, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    .line 4468
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v5

    iget-object v6, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v6, v6, v0

    .line 4469
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v6

    .line 4465
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4477
    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4478
    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_d6

    .line 4479
    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    if-nez v3, :cond_d4

    .line 4480
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    goto :goto_63

    .line 4482
    :cond_d4
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 4484
    :goto_63
    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    iget-object v4, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v4

    aget v4, v4, v13

    int-to-float v4, v4

    iget-object v5, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v5

    const/16 v34, 0x1

    aget v5, v5, v34

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 4486
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4487
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4490
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    if-nez v1, :cond_d5

    .line 4491
    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 4493
    :cond_d5
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea66666    # 0.325f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v4, v31

    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 4494
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    float-to-int v3, v3

    iget-object v5, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1, v3, v5, v6, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 4495
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 4496
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 4498
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_64

    :cond_d6
    move/from16 v4, v31

    .line 4500
    :goto_64
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_d7

    .line 4501
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/16 v37, 0x2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 4502
    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 4503
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v1, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4504
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d7
    :goto_65
    add-int/lit8 v0, v0, 0x1

    move/from16 v31, v4

    goto/16 :goto_62

    :cond_d8
    move/from16 v4, v31

    .line 4508
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    if-lez v0, :cond_da

    .line 4509
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_66

    :cond_d9
    move/from16 v4, v31

    .line 4513
    :cond_da
    :goto_66
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    if-eqz v0, :cond_db

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DialogCellTags;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_db

    .line 4514
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4515
    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->tagsLeft:I

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const v3, 0x41ad47ae    # 21.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    iget-boolean v3, v8, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4516
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    iget v1, v8, Lorg/telegram/ui/Cells/DialogCell;->tagsRight:I

    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->tagsLeft:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/DialogCellTags;->draw(Landroid/graphics/Canvas;I)V

    .line 4517
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_db
    if-eq v14, v4, :cond_dd

    .line 4521
    invoke-virtual {v2, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_67

    :cond_dc
    move-object v8, v1

    const/4 v13, 0x0

    const/high16 v29, 0x40a00000    # 5.0f

    const/high16 v30, 0x41800000    # 16.0f

    const/16 v32, 0x4

    const/high16 v38, 0x40c00000    # 6.0f

    move v9, v13

    move/from16 v25, v9

    .line 4525
    :cond_dd
    :goto_67
    iget-boolean v0, v8, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    const/high16 v10, 0x432a0000    # 170.0f

    if-eqz v0, :cond_de

    .line 4526
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4527
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    iget v1, v8, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    div-float/2addr v1, v10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v0, v0, v33

    .line 4528
    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v3

    invoke-virtual {v2, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4531
    :cond_de
    iget-boolean v0, v8, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    if-eqz v0, :cond_e6

    iget-boolean v0, v8, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_df

    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_df

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_df

    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_df

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->isDraw()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 4532
    :cond_df
    iget-boolean v0, v8, Lorg/telegram/ui/Cells/DialogCell;->drawMonoforumAvatar:Z

    if-eqz v0, :cond_e1

    .line 4533
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

    if-nez v0, :cond_e0

    .line 4534
    new-instance v0, Lorg/telegram/ui/Components/PhotoBubbleClip;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoBubbleClip;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

    .line 4536
    :cond_e0
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v20

    float-to-int v4, v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/PhotoBubbleClip;->setBounds(III)V

    .line 4537
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4538
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->bubbleClip:Lorg/telegram/ui/Components/PhotoBubbleClip;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4539
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 4540
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4541
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6a

    .line 4543
    :cond_e1
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-boolean v1, v8, Lorg/telegram/ui/Cells/DialogCell;->isShareToStoryCell:Z

    if-nez v1, :cond_e3

    iget v3, v8, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v3, :cond_e2

    goto :goto_68

    :cond_e2
    move v3, v13

    goto :goto_69

    :cond_e3
    :goto_68
    const/4 v3, 0x1

    :goto_69
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    .line 4544
    iget v3, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceState:I

    if-eqz v1, :cond_e4

    const/4 v5, 0x1

    .line 4546
    iput v5, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceState:I

    .line 4548
    :cond_e4
    iget-wide v4, v8, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4, v5, v2, v1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 4549
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    if-eqz v0, :cond_e5

    .line 4550
    invoke-direct {v8}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    .line 4552
    :cond_e5
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput v3, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceState:I

    .line 4556
    :cond_e6
    :goto_6a
    iget-boolean v0, v8, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_e7

    .line 4557
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4560
    :cond_e7
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 4561
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Cells/DialogCell;->drawAvatarOverlays(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_e8

    const/16 v25, 0x1

    .line 4566
    :cond_e8
    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    if-lez v0, :cond_e9

    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_e9

    .line 4567
    invoke-direct {v8}, Lorg/telegram/ui/Cells/DialogCell;->isCounterMuted()Z

    move-result v3

    .line 4568
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v1, v0

    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v5, v1

    .line 4569
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v1, v0

    iget v0, v8, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v6, v1

    .line 4570
    iget-object v0, v8, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v4, v0

    .line 4571
    iget v7, v8, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v8, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V

    move-object v7, v1

    goto :goto_6b

    :cond_e9
    move-object v7, v8

    .line 4574
    :goto_6b
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    if-eqz v0, :cond_ea

    .line 4575
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4578
    :cond_ea
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v36

    if-eqz v0, :cond_eb

    .line 4579
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4581
    :cond_eb
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawArchive:Z

    if-eqz v0, :cond_ed

    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_ec

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_ed

    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_ed

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_ed

    :cond_ec
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    if-nez v0, :cond_ed

    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_ed

    .line 4582
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 4583
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4584
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getPullProgress()F

    move-result v1

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v14, v33, v1

    mul-float/2addr v0, v14

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v0, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4585
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4586
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4589
    :cond_ed
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_f3

    .line 4591
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    if-nez v0, :cond_f0

    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_ee

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_ee

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_f0

    :cond_ee
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_ef

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-nez v0, :cond_ef

    goto :goto_6c

    .line 4594
    :cond_ef
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_6d

    :cond_f0
    :goto_6c
    move v0, v13

    .line 4597
    :goto_6d
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v33

    if-eqz v1, :cond_f3

    .line 4598
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .line 4599
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/16 v36, 0x0

    cmpl-float v3, v1, v36

    if-eqz v3, :cond_f1

    .line 4600
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v4, v8

    sub-float v14, v33, v1

    mul-float/2addr v4, v14

    float-to-int v1, v4

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4602
    :cond_f1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/16 v34, 0x1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v3, v4

    sub-float v3, v1, v3

    .line 4603
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_f2

    .line 4604
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v4, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v5, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6e

    :cond_f2
    int-to-float v2, v0

    .line 4606
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move v5, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4608
    :goto_6e
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/16 v36, 0x0

    cmpl-float v0, v0, v36

    if-eqz v0, :cond_f4

    .line 4609
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6f

    :cond_f3
    const/16 v34, 0x1

    const/16 v36, 0x0

    .line 4614
    :cond_f4
    :goto_6f
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    cmpl-float v0, v0, v36

    if-eqz v0, :cond_f5

    .line 4615
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_f6

    .line 4616
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f5
    move-object/from16 v2, p1

    goto :goto_70

    .line 4618
    :cond_f6
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4619
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    int-to-float v0, v0

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float v5, v0, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4620
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    int-to-float v1, v1

    iget v2, v7, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v2, v1

    :goto_70
    if-eqz v16, :cond_f9

    .line 4625
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v14, v33, v17

    mul-float/2addr v0, v14

    float-to-int v0, v0

    .line 4626
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 4627
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveFadeGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v3, :cond_f7

    .line 4628
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveFadeGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 4630
    :cond_f7
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveFadeGradientDrawableColor:I

    if-eq v3, v1, :cond_f8

    .line 4631
    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveFadeGradientDrawableColor:I

    .line 4632
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveFadeGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const v4, 0xffffff

    and-int/2addr v4, v1

    filled-new-array {v1, v4}, [I

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_f8
    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v14, v1

    mul-float v14, v14, v21

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 4637
    invoke-static {v14, v6, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    .line 4638
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveFadeGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v1, v13, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4639
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveFadeGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    mul-float v3, v3, v22

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 4640
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveFadeGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4641
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 4644
    :cond_f9
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    const v1, 0x3dc0c0c1

    if-nez v0, :cond_fb

    iget v2, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/16 v36, 0x0

    cmpl-float v2, v2, v36

    if-eqz v2, :cond_fa

    goto :goto_71

    :cond_fa
    const/4 v6, 0x0

    goto :goto_72

    :cond_fb
    :goto_71
    if-eqz v0, :cond_fd

    .line 4646
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_fa

    add-float/2addr v0, v1

    .line 4647
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_fc

    .line 4649
    iput v2, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    :cond_fc
    move/from16 v5, v34

    const/4 v6, 0x0

    goto :goto_73

    .line 4654
    :cond_fd
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v6, 0x0

    cmpl-float v2, v0, v6

    if-lez v2, :cond_ff

    sub-float/2addr v0, v1

    .line 4655
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_fe

    .line 4657
    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    :cond_fe
    move/from16 v5, v34

    goto :goto_73

    :cond_ff
    :goto_72
    move/from16 v5, v25

    .line 4664
    :goto_73
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_102

    .line 4665
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v2, v0, v6

    if-lez v2, :cond_104

    const v2, 0x3d8e7835

    sub-float/2addr v0, v2

    .line 4666
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_100

    .line 4668
    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4670
    :cond_100
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_101

    .line 4671
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    :cond_101
    :goto_74
    move/from16 v5, v34

    goto :goto_75

    .line 4676
    :cond_102
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_104

    const v3, 0x3d8e7835

    add-float/2addr v0, v3

    .line 4677
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_103

    .line 4679
    iput v2, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4681
    :cond_103
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_101

    .line 4682
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    goto :goto_74

    .line 4688
    :cond_104
    :goto_75
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_106

    .line 4689
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    add-float v0, v0, v30

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_105

    .line 4691
    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    .line 4692
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    :cond_105
    move/from16 v5, v34

    .line 4696
    :cond_106
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    if-eqz v0, :cond_109

    .line 4697
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_107

    add-float/2addr v0, v1

    .line 4698
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_107

    .line 4700
    iput v2, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    move/from16 v5, v34

    .line 4704
    :cond_107
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_108

    const v1, 0x3d5a740e

    add-float/2addr v0, v1

    .line 4705
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_10b

    .line 4707
    iput v2, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    goto :goto_76

    :cond_108
    move/from16 v34, v5

    goto :goto_76

    :cond_109
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4712
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v2

    const/4 v6, 0x0

    if-nez v0, :cond_10a

    .line 4713
    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    move/from16 v5, v34

    .line 4716
    :cond_10a
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v1, v0, v6

    if-lez v1, :cond_108

    const v1, 0x3d5a740e

    sub-float/2addr v0, v1

    .line 4717
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_10b

    .line 4719
    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 4725
    :cond_10b
    :goto_76
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatusView:Landroid/view/View;

    if-eqz v9, :cond_10c

    move v12, v13

    goto :goto_77

    :cond_10c
    move/from16 v12, v32

    :goto_77
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    if-eqz v34, :cond_10d

    .line 4728
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_10d
    :goto_78
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 5292
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5293
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getPullProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5294
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 5296
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x20

    .line 5297
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5298
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    .line 5299
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    sget v2, Lorg/telegram/messenger/R$string;->AccActionChatPreview:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5302
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5303
    const-string v0, "android.widget.CheckBox"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 5304
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 5305
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5872
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isShareToStoryCell:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5875
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1000
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 1003
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatusView:Landroid/view/View;

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const/high16 p5, 0x41b00000    # 22.0f

    .line 1004
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-virtual {p1, p3, p3, v0, p5}, Landroid/view/View;->layout(IIII)V

    .line 1006
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_8

    .line 1007
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    iget-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez p5, :cond_3

    sget-boolean p5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p5, :cond_2

    goto :goto_0

    :cond_2
    const/16 p5, 0x1c

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p5, 0x1a

    :goto_1
    sub-int/2addr p1, p5

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 1009
    iget-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    if-eqz p5, :cond_4

    const/high16 p1, 0x41000000    # 8.0f

    .line 1010
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 1011
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p2, p4

    shr-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 1013
    :cond_4
    sget-boolean p5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p5, :cond_5

    sub-int/2addr p4, p2

    sub-int p1, p4, p1

    .line 1014
    :cond_5
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->chekBoxPaddingTop:F

    iget-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez p4, :cond_7

    sget-boolean p4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p4, :cond_6

    goto :goto_2

    :cond_6
    move p4, p3

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p4, 0x4

    :goto_3
    int-to-float p4, p4

    add-float/2addr p2, p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 1016
    :goto_4
    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p4, p1, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 1018
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 1019
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    if-ne p1, p2, :cond_a

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->updateLayout:Z

    if-eqz p2, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    return-void

    .line 1020
    :cond_a
    :goto_6
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->updateLayout:Z

    .line 1021
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    .line 1023
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1025
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 934
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatusView:Landroid/view/View;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    const/high16 v1, 0x41b00000    # 22.0f

    .line 936
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 937
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 935
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->measure(II)V

    .line 940
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_1

    const/high16 v1, 0x41c00000    # 24.0f

    .line 942
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 943
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 941
    invoke-virtual {p2, v2, v0}, Landroid/view/View;->measure(II)V

    .line 946
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 947
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->hasTags()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->addForumHeightForTags:I

    goto :goto_2

    :cond_6
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->addHeightForTags:I

    goto :goto_2

    :cond_7
    move v2, v0

    :goto_2
    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 948
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTwoLinesForName()V

    .line 951
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 952
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    .line 953
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .line 5311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5313
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->titleOverride:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, ". "

    if-eqz v1, :cond_0

    .line 5314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5315
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 5316
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-ne v1, v2, :cond_1

    .line 5317
    sget v1, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 5320
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v1, :cond_2

    .line 5321
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrSecretChat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5322
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5324
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_3

    .line 5325
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrTopic:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5326
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5327
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5328
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 5329
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_8

    .line 5330
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5331
    sget v1, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5332
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5333
    sget v1, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5335
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_6

    .line 5336
    sget v1, Lorg/telegram/messenger/R$string;->Bot:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5337
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5339
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v4, :cond_7

    .line 5340
    sget v1, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5342
    :cond_7
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5345
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5346
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_a

    .line 5347
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v1, :cond_9

    .line 5348
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5350
    :cond_9
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5352
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5353
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5354
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5357
    :cond_a
    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v1, :cond_b

    .line 5358
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5359
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5361
    :cond_b
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v1, :cond_c

    .line 5362
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrNotificationsMuted:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5363
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5365
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5366
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrUserOnline:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5367
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5369
    :cond_d
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    const/4 v4, 0x0

    if-lez v1, :cond_e

    .line 5370
    const-string v5, "NewMessages"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5371
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5373
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-lez v1, :cond_f

    .line 5374
    const-string v5, "AccDescrMentionCount"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5375
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5377
    :cond_f
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v1, :cond_10

    .line 5378
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMentionReaction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5379
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5381
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1d

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_11

    goto/16 :goto_6

    .line 5386
    :cond_11
    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v5, :cond_12

    .line 5388
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_12
    int-to-long v5, v5

    .line 5390
    invoke-static {v5, v6, v2}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v1

    .line 5391
    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 5392
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrSentDate:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "AccDescrSentDate"

    invoke-static {v1, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5394
    :cond_13
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrReceivedDate:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "AccDescrReceivedDate"

    invoke-static {v1, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5396
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5397
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v1, :cond_14

    .line 5398
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 5400
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5401
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5404
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_1c

    .line 5405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5406
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5407
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 5408
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 5409
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 5410
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_15

    .line 5411
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5413
    :cond_15
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5416
    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_17

    const/4 v2, -0x1

    goto :goto_4

    :cond_17
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_4
    if-lez v2, :cond_1b

    .line 5418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 5419
    const-string v5, "\n"

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v3, :cond_18

    if-ltz v5, :cond_18

    move v3, v5

    .line 5421
    :cond_18
    const-string v5, "\t"

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v3, :cond_19

    if-ltz v5, :cond_19

    move v3, v5

    .line 5423
    :cond_19
    const-string v5, " "

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ge v2, v3, :cond_1a

    if-ltz v2, :cond_1a

    move v3, v2

    .line 5425
    :cond_1a
    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 5427
    :cond_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5430
    :cond_1c
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5431
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 5382
    :cond_1d
    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5383
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReorderStateChanged(ZZ)V
    .locals 2

    .line 5248
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-ne v0, p1, :cond_3

    .line 5249
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 5250
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    :cond_2
    return-void

    .line 5254
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    move v0, v1

    .line 5256
    :cond_4
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    .line 5258
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    .line 5260
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 5888
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isShareToStoryCell:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 5891
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->canClickButtonInside()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5892
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->openBot:Z

    if-eqz v0, :cond_7

    .line 5893
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 5894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 5896
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 5897
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->onOpenButtonClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_3

    .line 5898
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 5900
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1

    .line 5902
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 5903
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1

    .line 5895
    :cond_5
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_6
    if-eqz v0, :cond_7

    return v1

    .line 5908
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-eqz v2, :cond_8

    const/4 v3, 0x7

    if-eq v2, v3, :cond_8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    :cond_8
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 5912
    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 5283
    sget v0, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    .line 5284
    invoke-virtual {v0, p0}, Lorg/telegram/ui/DialogsActivity;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    const/4 p1, 0x1

    return p1

    .line 5287
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 684
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 687
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public resetPinnedArchiveState()V
    .locals 4

    .line 914
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 915
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 916
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    .line 917
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    const/4 v0, 0x0

    .line 918
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 919
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v0, 0x1

    .line 920
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    .line 921
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    .line 922
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/DialogCell;->setTranslationX(F)V

    .line 923
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    if-eqz v1, :cond_2

    .line 925
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 927
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    if-eqz v1, :cond_3

    .line 928
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_3
    return-void
.end method

.method public setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V
    .locals 0

    .line 5934
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-void
.end method

.method public setBottomClip(I)V
    .locals 0

    .line 5930
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 4

    .line 3055
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 3059
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x15

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Cells/DialogCell$3;-><init>(Lorg/telegram/ui/Cells/DialogCell;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 3066
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 3067
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 3068
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 3069
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3071
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 3072
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setClipProgress(F)V
    .locals 0

    .line 5917
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    .line 5918
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public setCurrentDialogId(J)V
    .locals 0

    .line 296
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-void
.end method

.method public setCustomMessage(Ljava/lang/String;)V
    .locals 1

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->customMessage:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customMessage:Ljava/lang/String;

    .line 693
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 694
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V
    .locals 2

    .line 799
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 800
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 802
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 804
    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 805
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    const/4 p1, 0x0

    .line 806
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 807
    iput p4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz p3, :cond_1

    .line 808
    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 809
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 810
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz p3, :cond_2

    .line 811
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, p1

    :goto_1
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 812
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 813
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz p3, :cond_3

    .line 814
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    move p2, p1

    :goto_2
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 815
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 816
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 818
    :cond_4
    invoke-virtual {p0, p1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;IZZ)V
    .locals 2

    .line 822
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 823
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 825
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 827
    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 828
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    const/4 p1, 0x0

    .line 829
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 830
    iput p5, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz p3, :cond_1

    .line 831
    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 832
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 833
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz p3, :cond_2

    .line 834
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, p1

    :goto_1
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 835
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 836
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz p3, :cond_3

    .line 837
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    move p2, p1

    :goto_2
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 838
    iput-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    .line 839
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 840
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 842
    :cond_4
    invoke-virtual {p0, p1, p7}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setDialog(Lorg/telegram/tgnet/TLRPC$Dialog;II)V
    .locals 4

    .line 699
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 704
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    const/4 v0, -0x1

    .line 705
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 707
    :cond_1
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iput-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    const/4 v0, 0x1

    .line 709
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 710
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v2, :cond_2

    .line 711
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    .line 712
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->folder:Lorg/telegram/tgnet/TLRPC$TL_folder;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_folder;->id:I

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 713
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_3

    .line 714
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    goto :goto_0

    .line 717
    :cond_2
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 719
    :cond_3
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 720
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->showPremiumBlocked(Z)V

    .line 721
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    if-nez p1, :cond_5

    .line 722
    new-instance p1, Lorg/telegram/ui/Components/DialogCellTags;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/DialogCellTags;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    .line 724
    :cond_5
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    .line 725
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 726
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 727
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->requestLayout()V

    .line 729
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 730
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 731
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 732
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/4 p1, 0x0

    .line 741
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 742
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    .line 743
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 744
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 745
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 746
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V
    .locals 0

    .line 5950
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    return-void
.end method

.method public setDialogSelected(Z)V
    .locals 1

    .line 3033
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    .line 3034
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 3036
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    return-void
.end method

.method public setForumTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/messenger/MessageObject;ZZ)V
    .locals 5

    .line 251
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 252
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    .line 253
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v2, v2, p2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 254
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    :cond_1
    if-eqz p4, :cond_2

    .line 256
    iget-object v2, p4, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    instance-of v4, v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v4, :cond_2

    .line 257
    check-cast v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    .line 259
    :cond_2
    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 261
    iput-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 262
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 263
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    if-eqz p4, :cond_3

    .line 265
    iget-object p2, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 266
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 267
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 268
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 269
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 271
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 272
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    :cond_4
    if-nez p6, :cond_5

    .line 275
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    :cond_5
    if-eqz p1, :cond_6

    .line 278
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    .line 280
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p1, :cond_7

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne p1, v0, :cond_7

    .line 281
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_7

    .line 282
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    .line 285
    :cond_7
    invoke-virtual {p0, v1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setIsShareToStoryCell()V
    .locals 4

    .line 304
    new-instance v0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->forward_to_stories:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->repostStoryDrawable:Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isShareToStoryCell:Z

    return-void
.end method

.method public setIsTransitionSupport(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    return-void
.end method

.method public setMoving(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return-void
.end method

.method public setOpenBotButton(Z)V
    .locals 4

    .line 427
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->openBot:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Lorg/telegram/ui/Components/Text;

    sget v1, Lorg/telegram/messenger/R$string;->BotOpen:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonText:Lorg/telegram/ui/Components/Text;

    .line 431
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->openBot:Z

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->openButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setPinForced(Z)V
    .locals 0

    .line 1047
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPinForced:Z

    .line 1048
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 1049
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 1051
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public setPreloader(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    return-void
.end method

.method public setRightFragmentOpenedProgress(F)V
    .locals 1

    .line 289
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 290
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    .line 291
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSliding(Z)V
    .locals 0

    .line 5264
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    return-void
.end method

.method public setTitleOverride(Ljava/lang/String;)V
    .locals 0

    .line 2860
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->titleOverride:Ljava/lang/String;

    return-void
.end method

.method public setTopClip(I)V
    .locals 0

    .line 5926
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 5

    .line 3600
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 3603
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    .line 3604
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_1

    .line 3605
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3606
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3607
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    .line 3608
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3609
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 3611
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, p1, v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3612
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    goto :goto_0

    .line 3614
    :cond_2
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    .line 3615
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3616
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3618
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-nez v0, :cond_4

    .line 3619
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3620
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v4

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    if-eq v0, v1, :cond_4

    .line 3621
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-ne p1, v0, :cond_4

    const/4 p1, 0x3

    const/4 v0, 0x2

    .line 3623
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3627
    :catch_0
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 317
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    if-eqz p1, :cond_1

    .line 322
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showPremiumBlocked(Z)V
    .locals 2

    .line 6271
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unsubscribePremiumBlocked:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq p1, v1, :cond_2

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 6273
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 6274
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unsubscribePremiumBlocked:Ljava/lang/Runnable;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 6276
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unsubscribePremiumBlocked:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method public startOutAnimation()V
    .locals 3

    .line 5228
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_2

    .line 5229
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x41c00000    # 24.0f

    .line 5230
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 5231
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 5232
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 5233
    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    goto :goto_0

    .line 5235
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 5236
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 5237
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 5238
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasHiddenStories()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5239
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 5241
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    .line 5243
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->startOutAnimation()V

    :cond_2
    return-void
.end method

.method public update(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 3105
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    return p1
.end method

.method public update(IZ)Z
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 3112
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v2

    const/4 v3, 0x0

    .line 3113
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawAvatarSelector:Z

    .line 3114
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    .line 3116
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/high16 v5, 0x42600000    # 56.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_3

    .line 3117
    iget v10, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput v10, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 3118
    iget v10, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v10, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    move v11, v3

    :goto_0
    iput-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 3119
    iput v10, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3120
    iget-boolean v10, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 3121
    iget-boolean v10, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3122
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 3123
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v11, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    int-to-long v11, v11

    iget-object v4, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v4, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 3124
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->isShareToStoryCell:Z

    if-eqz v4, :cond_1

    .line 3125
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->repostStoryDrawable:Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v11, 0x0

    const-string v12, "50_50"

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    goto :goto_1

    .line 3127
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v18, 0x0

    const-string v19, "50_50"

    move-object/from16 v17, v4

    move-object/from16 v20, v10

    invoke-virtual/range {v17 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    :goto_1
    move v4, v3

    .line 3130
    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v11, v10

    if-ge v4, v11, :cond_2

    .line 3131
    aget-object v10, v10, v4

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3133
    :cond_2
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawMonoforumAvatar:Z

    .line 3134
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 3135
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    move v5, v3

    move v6, v5

    move v10, v6

    const/4 v15, 0x0

    goto/16 :goto_3c

    .line 3137
    :cond_3
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3138
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz v10, :cond_4

    move v10, v9

    goto :goto_3

    :cond_4
    move v10, v3

    .line 3139
    :goto_3
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 3140
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    const/4 v12, -0x1

    .line 3141
    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 3142
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    const/4 v14, 0x2

    if-eqz v12, :cond_17

    .line 3143
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    const-wide/16 v17, 0x0

    iget-wide v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v12, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v5, :cond_14

    .line 3145
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->read_outbox_max_id:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 3146
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->ttl_period:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-nez p1, :cond_13

    .line 3148
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->isClearingDialog(J)Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 3149
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v6, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 3150
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_6

    .line 3151
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v9

    goto :goto_5

    :cond_6
    move v6, v3

    :goto_5
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 3152
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 3153
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    :cond_7
    if-eqz v6, :cond_8

    .line 3154
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-nez v7, :cond_9

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v7, :cond_8

    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7, v6}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x3

    goto :goto_8

    .line 3155
    :cond_9
    :goto_6
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v7

    const/4 v8, 0x3

    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v7, v12, v13}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v7

    .line 3156
    aget v12, v7, v3

    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3157
    aget v12, v7, v9

    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 3158
    aget v12, v7, v14

    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 3159
    aget v7, v7, v8

    if-eqz v7, :cond_a

    move v7, v9

    goto :goto_7

    :cond_a
    move v7, v3

    :goto_7
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    goto :goto_9

    .line 3160
    :goto_8
    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v7, :cond_b

    .line 3161
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3162
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 3163
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    goto :goto_9

    .line 3165
    :cond_b
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3166
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 3167
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 3169
    :goto_9
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3170
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 3172
    :cond_c
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 3173
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    goto :goto_a

    :cond_d
    move v6, v3

    :goto_a
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 3174
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 3175
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v7, 0x7

    const/16 v12, 0x8

    if-eq v6, v7, :cond_10

    if-ne v6, v12, :cond_e

    goto :goto_c

    .line 3179
    :cond_e
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v6, :cond_f

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v5, :cond_f

    move v5, v9

    goto :goto_b

    :cond_f
    move v5, v3

    :goto_b
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto :goto_f

    .line 3176
    :cond_10
    :goto_c
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->selectedDialogFilter:[Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-ne v7, v12, :cond_11

    move v7, v9

    goto :goto_d

    :cond_11
    move v7, v3

    :goto_d
    aget-object v6, v6, v7

    if-eqz v6, :cond_12

    .line 3177
    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v6, v12, v13}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_12

    move v5, v9

    goto :goto_e

    :cond_12
    move v5, v3

    :goto_e
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 3181
    :goto_f
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_15

    .line 3182
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    goto :goto_10

    :cond_13
    const/4 v8, 0x3

    goto :goto_10

    :cond_14
    const/4 v8, 0x3

    .line 3186
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3187
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 3188
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 3189
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->currentEditDate:I

    .line 3190
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 3191
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 3193
    :cond_15
    :goto_10
    iget-wide v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v7, v5, v17

    if-eqz v7, :cond_16

    sget-wide v12, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentDialogId:J

    cmp-long v5, v5, v12

    if-nez v5, :cond_16

    move v5, v9

    goto :goto_11

    :cond_16
    move v5, v3

    :goto_11
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawAvatarSelector:Z

    goto :goto_12

    :cond_17
    const/4 v8, 0x3

    const-wide/16 v17, 0x0

    .line 3195
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 3197
    :goto_12
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_18

    .line 3198
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3199
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 3200
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 3202
    :cond_18
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-ne v5, v14, :cond_19

    .line 3203
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 3206
    :cond_19
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    if-eqz v5, :cond_1b

    .line 3207
    invoke-virtual {v5}, Lorg/telegram/ui/Components/DialogCellTags;->isEmpty()Z

    move-result v5

    .line 3208
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    move v13, v14

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v6, v7, v12, v14, v15}, Lorg/telegram/ui/Components/DialogCellTags;->update(IIJ)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3209
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->tags:Lorg/telegram/ui/Components/DialogCellTags;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/DialogCellTags;->isEmpty()Z

    move-result v6

    if-eq v5, v6, :cond_1a

    move v5, v9

    :goto_13
    move v6, v5

    goto :goto_14

    :cond_1a
    move v5, v3

    goto :goto_13

    :goto_14
    move v7, v9

    goto :goto_15

    :cond_1b
    move v13, v14

    :cond_1c
    move v5, v3

    move v6, v5

    move v7, v6

    :goto_15
    if-eqz p1, :cond_45

    .line 3219
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_1d

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v12

    if-nez v12, :cond_1d

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v12, :cond_1d

    sget v12, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int v12, p1, v12

    if-eqz v12, :cond_1d

    .line 3220
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    iput-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 3221
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->wasDrawnOnline:Z

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v14

    if-eq v12, v14, :cond_1d

    move v7, v9

    .line 3225
    :cond_1d
    sget v12, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int v12, p1, v12

    if-eqz v12, :cond_25

    .line 3227
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_21

    .line 3228
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_1f

    .line 3230
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 3231
    sget-object v12, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {v12, v7}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object v7

    .line 3232
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v14

    cmp-long v12, v14, v17

    if-eqz v12, :cond_1e

    .line 3233
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v14

    invoke-virtual {v7, v14, v15, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 3234
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v12

    invoke-virtual {v7, v12, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto :goto_16

    :cond_1e
    if-eqz v7, :cond_20

    .line 3236
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v7}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 3237
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v7, v9, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto :goto_16

    .line 3240
    :cond_1f
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 3241
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v12, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 3242
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v7, v3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    .line 3244
    :cond_20
    :goto_16
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getBotVerificationIcon(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v14

    move v7, v9

    goto :goto_17

    :cond_21
    move-wide/from16 v14, v17

    .line 3247
    :goto_17
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v12, :cond_23

    .line 3248
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_22

    .line 3249
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v14

    cmp-long v7, v14, v17

    if-eqz v7, :cond_22

    .line 3250
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 3251
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v14

    invoke-virtual {v7, v14, v15, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 3252
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v12

    invoke-virtual {v7, v12, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    goto :goto_18

    .line 3254
    :cond_22
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 3255
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v12, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 3256
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v7, v3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    .line 3258
    :goto_18
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getBotVerificationIcon(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v14

    move v7, v9

    :cond_23
    cmp-long v12, v14, v17

    if-eqz v12, :cond_24

    .line 3262
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    xor-int/2addr v12, v9

    move/from16 v22, v8

    .line 3265
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v8, v14, v15, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_19

    :cond_24
    move/from16 v22, v8

    .line 3267
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->drawBotVerified:Z

    .line 3270
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->botVerification:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_19

    :cond_25
    move/from16 v22, v8

    move v12, v3

    .line 3273
    :goto_19
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v8, :cond_27

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v8, :cond_26

    goto :goto_1a

    :cond_26
    move/from16 v29, v13

    goto :goto_1b

    .line 3274
    :cond_27
    :goto_1a
    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_USER_PRINT:I

    and-int v8, p1, v8

    if-eqz v8, :cond_26

    .line 3275
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v8

    move/from16 v29, v13

    move-wide/from16 v24, v14

    int-to-long v13, v8

    const/16 v28, 0x1

    move-wide/from16 v26, v13

    invoke-virtual/range {v23 .. v28}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JJZ)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3276
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v13, :cond_28

    if-eqz v8, :cond_2a

    :cond_28
    if-nez v13, :cond_29

    if-nez v8, :cond_2a

    :cond_29
    if-eqz v13, :cond_2b

    invoke-virtual {v13, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    :cond_2a
    move v12, v9

    :cond_2b
    :goto_1b
    if-nez v12, :cond_2c

    .line 3281
    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_MESSAGE_TEXT:I

    and-int v8, p1, v8

    if-eqz v8, :cond_2c

    .line 3282
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_2c

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    if-eq v8, v13, :cond_2c

    move v12, v9

    :cond_2c
    if-nez v12, :cond_2e

    .line 3286
    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I

    and-int v8, p1, v8

    if-eqz v8, :cond_2e

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_2e

    .line 3287
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v13, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_2d

    .line 3288
    iget-boolean v13, v8, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v13, :cond_2d

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v8, :cond_2d

    move v8, v9

    goto :goto_1c

    :cond_2d
    move v8, v3

    :goto_1c
    iget-boolean v13, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eq v8, v13, :cond_2e

    move v12, v9

    :cond_2e
    if-nez v12, :cond_31

    .line 3292
    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int v8, p1, v8

    if-eqz v8, :cond_31

    .line 3293
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_2f

    iget-boolean v13, v8, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v13, :cond_31

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v13, v8}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 3294
    :cond_2f
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->forumFormattedNames:Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;

    if-eqz v8, :cond_30

    .line 3295
    invoke-static {v8}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->-$$Nest$minvalidateSpans(Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;)V

    :cond_30
    move v12, v9

    :cond_31
    if-nez v12, :cond_32

    .line 3300
    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int v8, p1, v8

    if-eqz v8, :cond_32

    .line 3301
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v8, :cond_32

    move v12, v9

    :cond_32
    if-nez v12, :cond_33

    .line 3305
    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_AVATAR:I

    and-int v8, p1, v8

    if-eqz v8, :cond_33

    .line 3306
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v8, :cond_33

    move v12, v9

    :cond_33
    if-nez v12, :cond_34

    .line 3310
    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I

    and-int v8, p1, v8

    if-eqz v8, :cond_34

    .line 3311
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v8, :cond_34

    move v12, v9

    :cond_34
    if-nez v12, :cond_40

    .line 3316
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_35

    iget-boolean v13, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v8

    if-eq v13, v8, :cond_35

    .line 3317
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v8

    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    move v12, v9

    .line 3320
    :cond_35
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v8, :cond_40

    .line 3321
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v13, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v8, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v8, :cond_36

    const/4 v14, 0x0

    goto :goto_1d

    .line 3326
    :cond_36
    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-wide v14, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v14

    :goto_1d
    if-eqz v14, :cond_37

    .line 3327
    iget-boolean v13, v14, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-nez v13, :cond_38

    iget-boolean v13, v14, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v13, :cond_37

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_37

    goto :goto_1e

    :cond_37
    move v15, v9

    move/from16 v23, v10

    goto :goto_20

    .line 3328
    :cond_38
    :goto_1e
    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v13

    move v15, v9

    move/from16 v23, v10

    iget-wide v9, v14, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v13, v9, v10}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v9

    .line 3329
    aget v10, v9, v3

    .line 3330
    aget v13, v9, v15

    .line 3331
    aget v24, v9, v29

    .line 3332
    aget v9, v9, v22

    if-eqz v9, :cond_39

    move v9, v15

    goto :goto_1f

    :cond_39
    move v9, v3

    :goto_1f
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    move/from16 v9, v24

    goto :goto_21

    .line 3333
    :goto_20
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v9, :cond_3a

    .line 3334
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result v10

    move v9, v3

    move v13, v9

    goto :goto_21

    :cond_3a
    if-eqz v8, :cond_3b

    .line 3337
    iget v10, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    .line 3338
    iget v13, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    .line 3339
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    goto :goto_21

    :cond_3b
    move v9, v3

    move v10, v9

    move v13, v10

    .line 3344
    :goto_21
    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-eqz v14, :cond_3c

    move v13, v3

    :cond_3c
    if-eqz v8, :cond_3f

    .line 3347
    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-ne v14, v10, :cond_3d

    iget-boolean v14, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    move/from16 v22, v15

    iget-boolean v15, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-ne v14, v15, :cond_3e

    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-ne v14, v13, :cond_3e

    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eq v14, v9, :cond_41

    goto :goto_22

    :cond_3d
    move/from16 v22, v15

    .line 3348
    :cond_3e
    :goto_22
    iput v10, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3349
    iput v13, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 3350
    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 3351
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    move/from16 v12, v22

    goto :goto_23

    :cond_3f
    move/from16 v22, v15

    goto :goto_23

    :cond_40
    move/from16 v22, v9

    move/from16 v23, v10

    :cond_41
    :goto_23
    if-nez v12, :cond_42

    .line 3356
    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SEND_STATE:I

    and-int v8, p1, v8

    if-eqz v8, :cond_42

    .line 3357
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_42

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v9, v8, :cond_42

    .line 3358
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    move/from16 v15, v22

    goto :goto_24

    :cond_42
    move v15, v12

    :goto_24
    if-nez v15, :cond_44

    if-eqz v7, :cond_43

    .line 3365
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_43
    return v5

    :cond_44
    :goto_25
    const/4 v14, 0x0

    goto :goto_26

    :cond_45
    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v29, v13

    goto :goto_25

    .line 3371
    :goto_26
    iput-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 3372
    iput-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3373
    iput-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 3376
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v8, :cond_47

    .line 3377
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3378
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 3379
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell;->findFolderTopMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_46

    .line 3381
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    goto :goto_29

    :cond_46
    move-wide/from16 v8, v17

    goto :goto_29

    .line 3386
    :cond_47
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 3387
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v8, :cond_49

    .line 3388
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    move-wide/from16 v12, v17

    invoke-virtual {v8, v9, v10, v12, v13}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v8

    .line 3389
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v14, v10

    invoke-virtual {v9, v12, v13, v14, v15}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v9

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    if-ne v8, v9, :cond_48

    .line 3391
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3392
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_28

    .line 3394
    :cond_48
    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    xor-int/lit8 v8, v9, 0x1

    .line 3395
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_28

    .line 3398
    :cond_49
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v8, :cond_4a

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v8, v9, v10, v12, v13}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v8

    if-eqz v8, :cond_4a

    move/from16 v15, v22

    goto :goto_27

    :cond_4a
    move v15, v3

    :goto_27
    iput-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3401
    :goto_28
    iget-wide v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v17, 0x0

    :goto_29
    cmp-long v10, v8, v17

    if-eqz v10, :cond_4e

    .line 3405
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 3406
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v8, :cond_4d

    .line 3408
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_2a

    .line 3410
    :cond_4b
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 3411
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_2a

    .line 3413
    :cond_4c
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3414
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v9, :cond_4d

    if-eqz v8, :cond_4d

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v8, :cond_4d

    .line 3415
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_4d

    .line 3417
    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3421
    :cond_4d
    :goto_2a
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-eqz v8, :cond_4e

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_4e

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 3422
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    iget-wide v9, v9, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 3426
    :cond_4e
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v8, :cond_50

    .line 3427
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3428
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move/from16 v13, v29

    invoke-virtual {v8, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3429
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    invoke-virtual/range {v24 .. v30}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_4f
    :goto_2b
    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_2c

    .line 3431
    :cond_50
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v8, :cond_51

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_51

    .line 3432
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    .line 3433
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    .line 3434
    :cond_51
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_56

    .line 3435
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-virtual {v9, v10, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 3436
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 3437
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3438
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    invoke-virtual/range {v24 .. v30}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2b

    .line 3439
    :cond_52
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 3440
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v9, 0x15

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3441
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    invoke-virtual/range {v24 .. v30}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2b

    .line 3442
    :cond_53
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_54

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-eqz v8, :cond_54

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->isMonoForumTopicDialog:Z

    if-nez v8, :cond_54

    .line 3443
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v9, 0x16

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3444
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    invoke-virtual/range {v24 .. v30}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 3445
    :cond_54
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_55

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-nez v8, :cond_55

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->isMonoForumTopicDialog:Z

    if-nez v8, :cond_55

    .line 3446
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move/from16 v15, v22

    invoke-virtual {v8, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3447
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    invoke-virtual/range {v24 .. v30}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 3449
    :cond_55
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    invoke-virtual/range {v31 .. v37}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZIZ)V

    goto/16 :goto_2b

    .line 3451
    :cond_56
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_4f

    .line 3453
    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v9, :cond_57

    .line 3454
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v9, v8, v10, v12}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->setMonoForumAvatar(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/messenger/ImageReceiver;)V

    .line 3455
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    goto :goto_2c

    :cond_57
    const/high16 v12, 0x3f800000    # 1.0f

    .line 3457
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-virtual {v9, v10, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 3458
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v9, v8, v10}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :goto_2c
    const-wide/16 v8, 0xdc

    const-wide/16 v12, 0x96

    if-eqz v1, :cond_64

    .line 3463
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-ne v4, v10, :cond_58

    iget-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eq v11, v10, :cond_64

    :cond_58
    iget-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v10, :cond_59

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move v10, v3

    move v14, v4

    iget-wide v3, v0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    sub-long v17, v17, v3

    const-wide/16 v3, 0x64

    cmp-long v3, v17, v3

    if-lez v3, :cond_64

    goto :goto_2d

    :cond_59
    move v10, v3

    move v14, v4

    .line 3464
    :goto_2d
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_5a

    .line 3465
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5a
    const/4 v3, 0x2

    .line 3467
    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    .line 3468
    new-instance v4, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3472
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Cells/DialogCell$4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/DialogCell$4;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v14, :cond_5b

    .line 3482
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v3, :cond_5d

    :cond_5b
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-nez v3, :cond_5c

    if-nez v11, :cond_5d

    :cond_5c
    move/from16 p1, v10

    goto :goto_2e

    .line 3485
    :cond_5d
    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v3, :cond_5e

    .line 3486
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3487
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 p1, v10

    goto :goto_2f

    .line 3489
    :cond_5e
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    move/from16 p1, v10

    const-wide/16 v10, 0x1ae

    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3490
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2f

    .line 3483
    :goto_2e
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3484
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3492
    :goto_2f
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v3, :cond_62

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-eqz v3, :cond_62

    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_62

    .line 3493
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v15, 0x1

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v3, v4, p1

    const-string v3, "%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3494
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v15, [Ljava/lang/Object;

    aput-object v10, v11, p1

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3496
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_61

    .line 3497
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3498
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3499
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move/from16 v12, p1

    .line 3500
    :goto_30
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_60

    .line 3501
    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v13, v8, :cond_5f

    .line 3502
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v9, v12, 0x1

    move/from16 v13, p1

    invoke-virtual {v11, v8, v12, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3503
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v10, v8, v12, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_31
    move-object v8, v10

    goto :goto_32

    :cond_5f
    move/from16 v13, p1

    .line 3505
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v15, v8, v12, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_31

    :goto_32
    add-int/lit8 v12, v12, 0x1

    move-object v10, v8

    const/16 p1, 0x0

    const-wide/16 v8, 0xdc

    goto :goto_30

    :cond_60
    move-object v8, v10

    const/high16 v3, 0x41000000    # 8.0f

    .line 3509
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v4, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 3510
    new-instance v30, Landroid/text/StaticLayout;

    sget-object v32, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    sget-object v34, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/high16 v35, 0x3f800000    # 1.0f

    move-object/from16 v31, v11

    invoke-direct/range {v30 .. v37}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v30

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    .line 3511
    new-instance v30, Landroid/text/StaticLayout;

    sget-object v32, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    move-object/from16 v31, v15

    invoke-direct/range {v30 .. v37}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v30

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    .line 3512
    new-instance v30, Landroid/text/StaticLayout;

    sget-object v32, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint2:Landroid/text/TextPaint;

    move-object/from16 v31, v8

    invoke-direct/range {v30 .. v37}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v30

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    goto :goto_33

    .line 3514
    :cond_61
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    .line 3517
    :cond_62
    :goto_33
    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    .line 3518
    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeftOld:I

    .line 3519
    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-le v3, v14, :cond_63

    const/4 v3, 0x1

    goto :goto_34

    :cond_63
    const/4 v3, 0x0

    :goto_34
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    .line 3520
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 3523
    :cond_64
    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz v3, :cond_65

    const/4 v3, 0x1

    goto :goto_35

    :cond_65
    const/4 v3, 0x0

    :goto_35
    if-eqz v1, :cond_68

    move/from16 v9, v23

    if-eq v3, v9, :cond_68

    .line 3525
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_66

    .line 3526
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_66
    const/4 v15, 0x0

    .line 3528
    iput v15, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    const/4 v13, 0x2

    .line 3529
    new-array v4, v13, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    .line 3530
    new-instance v8, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3534
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lorg/telegram/ui/Cells/DialogCell$5;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Cells/DialogCell$5;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v4, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v3, :cond_67

    .line 3542
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xdc

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3543
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_36

    .line 3545
    :cond_67
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3546
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3548
    :goto_36
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_37

    :cond_68
    const/4 v15, 0x0

    .line 3550
    :goto_37
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v3

    if-nez v3, :cond_69

    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_69

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v3, :cond_69

    const/4 v3, 0x1

    goto :goto_38

    :cond_69
    const/4 v3, 0x0

    :goto_38
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawMonoforumAvatar:Z

    .line 3551
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_6a

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v3, :cond_6a

    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v3, :cond_6a

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v3, :cond_6b

    :cond_6a
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-nez v3, :cond_6c

    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_6c

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v3, :cond_6c

    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController;->savedViewAsChats:Z

    if-eqz v3, :cond_6c

    :cond_6b
    const/4 v3, 0x1

    goto :goto_39

    :cond_6c
    const/4 v3, 0x0

    .line 3552
    :goto_39
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v8

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v11, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v4, v8, v11

    if-nez v4, :cond_6e

    :cond_6d
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v4, :cond_6f

    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesController;->hasHiddenStories()Z

    move-result v4

    if-eqz v4, :cond_6f

    :cond_6e
    const/4 v4, 0x1

    goto :goto_3a

    :cond_6f
    const/4 v4, 0x0

    .line 3553
    :goto_3a
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->drawMonoforumAvatar:Z

    if-eqz v9, :cond_70

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto :goto_3b

    :cond_70
    const/high16 v9, 0x42600000    # 56.0f

    const/4 v10, 0x0

    invoke-static {v9, v10, v3, v4}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZZ)I

    move-result v3

    :goto_3b
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v3, v7

    .line 3555
    :goto_3c
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v4, :cond_72

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-nez v4, :cond_71

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eqz v4, :cond_72

    :cond_71
    const/4 v6, 0x1

    :cond_72
    if-nez v3, :cond_76

    .line 3559
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v4, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-nez v4, :cond_73

    const/4 v4, 0x1

    goto :goto_3d

    :cond_73
    move v4, v10

    .line 3560
    :goto_3d
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v7

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v7

    if-nez v7, :cond_74

    const/4 v10, 0x1

    :cond_74
    if-eqz v10, :cond_75

    if-nez v4, :cond_76

    if-eqz v10, :cond_76

    :cond_75
    const/4 v3, 0x1

    :cond_76
    if-nez v1, :cond_79

    .line 3567
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v4, :cond_77

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v4, :cond_78

    :cond_77
    const/high16 v15, 0x3f800000    # 1.0f

    :cond_78
    iput v15, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    .line 3568
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_79

    .line 3569
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_79
    if-eqz v3, :cond_7a

    .line 3573
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 3575
    :cond_7a
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v3

    if-eq v3, v2, :cond_7b

    const/4 v5, 0x1

    :cond_7b
    if-eqz v6, :cond_7d

    .line 3579
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    if-eqz v2, :cond_7c

    .line 3580
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    goto :goto_3e

    :cond_7c
    const/4 v15, 0x1

    .line 3582
    iput-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->updateLayout:Z

    .line 3585
    :cond_7d
    :goto_3e
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->updatePremiumBlocked(Z)V

    return v5

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateMessageThumbs()V
    .locals 10

    .line 5460
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 5463
    :cond_0
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 5464
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v4, :cond_3

    .line 5465
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5466
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 5467
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    move v0, v3

    .line 5469
    :goto_0
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v4, v2, :cond_c

    .line 5470
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    .line 5471
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v5, :cond_1

    add-int/lit8 v5, v0, 0x1

    .line 5472
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {p0, v0, v4}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/tgnet/TLRPC$PhotoSize;)V

    :goto_1
    move v0, v5

    goto :goto_2

    .line 5473
    :cond_1
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 5474
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-direct {p0, v0, v4}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/tgnet/TLRPC$MessageMedia;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5477
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    const-string/jumbo v4, "telegram_"

    const-string v5, "article"

    const-string v6, "profile"

    const-string v7, "app"

    const/4 v8, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    if-le v1, v9, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_8

    .line 5478
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5479
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 5480
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5481
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 5482
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_7

    .line 5483
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isStoryMedia()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5484
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->type:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v1, v8

    .line 5485
    :goto_4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5486
    :cond_6
    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5490
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_c

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v1, :cond_c

    .line 5491
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5492
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 5493
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isStoryMedia()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5494
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->type:Ljava/lang/String;

    .line 5495
    :cond_a
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz v8, :cond_b

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 5496
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_c
    :goto_5
    return-void
.end method
