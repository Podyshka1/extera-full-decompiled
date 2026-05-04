.class public Lorg/telegram/ui/Cells/ChatActionCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;,
        Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;,
        Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;
    }
.end annotation


# static fields
.field private static monthsToEmoticon:Ljava/util/Map;


# instance fields
.field private TAG:I

.field private accessibilityText:Landroid/text/SpannableStringBuilder;

.field private actionPressed:Z

.field private adaptiveEmojiColor:I

.field private adaptiveEmojiColorFilter:Landroid/graphics/ColorFilter;

.field private animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private attachedToWindow:Z

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field private backgroundButtonTop:I

.field private backgroundHeight:I

.field private backgroundLeft:I

.field private backgroundPath:Landroid/graphics/Path;

.field private final backgroundPath2:Landroid/graphics/Path;

.field private backgroundRect:Landroid/graphics/RectF;

.field private backgroundRectHeight:I

.field private backgroundRight:I

.field public birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

.field private final botButtonPath:Landroid/graphics/Path;

.field private final botButtonRadii:[F

.field private botButtons:Ljava/util/ArrayList;

.field private botInlineButtons:Lorg/telegram/messenger/BotInlineKeyboard$Source;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private buttonClickableAsImage:Z

.field private canDrawInParent:Z

.field private cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

.field private clipPath:Landroid/graphics/Path;

.field private currentAccount:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentVideoLocation:Lorg/telegram/messenger/ImageLocation;

.field private customDate:I

.field private customText:Ljava/lang/CharSequence;

.field private delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

.field private dimAmount:F

.field private final dimPaint:Landroid/graphics/Paint;

.field public firstInChat:Z

.field private forceWasUnread:Z

.field private giftButtonPressed:Z

.field private giftButtonRect:Landroid/graphics/RectF;

.field private giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field private giftPremiumAdditionalHeight:I

.field private giftPremiumButtonLayout:Landroid/text/StaticLayout;

.field private giftPremiumButtonWidth:F

.field private giftPremiumReleasedText:Lorg/telegram/ui/Components/Text;

.field private giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

.field private giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

.field private giftPremiumTextClip:Lorg/telegram/ui/GradientClip;

.field private giftPremiumTextCollapsed:Z

.field private giftPremiumTextCollapsedHeight:I

.field private giftPremiumTextExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private giftPremiumTextMore:Lorg/telegram/ui/Components/Text;

.field private giftPremiumTextMoreH:I

.field private giftPremiumTextMoreX:I

.field private giftPremiumTextMoreY:I

.field private giftPremiumTextUncollapsed:Z

.field private giftPremiumTitleLayout:Landroid/text/StaticLayout;

.field private giftRectEmpty:Z

.field private giftRectSize:I

.field private giftReleasedBackgroundPaint:Landroid/graphics/Paint;

.field private giftRibbonPaintEffect:Landroid/graphics/CornerPathEffect;

.field private giftRibbonPaintFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private giftRibbonPaintFilterDark:Z

.field private giftRibbonPath:Landroid/graphics/Path;

.field private giftRibbonText:Lorg/telegram/ui/Components/Text;

.field private giftSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private giftStickerDelegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

.field private giftSubtitlePaint:Landroid/text/TextPaint;

.field private giftTextPaint:Landroid/text/TextPaint;

.field private giftTitlePaint:Landroid/text/TextPaint;

.field private hasReplyMessage:Z

.field private imagePressed:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private invalidateColors:Z

.field private invalidateListener:Ljava/lang/Runnable;

.field private invalidatePath:Z

.field private invalidateWithParent:Landroid/view/View;

.field private invalidatesParent:Z

.field public isAllChats:Z

.field public isForum:Z

.field public isMonoForum:Z

.field public isSideMenuEnabled:Z

.field public isSideMenued:Z

.field private isSpoilerRevealing:Z

.field private lastTouchX:F

.field private lastTouchY:F

.field private lineHeights:Ljava/util/ArrayList;

.field private lineWidths:Ljava/util/ArrayList;

.field private loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private offerExpired:Z

.field private onActionClick:Landroid/view/View$OnClickListener;

.field private onActionLongClick:Landroid/view/View$OnLongClickListener;

.field private overriddenMaxWidth:I

.field private overrideBackground:I

.field private overrideBackgroundPaint:Landroid/graphics/Paint;

.field private overrideText:I

.field private overrideTextPaint:Landroid/text/TextPaint;

.field private pressedBotButton:I

.field private pressedLink:Landroid/text/style/URLSpan;

.field private final pressedState:[I

.field private previousWidth:I

.field progressToProgress:F

.field progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private final radii:[F

.field public final reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

.field private rect:Landroid/graphics/RectF;

.field private rippleView:Landroid/view/View;

.field private settingWallpaperLayout:Landroid/text/StaticLayout;

.field settingWallpaperPaint:Landroid/text/TextPaint;

.field private settingWallpaperProgress:F

.field private settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

.field public showTopicSeparator:Z

.field public sideMenuAlpha:F

.field public sideMenuWidth:I

.field private spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field public spoilers:Ljava/util/List;

.field private spoilersPool:Ljava/util/Stack;

.field public final starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

.field public starGiftLayoutX:F

.field public starGiftLayoutY:F

.field private starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private starsPath:Landroid/graphics/Path;

.field private starsSize:I

.field private stickerSize:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field textPaint:Landroid/text/TextPaint;

.field private textPressed:Z

.field private textWidth:I

.field private textX:I

.field private textXLeft:I

.field private textY:I

.field private themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private titleHeight:I

.field private titleLayout:Landroid/text/StaticLayout;

.field private titleXLeft:I

.field public topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

.field private topicSeparatorTopPadding:I

.field public final transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

.field private viewTop:F

.field private viewTranslationX:F

.field private visiblePartSet:Z

.field private wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

.field private wasLayout:Z


# direct methods
.method public static synthetic $r8$lambda$2RIn_Zf8LWyEH9XnlMamf6fU6XU(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$onTouchEvent$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$3RNgYrTMc5lGds8qF9VCYiEorOk(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$didPressCustomBotButton$7(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DjShJcte-RnsGOSskXRgodoFCnc(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$onTouchEvent$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$E1usMFRwAFVXQF9Ca1udUTZ5Yhc(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$didPressCustomBotButton$8(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M94e-WoidXMW0sSXz8iNtWSX9_E(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$openPremiumGiftPreview$5(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TRJArb3vcIMykXxWl_Y2rs47hvE(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3725
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VnGbzJWEt4xpNHRbT13CQWccGbo(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$didPressCustomBotButton$9(Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iCvTBejquFXrWNVa-zb0FYTwURs(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$setMessageObject$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$nIGBo2bL6KX1M_zm8GnMpYxcPME(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pZe4_IGdoW_ShdrRMWwL33ZDjhY(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$didPressCustomBotButton$10(Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tEU47A0_xJJKpwEHXo718Vac4CQ(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->lambda$openPremiumGiftChannel$4(Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentMessageObject(Lorg/telegram/ui/Cells/ChatActionCell;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Cells/ChatActionCell;)Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mopenLink(Lorg/telegram/ui/Cells/ChatActionCell;Landroid/text/style/CharacterStyle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->openLink(Landroid/text/style/CharacterStyle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x1

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5\u20e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 497
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 501
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 294
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    .line 313
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->showTopicSeparator:Z

    .line 334
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    .line 337
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilersPool:Ljava/util/Stack;

    .line 356
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    const/4 v2, -0x1

    .line 367
    iput v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackground:I

    .line 368
    iput v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideText:I

    .line 372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    .line 374
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    .line 376
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    .line 377
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    .line 378
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateColors:Z

    .line 390
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextUncollapsed:Z

    .line 391
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    .line 393
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v7, 0x140

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v3, v4, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 431
    iput-boolean v0, v4, Lorg/telegram/ui/Cells/ChatActionCell;->buttonClickableAsImage:Z

    .line 438
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    .line 439
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    .line 440
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    .line 444
    new-instance v2, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object v2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    .line 448
    new-instance v2, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    iput-object v2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->giftStickerDelegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    .line 489
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    .line 493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->botButtons:Ljava/util/ArrayList;

    .line 1090
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    .line 3549
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath2:Landroid/graphics/Path;

    const/16 v2, 0x8

    .line 3550
    new-array v3, v2, [F

    iput-object v3, v4, Lorg/telegram/ui/Cells/ChatActionCell;->radii:[F

    .line 3552
    new-array v3, v2, [F

    iput-object v3, v4, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonRadii:[F

    .line 3553
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v4, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonPath:Landroid/graphics/Path;

    const v3, 0x101009e

    const v5, 0x10100a7

    .line 3633
    filled-new-array {v3, v5}, [I

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/ui/Cells/ChatActionCell;->pressedState:[I

    .line 4077
    new-instance v3, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    iput-object v3, v4, Lorg/telegram/ui/Cells/ChatActionCell;->transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    .line 502
    iget-object v3, v4, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v1, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 503
    iput-boolean p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    .line 504
    iput-object p3, v4, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 505
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 506
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v3, v3

    invoke-static {v3, v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 507
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 508
    iget p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p2

    iput p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->TAG:I

    .line 510
    new-instance p2, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    iget v3, v4, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-direct {p2, v3, p0, p3}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;-><init>(ILorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    .line 512
    iget-object p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v0, v3, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 513
    iget-object p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v0, v5, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 514
    iget-object p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-static {v0, v5, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 516
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, v4, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    const/high16 p1, -0x1000000

    const p3, 0x3dcccccd    # 0.1f

    .line 517
    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    const/4 p3, 0x7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p1, p3, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 518
    iget-object p1, v4, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object p1, v4, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 521
    new-instance p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object p1, v4, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 p2, 0x64

    .line 522
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    .line 523
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->isCircle:Z

    .line 524
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    .line 525
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    .line 526
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    .line 527
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    .line 528
    iput v0, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const p2, 0x3f7ae148    # 0.98f

    .line 529
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    .line 530
    iput-boolean v1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    const/4 p2, 0x0

    .line 531
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    const-wide/16 p2, 0x2ee

    .line 532
    iput-wide p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->minLifeTime:J

    const/16 p2, 0x2ee

    .line 533
    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->randLifeTime:I

    .line 534
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    return-void
.end method

.method private buildLayout()V
    .locals 33

    move-object/from16 v0, p0

    const/4 v12, 0x0

    .line 2008
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectEmpty:Z

    .line 2011
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const-wide/16 v2, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_9

    .line 2013
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2014
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    .line 2015
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2016
    sget v4, Lorg/telegram/messenger/R$string;->ExpiredStoryMention:I

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v13, v4, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->createExpiredStoryString(ZI[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 2018
    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->ExpiredStoryMentioned:I

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v5, v6, v12

    invoke-static {v13, v4, v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->createExpiredStoryString(ZI[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 2020
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getTopicId()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2021
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    neg-long v5, v5

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v8, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7, v8, v13}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v4

    .line 2022
    invoke-static {v4, v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createActionTextWithTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v14

    :goto_0
    if-nez v4, :cond_a

    .line 2025
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_8

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v5, :cond_8

    .line 2026
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v5, :cond_3

    .line 2027
    sget v4, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2028
    :cond_3
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-nez v6, :cond_5

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    goto :goto_1

    .line 2037
    :cond_4
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    .line 2029
    :cond_5
    :goto_1
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    if-eqz v5, :cond_6

    .line 2030
    sget v4, Lorg/telegram/messenger/R$string;->AttachVoiceExpired:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2031
    :cond_6
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    if-eqz v4, :cond_7

    .line 2032
    sget v4, Lorg/telegram/messenger/R$string;->AttachRoundExpired:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2034
    :cond_7
    sget v4, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2040
    :cond_8
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2042
    :goto_2
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5, v6, v4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->shouldAddTimestamp(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2043
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->addTimestamp(Ljava/lang/CharSequence;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_3

    .line 2047
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    .line 2049
    :cond_a
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_b

    iget-boolean v6, v5, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z

    if-eqz v6, :cond_b

    .line 2050
    const-string v4, ""

    :cond_b
    const/16 v6, 0x21

    if-eqz v5, :cond_f

    .line 2052
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_f

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v5, :cond_f

    .line 2054
    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoAppendTasks;

    if-eqz v7, :cond_c

    .line 2055
    sget v5, Lorg/telegram/messenger/R$drawable;->mini_checklist_add:I

    goto :goto_4

    .line 2056
    :cond_c
    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoCompletions;

    if-eqz v7, :cond_e

    .line 2057
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoCompletions;

    .line 2058
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoCompletions;->incompleted:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoCompletions;->completed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v7, v5, :cond_d

    .line 2059
    sget v5, Lorg/telegram/messenger/R$drawable;->mini_checklist_undone:I

    goto :goto_4

    .line 2061
    :cond_d
    sget v5, Lorg/telegram/messenger/R$drawable;->mini_checklist_done:I

    goto :goto_4

    :cond_e
    move v5, v12

    :goto_4
    if-eqz v5, :cond_f

    .line 2065
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2066
    const-string v4, "i "

    invoke-virtual {v7, v12, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2067
    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v7, v4, v12, v13, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v4, v7

    .line 2070
    :cond_f
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 2071
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-eqz v5, :cond_10

    .line 2072
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 2073
    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2074
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2075
    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2076
    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    :cond_10
    if-eqz v1, :cond_67

    .line 2079
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_12

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    if-eqz v8, :cond_12

    move-object v8, v7

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->balance_too_low:Z

    if-eqz v8, :cond_12

    .line 2080
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    .line 2081
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(IJ)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2082
    sget v1, Lorg/telegram/messenger/R$string;->StarsBuy:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_5

    :cond_11
    move-object v6, v14

    .line 2084
    :goto_5
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    .line 2085
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 2086
    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2087
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2088
    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2089
    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 2090
    iput-boolean v13, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectEmpty:Z

    goto/16 :goto_2d

    :cond_12
    if-eqz v5, :cond_13

    .line 2091
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    if-eqz v8, :cond_13

    move-object v8, v7

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->rejected:Z

    if-eqz v8, :cond_13

    .line 2092
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    .line 2094
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    .line 2095
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 2096
    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2097
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2098
    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2099
    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 2100
    iput-boolean v13, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectEmpty:Z

    goto/16 :goto_2d

    .line 2102
    :cond_13
    iget v7, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_14

    .line 2103
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v5, v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto/16 :goto_2d

    :cond_14
    const/16 v8, 0x19

    if-ne v7, v8, :cond_15

    .line 2105
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumChannelLayouts()V

    goto/16 :goto_2d

    :cond_15
    const/16 v8, 0x1e

    .line 2106
    const-string v10, " #"

    const/4 v15, 0x2

    if-ne v7, v8, :cond_44

    .line 2107
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2109
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;

    if-eqz v7, :cond_17

    .line 2110
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;

    iget-wide v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;->stars:J

    .line 2111
    const-string v3, "ActionGiftStarsTitle"

    long-to-int v1, v1

    .line 2112
    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2114
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_16

    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftStarsSubtitle:I

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v3, v4, v12

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_16
    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftStarsSubtitleYou:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftStarsView:I

    .line 2115
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    .line 2111
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    goto/16 :goto_2d

    .line 2119
    :cond_17
    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    const/high16 v8, 0x41900000    # 18.0f

    move-wide/from16 v16, v2

    const-string v2, "a "

    const-string v3, " "

    if-eqz v7, :cond_1b

    move-object v7, v5

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->refunded:Z

    if-eqz v7, :cond_1b

    .line 2120
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    .line 2121
    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    .line 2122
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v9

    iget-boolean v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->upgrade:Z

    xor-int/2addr v10, v13

    if-ne v9, v10, :cond_18

    goto :goto_7

    :cond_18
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    .line 2123
    :goto_7
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2124
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2125
    iget-boolean v5, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->prepaid_upgrade:Z

    if-eqz v5, :cond_19

    sget v5, Lorg/telegram/messenger/R$string;->Gift2ActionUpgradeTitle:I

    goto :goto_8

    :cond_19
    sget v5, Lorg/telegram/messenger/R$string;->Gift2ActionTitle:I

    :goto_8
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_1a

    .line 2126
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v3, :cond_1a

    .line 2127
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2128
    new-instance v2, Lorg/telegram/ui/AvatarSpan;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-direct {v2, v0, v3, v8}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    .line 2129
    invoke-virtual {v2, v1}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2130
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v15

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v13

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2132
    :cond_1a
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2133
    sget v1, Lorg/telegram/messenger/R$string;->Gift2ActionUpgradeRefundedText:I

    .line 2136
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftStarsView:I

    .line 2138
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v2, Lorg/telegram/messenger/R$string;->Gift2UniqueRibbon:I

    .line 2139
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    move-object/from16 v32, v4

    move-object v4, v1

    move-object/from16 v1, v32

    .line 2133
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    goto/16 :goto_2d

    .line 2144
    :cond_1b
    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v7, :cond_42

    .line 2145
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    move/from16 v18, v13

    .line 2146
    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    .line 2147
    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v20

    .line 2148
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    const/high16 v22, 0x41500000    # 13.0f

    if-eqz v7, :cond_1d

    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->prepaid_upgrade:Z

    if-eqz v9, :cond_1c

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v7, :cond_1d

    :cond_1c
    move/from16 v7, v18

    goto :goto_9

    :cond_1d
    const/4 v7, 0x0

    .line 2149
    :goto_9
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v23

    cmp-long v9, v23, v20

    if-nez v9, :cond_1e

    if-nez v7, :cond_1e

    move/from16 v9, v18

    goto :goto_a

    :cond_1e
    const/4 v9, 0x0

    .line 2150
    :goto_a
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v20

    move/from16 v23, v15

    .line 2151
    iget-boolean v15, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->prepaid_upgrade:Z

    if-nez v15, :cond_1f

    iget-object v15, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v15, :cond_1f

    .line 2152
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v20

    :cond_1f
    move-wide/from16 v14, v20

    .line 2154
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2155
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v6

    .line 2156
    iget-object v14, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v14}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    .line 2157
    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    move-object/from16 v25, v4

    .line 2158
    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->can_upgrade:Z

    if-eqz v4, :cond_20

    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    if-nez v4, :cond_20

    move-wide/from16 v26, v14

    iget-wide v14, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    cmp-long v4, v14, v16

    if-lez v4, :cond_21

    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgraded:Z

    if-nez v4, :cond_21

    move/from16 v4, v18

    goto :goto_b

    :cond_20
    move-wide/from16 v26, v14

    :cond_21
    const/4 v4, 0x0

    :goto_b
    cmp-long v14, v26, v16

    if-eqz v14, :cond_23

    .line 2159
    iget-boolean v14, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->auction_acquired:Z

    if-eqz v14, :cond_23

    if-eqz v8, :cond_23

    .line 2160
    sget v6, Lorg/telegram/messenger/R$string;->Gift2ActionTitleTo:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2161
    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->hasPhoto(Lorg/telegram/tgnet/TLObject;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2162
    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2163
    new-instance v2, Lorg/telegram/ui/AvatarSpan;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    const/high16 v6, 0x41900000    # 18.0f

    invoke-direct {v2, v0, v3, v6}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    .line 2164
    invoke-virtual {v2, v8}, Lorg/telegram/ui/AvatarSpan;->setObject(Lorg/telegram/tgnet/TLObject;)V

    .line 2165
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v10, 0x21

    invoke-virtual {v11, v2, v3, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2167
    :cond_22
    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_d

    :cond_23
    if-eqz v9, :cond_25

    .line 2169
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift_num:I

    if-lez v2, :cond_24

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v2, :cond_24

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 2170
    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift_num:I

    int-to-long v14, v3

    const/16 v3, 0x2c

    invoke-static {v14, v15, v3}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_d

    .line 2172
    :cond_24
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionSelfTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_d

    .line 2175
    :cond_25
    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->prepaid_upgrade:Z

    if-eqz v8, :cond_26

    sget v8, Lorg/telegram/messenger/R$string;->Gift2ActionUpgradeTitle:I

    goto :goto_c

    :cond_26
    sget v8, Lorg/telegram/messenger/R$string;->Gift2ActionTitle:I

    :goto_c
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2176
    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->hasPhoto(Lorg/telegram/tgnet/TLObject;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2177
    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2178
    new-instance v2, Lorg/telegram/ui/AvatarSpan;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    const/high16 v8, 0x41900000    # 18.0f

    invoke-direct {v2, v0, v3, v8}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    .line 2179
    invoke-virtual {v2, v6}, Lorg/telegram/ui/AvatarSpan;->setObject(Lorg/telegram/tgnet/TLObject;)V

    .line 2180
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/16 v10, 0x21

    invoke-virtual {v11, v2, v3, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2182
    :cond_27
    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2184
    :goto_d
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->stargiftsConvertPeriodMax:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v3, v6

    sub-int/2addr v2, v3

    .line 2185
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz v9, :cond_29

    :cond_28
    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    if-nez v3, :cond_2a

    :cond_29
    iget-wide v14, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    cmp-long v3, v14, v16

    if-lez v3, :cond_2a

    if-lez v2, :cond_2a

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->refunded:Z

    if-nez v2, :cond_2a

    move/from16 v2, v18

    goto :goto_e

    :cond_2a
    const/4 v2, 0x0

    .line 2187
    :goto_e
    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->refunded:Z

    if-eqz v3, :cond_2b

    .line 2188
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionConvertRefundedText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10

    .line 2189
    :cond_2b
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v3, :cond_2c

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 2190
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2191
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2192
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/16 v30, 0x1

    const/16 v31, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    invoke-static/range {v26 .. v31}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 2193
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2194
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v2

    goto/16 :goto_10

    .line 2195
    :cond_2c
    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->auction_acquired:Z

    if-eqz v3, :cond_2d

    .line 2196
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionWonActionText:I

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    add-long/2addr v6, v8

    const/16 v3, 0x2c

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v3

    move/from16 v6, v18

    new-array v7, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v3, v7, v19

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10

    .line 2197
    :cond_2d
    const-string v3, "Gift2ActionConvertedInfo"

    if-eqz v7, :cond_30

    .line 2198
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    if-eqz v6, :cond_2e

    long-to-int v2, v12

    .line 2199
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10

    :cond_2e
    if-eqz v2, :cond_2f

    cmp-long v2, v12, v16

    if-lez v2, :cond_2f

    .line 2201
    const-string v2, "Gift2ActionInfoChannel"

    long-to-int v3, v12

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_10

    .line 2203
    :cond_2f
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionInfoChannelNoConvert:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_10

    :cond_30
    if-eqz v9, :cond_33

    .line 2206
    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    if-eqz v2, :cond_31

    cmp-long v2, v12, v16

    if-lez v2, :cond_31

    long-to-int v2, v12

    .line 2207
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10

    .line 2208
    :cond_31
    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->can_upgrade:Z

    if-eqz v2, :cond_32

    .line 2209
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionSelfInfoUpgrade:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_10

    .line 2211
    :cond_32
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionSelfInfoNoConvert:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_10

    :cond_33
    if-eqz v4, :cond_35

    .line 2214
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_34

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionUpgradeOut:I

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v3, v7, v19

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_34
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionUpgrade:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_f
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_10

    .line 2215
    :cond_35
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-eqz v6, :cond_38

    if-eqz v2, :cond_36

    cmp-long v2, v12, v16

    if-lez v2, :cond_36

    long-to-int v2, v12

    .line 2217
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v3, v7, v19

    const-string v3, "Gift2ActionOutInfo"

    invoke-static {v3, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_10

    .line 2218
    :cond_36
    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->can_upgrade:Z

    if-eqz v2, :cond_37

    .line 2219
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionOutInfoUpgrade:I

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v3, v7, v19

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_10

    :cond_37
    const/4 v6, 0x1

    const/16 v19, 0x0

    .line 2221
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionOutInfoNoConvert:I

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v3, v7, v19

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_10

    .line 2224
    :cond_38
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    if-eqz v6, :cond_39

    long-to-int v2, v12

    .line 2225
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    .line 2226
    :cond_39
    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved:Z

    if-eqz v3, :cond_3b

    if-nez v2, :cond_3a

    .line 2228
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionBotSavedInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    .line 2230
    :cond_3a
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionSavedInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_3b
    if-nez v2, :cond_3c

    .line 2233
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionBotInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    .line 2235
    :cond_3c
    const-string v2, "Gift2ActionInfo"

    long-to-int v3, v12

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 2239
    :goto_10
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v3, :cond_3e

    iget-boolean v6, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v6, :cond_3e

    .line 2240
    sget v6, Lorg/telegram/messenger/R$string;->Gift2Limited1OfRibbon:I

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    const/16 v7, 0x5dc

    if-le v3, v7, :cond_3d

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v3

    :goto_11
    const/4 v8, 0x1

    goto :goto_12

    :cond_3d
    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_11

    :goto_12
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v3, v9, v7

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_13

    :cond_3e
    const/4 v8, 0x0

    .line 2242
    :goto_13
    sget v3, Lorg/telegram/messenger/R$string;->ActionGiftStarsView:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2243
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-eqz v6, :cond_3f

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->forceIn:Z

    if-nez v6, :cond_3f

    if-eqz v4, :cond_40

    .line 2244
    :cond_3f
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-nez v1, :cond_40

    if-eqz v4, :cond_40

    .line 2245
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2246
    const-string v1, "^  "

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2247
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->gift_unpack:I

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v4, 0x3f4ccccd    # 0.8f

    .line 2248
    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x21

    .line 2249
    invoke-virtual {v3, v1, v7, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2250
    sget v1, Lorg/telegram/messenger/R$string;->Gift2Unpack:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_40
    move-object v6, v3

    .line 2255
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v1, :cond_41

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->released_by:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_41

    .line 2256
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->released_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 2258
    sget v3, Lorg/telegram/messenger/R$string;->Gift2ActionReleasedBy:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v1, v5, v19

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lorg/telegram/ui/Stars/StarGiftSheet;->replaceSingleTagToLink(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    move-object v3, v14

    goto :goto_14

    :cond_41
    const/4 v3, 0x0

    .line 2261
    :goto_14
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x1

    move-object v1, v11

    const/4 v11, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xb

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    goto/16 :goto_2d

    .line 2271
    :cond_42
    instance-of v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;

    if-eqz v1, :cond_43

    .line 2272
    sget v1, Lorg/telegram/messenger/R$string;->ActionGiftTonTitle:I

    .line 2273
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftStarsView:I

    .line 2276
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    .line 2272
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    const/4 v7, 0x0

    .line 2281
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 2282
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2283
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2284
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2285
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    goto/16 :goto_2d

    .line 2287
    :cond_43
    sget v1, Lorg/telegram/messenger/R$string;->ActionStarGiveawayPrizeTitle:I

    .line 2288
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftStarsView:I

    .line 2291
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    .line 2287
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    const/4 v7, 0x0

    .line 2296
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 2297
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2298
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2299
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2300
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    goto/16 :goto_2d

    :cond_44
    move-wide/from16 v16, v2

    move/from16 v23, v15

    const/high16 v22, 0x41500000    # 13.0f

    .line 2302
    const-string v2, "\n\n"

    const/16 v3, 0x21

    if-ne v7, v3, :cond_49

    .line 2303
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;

    .line 2305
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2306
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2307
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;->accepted:Z

    if-eqz v2, :cond_45

    .line 2308
    sget v1, Lorg/telegram/messenger/R$string;->GiftOfferStatusAccepted:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_16

    .line 2309
    :cond_45
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;->declined:Z

    if-eqz v2, :cond_46

    .line 2310
    sget v1, Lorg/telegram/messenger/R$string;->GiftOfferStatusRejected:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_16

    .line 2312
    :cond_46
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;->expires_at:I

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v6, 0x0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v1, :cond_47

    .line 2314
    sget v1, Lorg/telegram/messenger/R$string;->GiftOfferStatusExpired:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_16

    .line 2316
    :cond_47
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->formatShortDuration2(I)Ljava/lang/String;

    move-result-object v1

    .line 2317
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2318
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_48
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2320
    :goto_15
    sget v2, Lorg/telegram/messenger/R$string;->GiftOfferStatusPending:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2324
    :goto_16
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    const/4 v7, 0x0

    .line 2328
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 2329
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2330
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2331
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2332
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 2333
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectEmpty:Z

    goto/16 :goto_2d

    :cond_49
    const/16 v3, 0x22

    if-ne v7, v3, :cond_4a

    .line 2335
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    const/4 v7, 0x0

    .line 2339
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 2340
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2341
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2342
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2343
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    const/4 v6, 0x1

    .line 2344
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectEmpty:Z

    goto/16 :goto_2d

    :cond_4a
    const/16 v3, 0x23

    if-ne v7, v3, :cond_4f

    .line 2346
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;

    .line 2348
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2349
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    .line 2350
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->new_value:Z

    if-eqz v6, :cond_4c

    .line 2351
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2352
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferDisableHeaderYou:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    .line 2353
    :cond_4b
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferDisableHeaderOther:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v5, v7, v19

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 2351
    :goto_17
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_19

    .line 2355
    :cond_4c
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2356
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferEnableHeaderYou:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 2357
    :cond_4d
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferEnableHeaderOther:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v5, v7, v19

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 2355
    :goto_18
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2360
    :goto_19
    iget-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->new_value:Z

    if-eqz v1, :cond_4e

    .line 2361
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2362
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferDisable1:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->createOption(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2363
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2364
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferDisable2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->createOption(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2365
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2366
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferDisable3:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->createOption(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2367
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2368
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferDisable4:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->createOption(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1a

    .line 2370
    :cond_4e
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2371
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferEnable1:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->createOption(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2372
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2373
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferEnable2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->createOption(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2374
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2375
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferEnable3:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->createOption(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2376
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2377
    sget v1, Lorg/telegram/messenger/R$string;->SharingOfferEnable4:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->createOption(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2380
    :goto_1a
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    const/4 v7, 0x0

    .line 2384
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 2385
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2386
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2387
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2388
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    const/4 v6, 0x1

    .line 2389
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectEmpty:Z

    goto/16 :goto_2d

    :cond_4f
    const/16 v2, 0x1f

    if-ne v7, v2, :cond_51

    .line 2391
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    .line 2392
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    .line 2393
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 2394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v4, v2

    const/16 v2, 0x2c

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2396
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v3

    .line 2397
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_50

    .line 2400
    sget v1, Lorg/telegram/messenger/R$string;->GiftThemesSetByYou:I

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v2, v3, v19

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_50
    const/4 v6, 0x1

    const/16 v19, 0x0

    .line 2401
    sget v1, Lorg/telegram/messenger/R$string;->GiftThemesSetByOther:I

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    .line 2402
    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v3

    move/from16 v4, v23

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v19

    aput-object v2, v4, v6

    .line 2401
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2405
    :goto_1b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget v1, Lorg/telegram/messenger/R$string;->GiftThemesSetActionView:I

    .line 2406
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    .line 2404
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    const/4 v7, 0x0

    .line 2408
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 2409
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2410
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2411
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2412
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    goto/16 :goto_2d

    :cond_51
    const/16 v2, 0x12

    if-ne v7, v2, :cond_57

    .line 2416
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    if-eqz v3, :cond_52

    .line 2417
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_1c

    .line 2418
    :cond_52
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    if-eqz v3, :cond_53

    .line 2419
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    goto :goto_1c

    :cond_53
    const/4 v2, 0x0

    :goto_1c
    if-eqz v2, :cond_54

    .line 2422
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 2423
    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2424
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2425
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 2426
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v3, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2427
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v14

    goto :goto_1d

    :cond_54
    const/4 v14, 0x0

    :goto_1d
    if-nez v14, :cond_55

    .line 2430
    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftPremiumText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_55
    move-object v4, v14

    .line 2432
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isGiftCode()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isSelfGiftCode()Z

    move-result v2

    if-nez v2, :cond_56

    sget v2, Lorg/telegram/messenger/R$string;->GiftPremiumUseGiftBtn:I

    goto :goto_1e

    :cond_56
    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftPremiumView:I

    :goto_1e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2433
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    const-string v2, "ActionGiftPremiumTitle2"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    goto/16 :goto_2d

    :cond_57
    const/16 v2, 0x15

    if-ne v7, v2, :cond_60

    .line 2435
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    .line 2437
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    if-eqz v4, :cond_58

    goto :goto_1f

    :cond_58
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    move-wide/from16 v16, v4

    :goto_1f
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2438
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-nez v4, :cond_5a

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v4, :cond_59

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v4, :cond_59

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_20

    :cond_59
    const/4 v4, 0x0

    goto :goto_21

    :cond_5a
    :goto_20
    const/4 v4, 0x1

    .line 2439
    :goto_21
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    iget-wide v7, v7, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_5c

    .line 2440
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v4, :cond_5b

    .line 2442
    sget v3, Lorg/telegram/messenger/R$string;->ActionSuggestVideoFromYouDescription:I

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v1, v4, v19

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_5b
    const/4 v6, 0x1

    const/16 v19, 0x0

    .line 2444
    sget v3, Lorg/telegram/messenger/R$string;->ActionSuggestPhotoFromYouDescription:I

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v19

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_22
    move-object v4, v1

    goto :goto_23

    :cond_5c
    const/4 v6, 0x1

    const/16 v19, 0x0

    if-eqz v4, :cond_5d

    .line 2448
    sget v1, Lorg/telegram/messenger/R$string;->ActionSuggestVideoToYouDescription:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v19

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 2450
    :cond_5d
    sget v1, Lorg/telegram/messenger/R$string;->ActionSuggestPhotoToYouDescription:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v19

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 2454
    :goto_23
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-nez v1, :cond_5f

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5e

    goto :goto_25

    .line 2457
    :cond_5e
    sget v1, Lorg/telegram/messenger/R$string;->ViewPhotoAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_24
    move-object v6, v1

    goto :goto_26

    .line 2455
    :cond_5f
    :goto_25
    sget v1, Lorg/telegram/messenger/R$string;->ViewVideoAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    .line 2459
    :goto_26
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    const/4 v7, 0x0

    .line 2460
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 2461
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2462
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2463
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2464
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    goto/16 :goto_2d

    :cond_60
    const/16 v2, 0x16

    if-ne v7, v2, :cond_65

    .line 2466
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-eqz v3, :cond_61

    move-wide/from16 v3, v16

    goto :goto_27

    :cond_61
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    :goto_27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 2470
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    cmp-long v3, v3, v16

    if-gez v3, :cond_62

    .line 2471
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    :goto_28
    move-object v4, v1

    const/4 v6, 0x0

    :goto_29
    const/4 v10, 0x1

    goto :goto_2a

    .line 2472
    :cond_62
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isWallpaperForBoth()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isCurrentWallpaper()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2473
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 2474
    sget v2, Lorg/telegram/messenger/R$string;->RemoveWallpaperAction:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    move-object v6, v2

    const/4 v10, 0x0

    goto :goto_2a

    :cond_63
    if-eqz v2, :cond_64

    .line 2476
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_64

    .line 2477
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_28

    .line 2479
    :cond_64
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 2480
    sget v2, Lorg/telegram/messenger/R$string;->ViewWallpaperAction:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    move-object v6, v2

    goto :goto_29

    .line 2482
    :goto_2a
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    const/4 v7, 0x0

    .line 2483
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 2484
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2485
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2486
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2487
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    goto/16 :goto_2d

    .line 2488
    :cond_65
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 2489
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 2493
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v3, :cond_66

    .line 2494
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2495
    sget v2, Lorg/telegram/messenger/R$string;->StoryYouMentionedTitle:I

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v1, v3, v19

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    :goto_2b
    move-object v4, v1

    goto :goto_2c

    :cond_66
    const/4 v6, 0x1

    const/16 v19, 0x0

    .line 2497
    sget v1, Lorg/telegram/messenger/R$string;->StoryMentionedTitle:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v19

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_2b

    .line 2499
    :goto_2c
    sget v1, Lorg/telegram/messenger/R$string;->StoryMentionedAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2501
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Cells/ChatActionCell;->createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V

    const/4 v7, 0x0

    .line 2502
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    .line 2503
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 2504
    iput-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 2505
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 2506
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 2509
    :cond_67
    :goto_2d
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    .line 2510
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->measure(II)V

    return-void
.end method

.method private checkBotButtonMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 3637
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3641
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 3644
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 3645
    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    iget v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    add-int/2addr v5, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    .line 3646
    iget v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    .line 3647
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v4

    .line 3650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v8, 0x1

    const/4 v9, -0x1

    if-nez v4, :cond_3

    .line 3651
    iput v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedBotButton:I

    move p1, v1

    .line 3653
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_8

    .line 3654
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/BotButton;

    .line 3656
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v7

    int-to-float v10, p1

    mul-float/2addr v9, v10

    add-float/2addr v9, v3

    add-float v10, v9, v7

    .line 3658
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v12, v4, Lorg/telegram/ui/Cells/BotButton;->height:I

    int-to-float v12, v12

    add-float/2addr v12, v5

    invoke-virtual {v11, v9, v5, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float v9, v0

    int-to-float v10, v2

    .line 3659
    invoke-virtual {v11, v9, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3660
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedBotButton:I

    .line 3661
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateOutbounds()V

    .line 3663
    iget-object p1, v4, Lorg/telegram/ui/Cells/BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 3664
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackgroundSelector:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedColor(I)I

    move-result p1

    const/4 v0, 0x6

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v4, Lorg/telegram/ui/Cells/BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 3665
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3667
    :cond_1
    iget-object p1, v4, Lorg/telegram/ui/Cells/BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3668
    iget-object p1, v4, Lorg/telegram/ui/Cells/BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedState:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3669
    iget-boolean p1, v4, Lorg/telegram/ui/Cells/BotButton;->isLocked:Z

    xor-int/2addr p1, v8

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Cells/BotButton;->setPressed(Z)V

    return v8

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3673
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 3674
    iget p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedBotButton:I

    if-eq p1, v9, :cond_8

    .line 3675
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 3676
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtons:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedBotButton:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/BotButton;

    .line 3677
    iget-object v0, p1, Lorg/telegram/ui/Cells/BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 3678
    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3680
    :cond_4
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/BotButton;->setPressed(Z)V

    .line 3681
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lorg/telegram/ui/Cells/BotButton;->isLocked:Z

    if-nez v0, :cond_5

    .line 3682
    iget-object p1, p1, Lorg/telegram/ui/Cells/BotButton;->buttonCustom:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    if-eqz p1, :cond_5

    .line 3683
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->didPressCustomBotButton(Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V

    .line 3686
    :cond_5
    iput v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedBotButton:I

    .line 3687
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateOutbounds()V

    return v1

    .line 3689
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 3690
    iget p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedBotButton:I

    if-eq p1, v9, :cond_8

    .line 3691
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/BotButton;

    .line 3692
    iget-object v0, p1, Lorg/telegram/ui/Cells/BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 3693
    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3695
    :cond_7
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/BotButton;->setPressed(Z)V

    .line 3696
    iput v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedBotButton:I

    .line 3697
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateOutbounds()V

    :cond_8
    return v1
.end method

.method private checkLeftRightBounds()V
    .locals 2

    .line 3257
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundLeft:I

    .line 3258
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRight:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRight:I

    return-void
.end method

.method private createGiftPremiumChannelLayouts()V
    .locals 14

    .line 2525
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 2526
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v5, v0, v1

    .line 2527
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2528
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2529
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    .line 2530
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    .line 2531
    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->boost_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    const/4 v10, 0x0

    if-nez v2, :cond_0

    move-object v2, v10

    goto :goto_0

    .line 2532
    :cond_0
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 2533
    :goto_0
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->via_giveaway:Z

    .line 2534
    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->unclaimed:Z

    if-eqz v4, :cond_1

    .line 2535
    const-string v4, "BoostingUnclaimedPrize"

    sget v6, Lorg/telegram/messenger/R$string;->BoostingUnclaimedPrize:I

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2536
    :cond_1
    const-string v4, "BoostingCongratulations"

    sget v6, Lorg/telegram/messenger/R$string;->BoostingCongratulations:I

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/16 v6, 0xc

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v1, v6, :cond_2

    .line 2538
    const-string v1, "BoldYears"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v1, v11, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v6, "BoldMonths"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2539
    :goto_2
    const-string v6, "\n\n"

    if-eqz v3, :cond_4

    .line 2540
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->unclaimed:Z

    if-eqz v0, :cond_3

    .line 2541
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingYouHaveUnclaimedPrize:I

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v12

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2542
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2543
    sget v2, Lorg/telegram/messenger/R$string;->BoostingUnclaimedPrizeDuration:I

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v12

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 2545
    :cond_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingReceivedPrizeFrom:I

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v12

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2546
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2547
    sget v2, Lorg/telegram/messenger/R$string;->BoostingReceivedPrizeDuration:I

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v12

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 2550
    :cond_4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_5

    sget v2, Lorg/telegram/messenger/R$string;->BoostingReceivedGiftNoName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->BoostingReceivedGiftFrom:I

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v12

    const-string v2, "BoostingReceivedGiftFrom"

    invoke-static {v2, v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2551
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2552
    sget v2, Lorg/telegram/messenger/R$string;->BoostingReceivedGiftDuration:I

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v12

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2555
    :goto_4
    const-string v1, "BoostingReceivedGiftOpenBtn"

    sget v2, Lorg/telegram/messenger/R$string;->BoostingReceivedGiftOpenBtn:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2557
    invoke-static {v4}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 2558
    new-instance v2, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v13, 0x21

    invoke-virtual {v3, v2, v12, v4, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2559
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v7, 0x3f8ccccd    # 1.1f

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    .line 2560
    iput-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    .line 2561
    iput-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumReleasedText:Lorg/telegram/ui/Components/Text;

    .line 2563
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v2, :cond_6

    .line 2564
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->detach()V

    .line 2566
    :cond_6
    new-instance v2, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    .line 2567
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0, v3, v5}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->setText(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    .line 2568
    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 2569
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v0, v12, v1, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2570
    iput-boolean v12, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    .line 2571
    iput v12, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsedHeight:I

    .line 2572
    iput-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMore:Lorg/telegram/ui/Components/Text;

    .line 2574
    new-instance v2, Landroid/text/StaticLayout;

    const-string v0, "paintChatActionText"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/text/TextPaint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    .line 2575
    iput-boolean v11, p0, Lorg/telegram/ui/Cells/ChatActionCell;->buttonClickableAsImage:Z

    .line 2576
    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->measureLayoutWidth(Landroid/text/Layout;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    return-void
.end method

.method private createGiftPremiumLayouts(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ILjava/lang/CharSequence;IZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    const/high16 v4, 0x41800000    # 16.0f

    .line 2580
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, p9, v5

    .line 2581
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v7, 0x1e

    if-eqz v6, :cond_0

    iget v6, v6, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v6, v7, :cond_0

    .line 2582
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    :cond_0
    move v11, v5

    const/16 v5, 0x21

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    .line 2585
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_1

    iget v9, v9, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v9, v7, :cond_1

    .line 2586
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 2588
    :cond_1
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2590
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 2591
    new-instance v4, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v4, v8, v10, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v4, v8

    .line 2592
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    goto :goto_1

    :cond_2
    move v4, v8

    .line 2594
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    :goto_1
    const/high16 v16, 0x41500000    # 13.0f

    if-eqz p2, :cond_3

    .line 2597
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2598
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    goto :goto_2

    .line 2600
    :cond_3
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    :goto_2
    if-eqz v1, :cond_4

    .line 2603
    new-instance v8, Lorg/telegram/ui/Components/Text;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-direct {v8, v1, v9}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumReleasedText:Lorg/telegram/ui/Components/Text;

    .line 2604
    iget-object v1, v8, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    const/4 v8, -0x1

    iput v8, v1, Landroid/text/TextPaint;->linkColor:I

    goto :goto_3

    .line 2606
    :cond_4
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumReleasedText:Lorg/telegram/ui/Components/Text;

    .line 2608
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_5

    iget v8, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0x23

    if-ne v8, v9, :cond_5

    .line 2609
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    const v7, 0x4164cccd    # 14.3f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_7

    .line 2610
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v1, v7, :cond_6

    const/16 v7, 0x12

    if-eq v1, v7, :cond_6

    const/16 v7, 0x1f

    if-eq v1, v7, :cond_6

    if-ne v1, v5, :cond_7

    .line 2611
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4

    .line 2613
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_4
    const/high16 v1, 0x41400000    # 12.0f

    .line 2615
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v11, v1

    .line 2616
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/high16 v16, 0x40a00000    # 5.0f

    if-eqz v7, :cond_8

    iget v8, v7, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0x16

    if-ne v8, v9, :cond_8

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_8

    .line 2617
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v7

    if-ge v7, v1, :cond_8

    int-to-float v8, v7

    int-to-float v9, v1

    div-float v9, v9, v16

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    move v1, v7

    :cond_8
    const/4 v7, 0x1

    if-nez v2, :cond_a

    .line 2623
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v1, :cond_9

    .line 2624
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->detach()V

    .line 2625
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    .line 2627
    :cond_9
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    goto/16 :goto_6

    .line 2629
    :cond_a
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-nez v8, :cond_b

    .line 2630
    new-instance v8, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    .line 2633
    :cond_b
    :try_start_0
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v2, v8, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2636
    :catch_0
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v2, v9, v1}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->setText(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    const/4 v8, 0x2

    if-eqz p5, :cond_c

    .line 2637
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v9, v9, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_c

    .line 2638
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextUncollapsed:Z

    xor-int/2addr v9, v7

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    .line 2639
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v9, v9, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsedHeight:I

    .line 2640
    new-instance v9, Lorg/telegram/ui/Components/Text;

    sget v10, Lorg/telegram/messenger/R$string;->Gift2CaptionMore:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v12, v13

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-direct {v9, v10, v12, v13}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMore:Lorg/telegram/ui/Components/Text;

    .line 2641
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v9, v9, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreY:I

    .line 2642
    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v10, v10, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreH:I

    .line 2643
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v9, v9, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreX:I

    goto :goto_5

    .line 2645
    :cond_c
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    .line 2646
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v9, v7, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 2647
    iput v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsedHeight:I

    .line 2649
    :goto_5
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    if-eqz v9, :cond_e

    .line 2650
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v9, v9, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    sub-int/2addr v8, v7

    .line 2651
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-ltz v8, :cond_d

    invoke-interface {v2, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_d
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v2, v8, v1}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->setText(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    :cond_e
    :goto_6
    if-eqz p6, :cond_10

    .line 2655
    invoke-static/range {p6 .. p6}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 2656
    new-instance v1, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v9, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2657
    new-instance v8, Landroid/text/StaticLayout;

    const-string v1, "paintChatActionText"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/text/TextPaint;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz p10, :cond_f

    .line 2658
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    if-nez v1, :cond_f

    goto :goto_7

    :cond_f
    move v7, v4

    :goto_7
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->buttonClickableAsImage:Z

    .line 2659
    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/ChatActionCell;->measureLayoutWidth(Landroid/text/Layout;)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    goto :goto_8

    .line 2661
    :cond_10
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    .line 2662
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->buttonClickableAsImage:Z

    const/4 v1, 0x0

    .line 2663
    iput v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    :goto_8
    if-eqz v3, :cond_13

    .line 2666
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPaintEffect:Landroid/graphics/CornerPathEffect;

    if-nez v1, :cond_11

    .line 2667
    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPaintEffect:Landroid/graphics/CornerPathEffect;

    .line 2669
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPath:Landroid/graphics/Path;

    if-nez v1, :cond_12

    .line 2670
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPath:Landroid/graphics/Path;

    const v2, 0x3faccccd    # 1.35f

    .line 2671
    invoke-static {v1, v2, v4}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->fillRibbonPath(Landroid/graphics/Path;FZ)V

    .line 2673
    :cond_12
    new-instance v1, Lorg/telegram/ui/Components/Text;

    move/from16 v2, p7

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonText:Lorg/telegram/ui/Components/Text;

    const/high16 v2, 0x42780000    # 62.0f

    .line 2674
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    goto :goto_9

    .line 2676
    :cond_13
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPath:Landroid/graphics/Path;

    .line 2677
    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonText:Lorg/telegram/ui/Components/Text;

    :goto_9
    return-void
.end method

.method private createLayout(Ljava/lang/CharSequence;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/high16 v0, 0x41f00000    # 30.0f

    .line 1685
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p2, v0

    .line 1686
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;->isSideMenued:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x42800000    # 64.0f

    .line 1687
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1689
    :cond_0
    invoke-direct {v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1690
    iget-boolean v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;->isSideMenued:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x41e00000    # 28.0f

    goto :goto_0

    :cond_1
    const/high16 v3, 0x42a40000    # 82.0f

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    const/high16 v3, 0x43880000    # 272.0f

    .line 1691
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    if-gez v0, :cond_3

    goto/16 :goto_d

    .line 1696
    :cond_3
    iget v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;->overriddenMaxWidth:I

    if-lez v3, :cond_4

    .line 1697
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    move v9, v0

    const/4 v0, 0x1

    .line 1699
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    .line 1701
    invoke-direct {v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_5

    iget v4, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x22

    if-eq v4, v5, :cond_7

    const/16 v5, 0x23

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 1703
    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->drawServiceWithDefaultTypeface:Z

    if-eqz v3, :cond_6

    .line 1704
    const-string v3, "paintChatActionText2"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    :goto_1
    move-object v10, v3

    goto :goto_3

    .line 1706
    :cond_6
    const-string v3, "paintChatActionText"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    goto :goto_1

    .line 1702
    :cond_7
    :goto_2
    const-string v3, "paintChatActionText3"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    goto :goto_1

    .line 1708
    :goto_3
    invoke-virtual {v10}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iput v3, v10, Landroid/text/TextPaint;->linkColor:I

    .line 1710
    invoke-direct {v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_9

    .line 1711
    instance-of v3, v2, Landroid/text/Spannable;

    if-eqz v3, :cond_8

    .line 1712
    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    .line 1713
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v3, v11, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 1714
    array-length v5, v4

    move v6, v11

    :goto_4
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 1715
    invoke-interface {v3, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1719
    :cond_8
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const v7, 0x3f59999a    # 0.85f

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[IIFI)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v3, v2

    goto :goto_5

    :cond_9
    move-object/from16 v3, p1

    .line 1723
    :goto_5
    new-instance v2, Landroid/text/StaticLayout;

    .line 1724
    invoke-direct {v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_6
    move-object v6, v4

    goto :goto_7

    :cond_a
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_6

    :goto_7
    const/4 v8, 0x0

    move v5, v9

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v4, v10

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v10, v3

    iput-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    .line 1727
    iput-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 1729
    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    if-eqz v3, :cond_b

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->rejected:Z

    if-nez v3, :cond_b

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->balance_too_low:Z

    if-nez v2, :cond_b

    .line 1735
    sget v2, Lorg/telegram/messenger/R$string;->SuggestionAgreementReached:I

    .line 1736
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    .line 1737
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1735
    invoke-static/range {v12 .. v18}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[IIFI)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1739
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    .line 1742
    :cond_b
    iget-boolean v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    if-eqz v2, :cond_c

    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v0

    goto :goto_8

    :cond_c
    move v2, v11

    :goto_8
    iget-object v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    new-array v0, v0, [Landroid/text/Layout;

    aput-object v4, v0, v11

    invoke-static {v11, v1, v2, v3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 1744
    iput v11, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 1745
    iput v11, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 1746
    iput v11, v1, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 1747
    iget-object v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_d

    .line 1748
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    const/high16 v2, 0x41400000    # 12.0f

    .line 1749
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    .line 1752
    :cond_d
    iget-object v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_e

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z

    if-nez v0, :cond_10

    .line 1754
    :cond_e
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    if-ge v11, v0, :cond_10

    .line 1758
    :try_start_1
    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v5

    cmpl-float v4, v2, v3

    if-lez v4, :cond_f

    move v2, v3

    .line 1762
    :cond_f
    iget v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    int-to-double v3, v3

    iget-object v6, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v11}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1767
    :try_start_2
    iget v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    int-to-double v3, v3

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 1764
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_d

    .line 1770
    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1773
    :cond_10
    iget v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    const/high16 v0, 0x40e00000    # 7.0f

    .line 1774
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 1776
    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_11

    .line 1777
    iget v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 1780
    :cond_11
    invoke-direct {v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    :goto_b
    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_b

    :goto_c
    iput v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    sub-int v0, p2, v5

    .line 1781
    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->titleXLeft:I

    .line 1783
    iget-object v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->spoilersPool:Ljava/util/Stack;

    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1784
    iget-object v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1785
    instance-of v0, v10, Landroid/text/Spannable;

    if-eqz v0, :cond_13

    .line 1786
    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    iget v3, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    iget v0, v1, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int v4, v3, v0

    move-object v5, v10

    check-cast v5, Landroid/text/Spannable;

    iget-object v6, v1, Lorg/telegram/ui/Cells/ChatActionCell;->spoilersPool:Ljava/util/Stack;

    iget-object v7, v1, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_13
    :goto_d
    return-void
.end method

.method private createOption(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 8

    .line 2514
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v4, v1

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v5, v1

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    move-object v2, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFFFI)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2515
    const-string p1, "*"

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2516
    new-instance p1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v1, 0x1

    const/16 v2, 0x21

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2517
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_0

    .line 2518
    invoke-static {}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticApiModelOutline1;->m()V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/text/style/LineHeightSpan$Standard;

    move-result-object p1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2520
    :cond_0
    new-instance p1, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct {p1, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private didPressCustomBotButton(Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V
    .locals 9

    .line 3704
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3708
    :cond_0
    iget p1, p1, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;->id:I

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 3709
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_b

    .line 3710
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_b

    .line 3711
    sget p1, Lorg/telegram/messenger/R$string;->GiftOfferRejectConfirmTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lorg/telegram/messenger/R$string;->GiftOfferRejectConfirmText:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3712
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget p1, Lorg/telegram/messenger/R$string;->GiftOfferRejectConfirmConfirm:I

    .line 3713
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0, v2}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v6, 0x1

    .line 3711
    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleConfirmAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 3732
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;

    if-eqz v0, :cond_b

    .line 3733
    move-object v8, p1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;

    .line 3734
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Stars/GiftOfferSheet;->openOfferAcceptAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IJILorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;)V

    return-void

    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 3737
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    :cond_4
    move-object v2, v1

    if-eqz v2, :cond_b

    .line 3738
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;

    if-eqz v0, :cond_b

    .line 3739
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;

    .line 3740
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->prev_value:Z

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferDisableCancelTitle:I

    goto :goto_0

    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferEnableCancelTitle:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3741
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->prev_value:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferDisableCancelText:I

    goto :goto_1

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferEnableCancelText:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferCancelYes:I

    .line 3742
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;)V

    const/4 v6, 0x0

    .line 3740
    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleConfirmAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 3746
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    :cond_8
    move-object v2, v1

    if-eqz v2, :cond_b

    .line 3747
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;

    if-eqz v0, :cond_b

    .line 3748
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;

    .line 3749
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->new_value:Z

    if-eqz v0, :cond_9

    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferDisableCancelTitle:I

    goto :goto_2

    :cond_9
    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferEnableCancelTitle:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3750
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->new_value:Z

    if-eqz v0, :cond_a

    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferDisableConfirmText:I

    goto :goto_3

    :cond_a
    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferEnableConfirmText:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->SharingOfferCancelYes:I

    .line 3751
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;)V

    const/4 v6, 0x0

    .line 3749
    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleConfirmAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_b
    :goto_4
    return-void
.end method

.method private drawBotButtons(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_c

    .line 3556
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    .line 3560
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v3, :cond_1

    .line 3561
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-interface {v3, v5, v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_0

    .line 3563
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v3, v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 3566
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 3567
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v6, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    add-int/2addr v6, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 3568
    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    .line 3569
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v5

    const/4 v9, 0x0

    .line 3571
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_c

    .line 3572
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Cells/BotButton;

    .line 3573
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/BotButton;->getPressScale()F

    move-result v11

    .line 3575
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v7

    int-to-float v13, v9

    mul-float/2addr v12, v13

    add-float/2addr v12, v3

    add-float v13, v12, v7

    .line 3579
    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    iget v15, v10, Lorg/telegram/ui/Cells/BotButton;->height:I

    int-to-float v15, v15

    add-float/2addr v15, v6

    invoke-virtual {v14, v12, v6, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3580
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v15, v11, v14

    if-eqz v15, :cond_2

    .line 3582
    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    move/from16 v16, v4

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v11, v11, v15, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2

    :cond_2
    move/from16 v16, v4

    .line 3584
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonRadii:[F

    sget v11, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v11, v11

    const/high16 v15, 0x40d80000    # 6.75f

    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([FF)V

    const/16 v4, 0x9

    .line 3585
    invoke-virtual {v10, v4}, Lorg/telegram/ui/Cells/BotButton;->hasPositionFlag(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3586
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonRadii:[F

    sget v11, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/4 v15, 0x7

    aput v11, v4, v15

    const/4 v15, 0x6

    aput v11, v4, v15

    :cond_3
    const/16 v4, 0xa

    .line 3588
    invoke-virtual {v10, v4}, Lorg/telegram/ui/Cells/BotButton;->hasPositionFlag(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3589
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonRadii:[F

    sget v11, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/4 v15, 0x5

    aput v11, v4, v15

    const/4 v15, 0x4

    aput v11, v4, v15

    .line 3592
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 3593
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonPath:Landroid/graphics/Path;

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonRadii:[F

    move/from16 v17, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v11, v15, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 3595
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonPath:Landroid/graphics/Path;

    const-string v5, "paintChatActionBackground"

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3596
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3597
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonPath:Landroid/graphics/Path;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3600
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3601
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtonPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3603
    iget-object v4, v10, Lorg/telegram/ui/Cells/BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0xff

    if-eqz v4, :cond_6

    float-to-int v11, v12

    float-to-int v15, v6

    float-to-int v13, v13

    .line 3604
    iget v8, v10, Lorg/telegram/ui/Cells/BotButton;->height:I

    add-int/2addr v8, v15

    invoke-virtual {v4, v11, v15, v13, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3605
    iget-object v4, v10, Lorg/telegram/ui/Cells/BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3606
    iget-object v4, v10, Lorg/telegram/ui/Cells/BotButton;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3608
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3610
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3612
    iget-object v4, v10, Lorg/telegram/ui/Cells/BotButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 3613
    :goto_3
    iget-object v8, v10, Lorg/telegram/ui/Cells/BotButton;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v8

    iget-object v11, v10, Lorg/telegram/ui/Cells/BotButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    int-to-float v11, v11

    add-float/2addr v8, v11

    sub-float v8, v7, v8

    int-to-float v11, v4

    sub-float/2addr v8, v11

    div-float v8, v8, v17

    add-float/2addr v12, v8

    .line 3614
    iget-object v8, v10, Lorg/telegram/ui/Cells/BotButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    float-to-int v13, v12

    .line 3615
    iget v15, v10, Lorg/telegram/ui/Cells/BotButton;->height:I

    const/high16 v18, 0x41c00000    # 24.0f

    .line 3617
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    sub-int v15, v15, v19

    int-to-float v15, v15

    div-float v15, v15, v17

    add-float/2addr v15, v6

    float-to-int v15, v15

    .line 3618
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    add-int v5, v13, v19

    iget v14, v10, Lorg/telegram/ui/Cells/BotButton;->height:I

    .line 3619
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    sub-int v14, v14, v20

    int-to-float v14, v14

    div-float v14, v14, v17

    add-float/2addr v14, v6

    float-to-int v14, v14

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v14, v14, v18

    .line 3615
    invoke-virtual {v8, v13, v15, v5, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3621
    iget-object v5, v10, Lorg/telegram/ui/Cells/BotButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v8, v10, Lorg/telegram/ui/Cells/BotButton;->isLocked:Z

    if-eqz v8, :cond_9

    const/16 v8, 0x80

    goto :goto_5

    :cond_9
    const/16 v8, 0xff

    :goto_5
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3622
    iget-object v5, v10, Lorg/telegram/ui/Cells/BotButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-float/2addr v12, v11

    .line 3625
    :cond_a
    iget-object v5, v10, Lorg/telegram/ui/Cells/BotButton;->title:Lorg/telegram/ui/Components/Text;

    float-to-int v8, v7

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v8, v11

    sub-int/2addr v8, v4

    const/4 v4, 0x1

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 3626
    iget-object v4, v10, Lorg/telegram/ui/Cells/BotButton;->title:Lorg/telegram/ui/Components/Text;

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v17

    add-float/2addr v5, v6

    iget-boolean v8, v10, Lorg/telegram/ui/Cells/BotButton;->isLocked:Z

    if-eqz v8, :cond_b

    const/high16 v14, 0x3f000000    # 0.5f

    goto :goto_6

    :cond_b
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v4, v1, v12, v5, v14}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFF)V

    .line 3627
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3628
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    goto/16 :goto_1

    :cond_c
    :goto_7
    return-void
.end method

.method private getAdaptiveEmojiColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 2

    .line 4063
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->adaptiveEmojiColor:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->adaptiveEmojiColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_1

    .line 4064
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->adaptiveEmojiColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->adaptiveEmojiColorFilter:Landroid/graphics/ColorFilter;

    .line 4066
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->adaptiveEmojiColorFilter:Landroid/graphics/ColorFilter;

    return-object p1
.end method

.method private getImageSize(Lorg/telegram/messenger/MessageObject;)I
    .locals 3

    .line 1995
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 1996
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v0, 0x429c0000    # 78.0f

    .line 1997
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1999
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v1

    if-nez v1, :cond_3

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x22

    if-eq p1, v1, :cond_3

    const/16 v1, 0x23

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 3933
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getUploadingInfoProgress(Lorg/telegram/messenger/MessageObject;)F
    .locals 2

    if-eqz p1, :cond_0

    .line 1062
    :try_start_0
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 1063
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 1064
    iget-object v1, v0, Lorg/telegram/messenger/MessagesController;->uploadingWallpaper:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1065
    iget-object p1, v0, Lorg/telegram/messenger/MessagesController;->uploadingWallpaperInfo:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->uploadingProgress:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1069
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method private isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 3973
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isGiftChannel(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3977
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isGiftCode()Z
    .locals 1

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMessageActionSuggestedPostApproval()Z
    .locals 1

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNewStyleButtonLayout()Z
    .locals 3

    .line 1982
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_1

    .line 1990
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->balance_too_low:Z

    if-nez v1, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->rejected:Z

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

.method private isSelfGiftCode()Z
    .locals 3

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    if-nez v2, :cond_0

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;

    if-eqz v1, :cond_1

    .line 1534
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v0, :cond_1

    .line 1535
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$didPressCustomBotButton$10(Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;)V
    .locals 7

    .line 3752
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->new_value:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->toggleChatNoForwards(JIZLorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$didPressCustomBotButton$7(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 3721
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 3724
    new-instance p2, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda15;

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$didPressCustomBotButton$8(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 3715
    new-instance v0, Lorg/telegram/tgnet/tl/TL_payments$TL_resolveStarGiftOffer;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_payments$TL_resolveStarGiftOffer;-><init>()V

    .line 3716
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_payments$TL_resolveStarGiftOffer;->offer_msg_id:I

    const/4 v1, 0x1

    .line 3717
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_payments$TL_resolveStarGiftOffer;->decline:Z

    .line 3719
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Lorg/telegram/messenger/Utilities$Callback2;)I

    return-void
.end method

.method private synthetic lambda$didPressCustomBotButton$9(Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;)V
    .locals 7

    .line 3743
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->prev_value:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->toggleChatNoForwards(JIZLorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 1

    if-eqz p2, :cond_3

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 452
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    .line 453
    iget-boolean v0, p2, Lorg/telegram/messenger/MessageObject;->playedGiftAnimation:Z

    if-nez v0, :cond_2

    .line 454
    iput-boolean p3, p2, Lorg/telegram/messenger/MessageObject;->playedGiftAnimation:Z

    .line 455
    invoke-virtual {p1, p4, p4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 456
    new-instance p3, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda13;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 458
    iget-boolean p1, p2, Lorg/telegram/messenger/MessageObject;->wasUnread:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->forceWasUnread:Z

    if-eqz p1, :cond_3

    .line 459
    :cond_0
    iput-boolean p4, p2, Lorg/telegram/messenger/MessageObject;->wasUnread:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->forceWasUnread:Z

    const/4 p1, 0x3

    const/4 p2, 0x2

    .line 462
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    .line 469
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz p2, :cond_3

    .line 470
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-interface {p2, p0, p3, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needShowEffectOverlay(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p2

    if-ge p2, p3, :cond_3

    .line 474
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 475
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onTouchEvent$2()V
    .locals 2

    const/4 v0, 0x0

    .line 1461
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->isSpoilerRevealing:Z

    .line 1462
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->spoilers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1464
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1466
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$3()V
    .locals 1

    .line 1460
    new-instance v0, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$openPremiumGiftChannel$4(Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;)V
    .locals 2

    .line 1528
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->slug:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didOpenPremiumGiftChannel(Lorg/telegram/ui/Cells/ChatActionCell;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$openPremiumGiftPreview$5(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;)V
    .locals 2

    .line 1568
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didOpenPremiumGift(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$setMessageObject$1()V
    .locals 1

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_0

    .line 1034
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->onTopicClick(Lorg/telegram/ui/Cells/ChatActionCell;)V

    :cond_0
    return-void
.end method

.method private measureLayoutWidth(Landroid/text/Layout;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2683
    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2684
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private openLink(Landroid/text/style/CharacterStyle;)V
    .locals 4

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_5

    instance-of v0, p1, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_5

    .line 1625
    check-cast p1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 1626
    const-string/jumbo v0, "task"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 1627
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didPressTaskLink(Lorg/telegram/ui/Cells/ChatActionCell;II)V

    return-void

    .line 1629
    :cond_0
    const-string/jumbo v0, "topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    instance-of v1, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v1, :cond_1

    .line 1630
    check-cast v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .line 1631
    invoke-virtual {v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getObject()Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 1632
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_5

    .line 1633
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->getDialogId()J

    move-result-wide v1

    neg-long v1, v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    return-void

    .line 1636
    :cond_1
    const-string v0, "invite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    instance-of v1, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v1, :cond_2

    .line 1637
    check-cast v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .line 1638
    invoke-virtual {v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getObject()Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 1639
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_5

    .line 1640
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needOpenInviteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void

    .line 1643
    :cond_2
    const-string v0, "game"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1644
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didPressReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V

    return-void

    .line 1665
    :cond_3
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1666
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1668
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needOpenUserProfile(J)V

    :cond_5
    return-void
.end method

.method private openPremiumGiftChannel()V
    .locals 2

    .line 1526
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    .line 1528
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private openPremiumGiftPreview()V
    .locals 4

    .line 1556
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;-><init>()V

    .line 1557
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1558
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->amount:J

    .line 1559
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->months:I

    .line 1560
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->currency:Ljava/lang/String;

    .line 1562
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isGiftCode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1563
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->isSelfGiftCode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->slug:Ljava/lang/String;

    .line 1567
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v1, :cond_2

    .line 1568
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private openStarsGiftTransaction()V
    .locals 9

    .line 1573
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1574
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;

    if-eqz v1, :cond_1

    .line 1575
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object v7, v0

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 1576
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;

    if-eqz v1, :cond_2

    .line 1577
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object v7, v0

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 1578
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;

    if-eqz v1, :cond_3

    .line 1579
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object v7, v0

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 1580
    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v1, :cond_5

    .line 1581
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    .line 1582
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->forceIn:Z

    if-eqz v0, :cond_4

    goto/16 :goto_0

    .line 1584
    :cond_4
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1585
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object v0

    .line 1586
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    return-void

    .line 1587
    :cond_5
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v1, :cond_8

    .line 1588
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    .line 1589
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->burned:Z

    if-eqz v0, :cond_7

    .line 1590
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 1592
    :cond_6
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->fire_on:I

    sget v2, Lorg/telegram/messenger/R$string;->UniqueGiftNotFoundBurned:I

    .line 1593
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1594
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1597
    :cond_7
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1598
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object v0

    .line 1599
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    return-void

    .line 1600
    :cond_8
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v1, :cond_9

    .line 1601
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    .line 1602
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    if-eqz v1, :cond_9

    .line 1603
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 1604
    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_9

    .line 1605
    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v3, 0x0

    .line 1606
    invoke-virtual {v2, v1, v0, v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object v0

    .line 1607
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    :cond_9
    :goto_0
    return-void
.end method

.method private openStarsNeedSheet()V
    .locals 13

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->obtainSuggestionOffer()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v0

    .line 1615
    iget-object v1, v0, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1619
    :cond_0
    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v0, v0, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v6

    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    const/4 v8, 0x1

    invoke-static {v0, v1, v2, v8}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(IJZ)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    const/16 v8, 0xd

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;J)V

    .line 1620
    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setStarsPaused(Z)V
    .locals 7

    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-ne p1, v1, :cond_0

    return-void

    .line 1190
    :cond_0
    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-eqz p1, :cond_1

    .line 1192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pausedTime:J

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1194
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1195
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->lifeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-wide v5, v5, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pausedTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->lifeTime:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1197
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void
.end method

.method private updateTextInternal(Z)V
    .locals 2

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 571
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 573
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->wasLayout:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 575
    new-instance p1, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 580
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    return-void
.end method


# virtual methods
.method public checkUnreadReactions(FI)Z
    .locals 4

    .line 4149
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasUnreadReactions:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4152
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    .line 4153
    iget p1, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    int-to-float p1, p2

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 185
    sget p2, Lorg/telegram/messenger/NotificationCenter;->startSpoilers:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 186
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    return-void

    .line 187
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopSpoilers:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 188
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    return-void

    .line 189
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    if-eq p1, p2, :cond_3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    if-eq p1, p2, :cond_3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateTonGiftStickers:I

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    if-ne p1, p2, :cond_4

    .line 195
    aget-object p1, p3, v0

    iget p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_4

    .line 198
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    return-void

    .line 190
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_4

    .line 192
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_4
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Z)V
    .locals 33

    move-object/from16 v0, p0

    .line 3262
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    if-eqz v2, :cond_1

    .line 3263
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    goto/16 :goto_27

    .line 3266
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    goto/16 :goto_27

    .line 3270
    :cond_1
    const-string v2, "paintChatActionBackground"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    .line 3271
    const-string v3, "paintChatActionBackgroundDarken"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    .line 3272
    const-string v4, "paintChatActionText"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    check-cast v4, Landroid/text/TextPaint;

    iput-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    .line 3273
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackground:I

    const/4 v5, 0x1

    if-ltz v4, :cond_3

    .line 3274
    invoke-direct {v0, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedColor(I)I

    move-result v2

    .line 3275
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_2

    .line 3276
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    .line 3277
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3278
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    .line 3279
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3280
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    const/16 v4, 0x10

    sget v6, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3281
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideText:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3283
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    .line 3284
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideTextPaint:Landroid/text/TextPaint;

    iput-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    .line 3286
    :cond_3
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v10, 0x40800000    # 4.0f

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    .line 3287
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatePath:Z

    .line 3288
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundLeft:I

    .line 3289
    iput v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRight:I

    .line 3290
    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 3291
    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-nez v11, :cond_4

    move v11, v4

    goto :goto_0

    :cond_4
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    :goto_0
    const/high16 v12, 0x41300000    # 11.0f

    .line 3292
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    .line 3293
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    move v14, v4

    move v15, v14

    :goto_1
    const/high16 v16, 0x3fc00000    # 1.5f

    if-ge v14, v11, :cond_7

    .line 3297
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v14}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    move/from16 v17, v5

    const/high16 v18, 0x40c00000    # 6.0f

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-eqz v14, :cond_5

    sub-int v5, v15, v4

    if-lez v5, :cond_5

    int-to-float v5, v5

    int-to-float v6, v12

    mul-float v6, v6, v16

    move/from16 v19, v7

    int-to-float v7, v13

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    goto :goto_2

    :cond_5
    move/from16 v19, v7

    :cond_6
    move v15, v4

    .line 3304
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v17

    move/from16 v7, v19

    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    move/from16 v17, v5

    move/from16 v19, v7

    const/high16 v18, 0x40c00000    # 6.0f

    add-int/lit8 v4, v11, -0x2

    :goto_3
    if-ltz v4, :cond_9

    .line 3308
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v6, v15, v5

    if-lez v6, :cond_8

    int-to-float v6, v6

    int-to-float v7, v12

    mul-float v7, v7, v16

    int-to-float v14, v13

    add-float/2addr v7, v14

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    goto :goto_4

    :cond_8
    move v15, v5

    .line 3313
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 3317
    :cond_9
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 3318
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/high16 v6, 0x40400000    # 3.0f

    .line 3321
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 3322
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    move/from16 v16, v6

    sub-int v6, v12, v7

    const/high16 v20, 0x40000000    # 2.0f

    .line 3325
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3326
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 3327
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    move/from16 v21, v10

    int-to-float v10, v5

    int-to-float v8, v4

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v23, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v8, v11, :cond_18

    .line 3330
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v24, v9

    .line 3331
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    move/from16 v25, v9

    add-int/lit8 v9, v11, -0x1

    move/from16 v26, v10

    if-ge v8, v9, :cond_a

    .line 3332
    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    move/from16 v27, v11

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_6

    :cond_a
    move/from16 v27, v11

    const/4 v10, 0x0

    :goto_6
    sub-int v11, v25, v24

    if-eqz v8, :cond_b

    if-le v5, v15, :cond_c

    .line 3336
    :cond_b
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    add-int v11, v11, v24

    :cond_c
    if-eq v8, v9, :cond_e

    if-le v5, v10, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    move/from16 v24, v11

    goto :goto_9

    .line 3339
    :cond_e
    :goto_8
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    add-int v11, v11, v24

    goto :goto_7

    :goto_9
    int-to-float v11, v5

    div-float v11, v11, v20

    add-float v11, v26, v11

    if-eq v8, v9, :cond_f

    if-ge v5, v10, :cond_f

    if-eqz v8, :cond_f

    if-ge v5, v15, :cond_f

    move/from16 v28, v14

    goto :goto_a

    :cond_f
    move/from16 v28, v13

    :goto_a
    if-eqz v8, :cond_10

    if-le v5, v15, :cond_11

    :cond_10
    move-object/from16 v32, v3

    move/from16 v29, v11

    move/from16 v30, v13

    move/from16 v31, v14

    goto :goto_b

    :cond_11
    if-ge v5, v15, :cond_12

    move/from16 v29, v11

    .line 3358
    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    move/from16 v30, v13

    int-to-float v13, v6

    add-float v13, v29, v13

    move/from16 v31, v14

    int-to-float v14, v4

    mul-int/lit8 v1, v28, 0x2

    move-object/from16 v32, v3

    int-to-float v3, v1

    add-float/2addr v3, v13

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v11, v13, v14, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3359
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->checkLeftRightBounds()V

    .line 3360
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v3, v11, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_c

    :cond_12
    move-object/from16 v32, v3

    move/from16 v29, v11

    move/from16 v30, v13

    move/from16 v31, v14

    goto :goto_c

    .line 3354
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v3, v7

    sub-float v11, v29, v3

    int-to-float v3, v12

    sub-float/2addr v11, v3

    int-to-float v3, v4

    int-to-float v13, v6

    add-float v13, v29, v13

    mul-int/lit8 v14, v12, 0x2

    add-int/2addr v14, v4

    int-to-float v14, v14

    invoke-virtual {v1, v11, v3, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3355
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->checkLeftRightBounds()V

    .line 3356
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v13, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v3, v13, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_c
    add-int v4, v4, v24

    if-eq v8, v9, :cond_13

    if-ge v5, v10, :cond_13

    .line 3365
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v4, v1

    .line 3366
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v11, v24, v1

    goto :goto_d

    :cond_13
    move/from16 v11, v24

    :goto_d
    if-eqz v8, :cond_14

    if-ge v5, v15, :cond_14

    .line 3369
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v4, v1

    .line 3370
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v11, v1

    .line 3372
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v8, v9, :cond_16

    if-le v5, v10, :cond_15

    goto :goto_e

    :cond_15
    if-ge v5, v10, :cond_17

    .line 3379
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v3, v6

    add-float v11, v29, v3

    mul-int/lit8 v3, v28, 0x2

    sub-int v9, v4, v3

    int-to-float v9, v9

    int-to-float v3, v3

    add-float/2addr v3, v11

    int-to-float v10, v4

    invoke-virtual {v1, v11, v9, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3380
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->checkLeftRightBounds()V

    .line 3381
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v13, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v3, v9, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_f

    .line 3375
    :cond_16
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v3, v7

    sub-float v11, v29, v3

    int-to-float v3, v12

    sub-float/2addr v11, v3

    mul-int/lit8 v3, v12, 0x2

    sub-int v3, v4, v3

    int-to-float v3, v3

    int-to-float v9, v6

    add-float v9, v29, v9

    int-to-float v10, v4

    invoke-virtual {v1, v11, v3, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3376
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->checkLeftRightBounds()V

    .line 3377
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v1, v3, v9, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_17
    :goto_f
    add-int/lit8 v8, v8, 0x1

    move v15, v5

    move/from16 v9, v25

    move/from16 v10, v26

    move/from16 v11, v27

    move/from16 v13, v30

    move/from16 v14, v31

    move-object/from16 v3, v32

    goto/16 :goto_5

    :cond_18
    move-object/from16 v32, v3

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v30, v13

    move/from16 v31, v14

    add-int/lit8 v11, v27, -0x1

    move v1, v11

    :goto_10
    if-ltz v1, :cond_22

    if-eqz v1, :cond_19

    .line 3387
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_11

    :cond_19
    const/4 v3, 0x0

    .line 3388
    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v1, v11, :cond_1a

    .line 3389
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineWidths:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_12

    :cond_1a
    const/4 v8, 0x0

    .line 3390
    :goto_12
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 3391
    div-int/lit8 v9, v5, 0x2

    sub-int v9, v23, v9

    int-to-float v9, v9

    if-eq v1, v11, :cond_1b

    if-ge v5, v8, :cond_1b

    if-eqz v1, :cond_1b

    if-ge v5, v3, :cond_1b

    move/from16 v10, v31

    goto :goto_13

    :cond_1b
    move/from16 v10, v30

    :goto_13
    if-eq v1, v11, :cond_1c

    if-le v5, v8, :cond_1d

    :cond_1c
    move/from16 v16, v9

    goto :goto_14

    :cond_1d
    if-ge v5, v8, :cond_1e

    .line 3405
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v13, v6

    sub-float v13, v9, v13

    mul-int/lit8 v14, v10, 0x2

    int-to-float v15, v14

    sub-float v15, v13, v15

    sub-int v14, v4, v14

    int-to-float v14, v14

    move/from16 v16, v9

    int-to-float v9, v4

    invoke-virtual {v8, v15, v14, v13, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3406
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->checkLeftRightBounds()V

    .line 3407
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v13, 0x42b40000    # 90.0f

    const/high16 v14, -0x3d4c0000    # -90.0f

    invoke-virtual {v8, v9, v13, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_15

    :cond_1e
    move/from16 v16, v9

    goto :goto_15

    .line 3401
    :goto_14
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v9, v6

    sub-float v9, v16, v9

    mul-int/lit8 v13, v12, 0x2

    sub-int v13, v4, v13

    int-to-float v13, v13

    int-to-float v14, v7

    add-float v14, v16, v14

    int-to-float v15, v12

    add-float/2addr v14, v15

    int-to-float v15, v4

    invoke-virtual {v8, v9, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3402
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->checkLeftRightBounds()V

    .line 3403
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v13, 0x42b40000    # 90.0f

    invoke-virtual {v8, v9, v13, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 3410
    :goto_15
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lineHeights:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v4, v8

    if-eqz v1, :cond_1f

    if-le v5, v3, :cond_20

    :cond_1f
    const/high16 v13, -0x3d4c0000    # -90.0f

    goto :goto_17

    :cond_20
    if-ge v5, v3, :cond_21

    .line 3417
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v5, v6

    sub-float v9, v16, v5

    mul-int/lit8 v10, v10, 0x2

    int-to-float v5, v10

    sub-float v5, v9, v5

    int-to-float v8, v4

    add-int/2addr v10, v4

    int-to-float v10, v10

    invoke-virtual {v3, v5, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3418
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->checkLeftRightBounds()V

    .line 3419
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/high16 v13, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v5, v9, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_16
    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x43340000    # 180.0f

    goto :goto_18

    :cond_21
    const/high16 v13, -0x3d4c0000    # -90.0f

    goto :goto_16

    .line 3413
    :goto_17
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v5, v6

    sub-float v9, v16, v5

    int-to-float v5, v4

    int-to-float v8, v7

    add-float v8, v16, v8

    int-to-float v10, v12

    add-float/2addr v8, v10

    mul-int/lit8 v10, v12, 0x2

    add-int/2addr v10, v4

    int-to-float v10, v10

    invoke-virtual {v3, v9, v5, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3414
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->checkLeftRightBounds()V

    .line 3415
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {v3, v5, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_18
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_10

    .line 3422
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3424
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v1

    if-nez v1, :cond_24

    .line 3425
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    int-to-float v3, v3

    div-float v3, v3, v20

    sub-float v10, v26, v3

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v10, v5

    iput v10, v1, Landroid/graphics/RectF;->left:F

    .line 3426
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v5, v4

    iput v5, v1, Landroid/graphics/RectF;->top:F

    .line 3427
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    int-to-float v5, v5

    div-float v5, v5, v20

    add-float v10, v26, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v10, v3

    iput v10, v1, Landroid/graphics/RectF;->right:F

    .line 3428
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v4, v3

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    add-int/2addr v4, v3

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v4, v3

    int-to-float v3, v4

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 3430
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 3431
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rect:Landroid/graphics/RectF;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 3432
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_19

    :cond_23
    move-object/from16 v32, v3

    move/from16 v19, v7

    move/from16 v21, v10

    const/high16 v18, 0x40c00000    # 6.0f

    const/high16 v20, 0x40000000    # 2.0f

    .line 3435
    :cond_24
    :goto_19
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->visiblePartSet:Z

    if-nez v1, :cond_25

    .line 3436
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3437
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    .line 3439
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v1, :cond_26

    .line 3440
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_1a

    .line 3442
    :cond_26
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    :goto_1a
    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_27

    .line 3447
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_28

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_1b

    :cond_27
    move-object/from16 v6, v32

    goto :goto_1e

    .line 3448
    :cond_28
    :goto_1b
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    .line 3449
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    int-to-float v6, v4

    .line 3450
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_29

    move v7, v1

    goto :goto_1c

    :cond_29
    move v7, v3

    :goto_1c
    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v6, v5

    .line 3451
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_1d

    :cond_2a
    move v1, v3

    :goto_1d
    mul-float/2addr v6, v1

    float-to-int v1, v6

    move-object/from16 v6, v32

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_21

    .line 3452
    :goto_1e
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3453
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    .line 3454
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    int-to-float v7, v4

    .line 3455
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_2b

    move v8, v1

    goto :goto_1f

    :cond_2b
    move v8, v3

    :goto_1f
    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v7, v5

    .line 3456
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_2c

    goto :goto_20

    :cond_2c
    move v1, v3

    :goto_20
    mul-float/2addr v7, v1

    float-to-int v1, v7

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_21

    :cond_2d
    const/4 v4, -0x1

    move v5, v4

    .line 3458
    :goto_21
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2f

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z

    if-nez v1, :cond_2e

    goto :goto_22

    :cond_2e
    move-object/from16 v7, p1

    const/16 v22, 0x0

    goto :goto_23

    .line 3459
    :cond_2f
    :goto_22
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    move-object/from16 v7, p1

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3460
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3461
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3463
    :cond_30
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->dimAmount:F

    const/16 v22, 0x0

    cmpl-float v1, v1, v22

    if-lez v1, :cond_32

    .line 3464
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz p2, :cond_31

    .line 3466
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    int-to-float v9, v1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3468
    :cond_31
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3469
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3473
    :cond_32
    :goto_23
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3474
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v8}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41800000    # 16.0f

    if-eqz v8, :cond_35

    .line 3475
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v1

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 3476
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float v3, v3, v20

    .line 3477
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    iget-boolean v8, v8, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v8, :cond_33

    move/from16 v8, v22

    goto :goto_24

    :cond_33
    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 3478
    :goto_24
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float/2addr v1, v3

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v11}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getHeight()F

    move-result v11

    add-float/2addr v11, v8

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {v9, v3, v8, v1, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3479
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    if-nez v1, :cond_34

    .line 3480
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    .line 3482
    :cond_34
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3483
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v1, v3, v8, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3485
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3486
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v1, v3, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26

    .line 3488
    :cond_35
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-eqz v8, :cond_37

    .line 3489
    invoke-virtual {v8}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->width()I

    move-result v1

    int-to-float v1, v1

    .line 3490
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->height()I

    move-result v3

    int-to-float v3, v3

    .line 3491
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    div-float v8, v8, v20

    .line 3492
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    if-nez v9, :cond_36

    .line 3493
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    .line 3495
    :cond_36
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v1, v8

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v3

    invoke-virtual {v9, v8, v11, v1, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3496
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v1, v3, v8, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3498
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3499
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v1, v3, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26

    .line 3501
    :cond_37
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 3502
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    sub-int/2addr v8, v11

    int-to-float v8, v8

    div-float v8, v8, v20

    .line 3503
    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    .line 3504
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v12

    if-eqz v12, :cond_38

    .line 3505
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v11, v9

    .line 3506
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v12, v12

    add-float/2addr v12, v8

    iget v13, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    invoke-virtual {v9, v8, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_25

    .line 3508
    :cond_38
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v11, v9

    .line 3509
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v13, v12

    add-float/2addr v13, v8

    int-to-float v12, v12

    add-float/2addr v12, v11

    iget v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    int-to-float v14, v14

    add-float/2addr v12, v14

    invoke-virtual {v9, v8, v11, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_25
    if-eqz v1, :cond_39

    .line 3511
    iget v8, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0x12

    if-ne v8, v9, :cond_39

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    if-nez v8, :cond_39

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v8, :cond_39

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsedHeight:I

    if-lez v9, :cond_39

    .line 3512
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v11, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v8, v8, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    iget v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsedHeight:I

    sub-int/2addr v8, v12

    int-to-float v8, v8

    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v12

    sub-float/2addr v3, v12

    mul-float/2addr v8, v3

    sub-float/2addr v11, v8

    iput v11, v9, Landroid/graphics/RectF;->bottom:F

    .line 3514
    :cond_39
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    if-nez v3, :cond_3a

    .line 3515
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    .line 3517
    :cond_3a
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz v1, :cond_3c

    .line 3520
    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x21

    if-eq v1, v3, :cond_3b

    const/16 v3, 0x23

    if-ne v1, v3, :cond_3c

    .line 3521
    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botInlineButtons:Lorg/telegram/messenger/BotInlineKeyboard$Source;

    if-eqz v1, :cond_3c

    .line 3522
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radii:[F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 3523
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radii:[F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v8, 0x7

    aput v3, v1, v8

    const/4 v8, 0x6

    aput v3, v1, v8

    const/4 v8, 0x5

    aput v3, v1, v8

    const/4 v8, 0x4

    aput v3, v1, v8

    .line 3524
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath2:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 3525
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath2:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radii:[F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v8, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 3526
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath2:Landroid/graphics/Path;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3527
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3528
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundPath2:Landroid/graphics/Path;

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_26

    .line 3535
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v1, v3, v8, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3537
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3538
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v1, v3, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3d
    :goto_26
    if-ltz v4, :cond_3e

    .line 3544
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3545
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3e
    :goto_27
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 3245
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 3246
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 3247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3248
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 3250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 3253
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawOutboundsContent(Landroid/graphics/Canvas;)V
    .locals 11

    .line 3942
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3943
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    int-to-float v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v1, v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3945
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3946
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3947
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getAdaptiveEmojiColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v3

    :goto_0
    move-object v9, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 3948
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3950
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3951
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3952
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v10

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    iget-boolean v2, v2, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_2
    int-to-float v2, v2

    goto :goto_3

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3953
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->drawOutbounds(Landroid/graphics/Canvas;)V

    .line 3954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3956
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3958
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    if-eqz v1, :cond_4

    .line 3959
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v6

    .line 3961
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3962
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    add-float/2addr v7, v2

    invoke-interface {v1, v3, v4, v5, v7}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_4

    .line 3964
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    add-float/2addr v5, v2

    invoke-static {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 3966
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    int-to-float v3, v1

    const/high16 v5, 0x3f800000    # 1.0f

    iget-boolean v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->showTopicSeparator:Z

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/TopicSeparator;->draw(Landroid/graphics/Canvas;IFFFFZ)V

    .line 3969
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtons:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBotButtons(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    return-void
.end method

.method public drawReactions(Landroid/graphics/Canvas;ZLjava/lang/Integer;)V
    .locals 1

    .line 3758
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    if-eqz v0, :cond_1

    .line 3759
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 3762
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    :goto_0
    return-void

    .line 3766
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatActionCell;->drawReactionsLayout(Landroid/graphics/Canvas;ZLjava/lang/Integer;)V

    return-void
.end method

.method public drawReactionsLayout(Landroid/graphics/Canvas;ZLjava/lang/Integer;)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 3770
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 3771
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v1, :cond_1

    .line 3772
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v6, v2

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_1

    .line 3774
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    invoke-static {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 3776
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactions()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChange:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    if-eqz v2, :cond_5

    .line 3777
    :cond_2
    iput v0, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_3

    .line 3779
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p2, v2

    float-to-int v8, p2

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_2

    :cond_3
    move-object v3, p1

    .line 3781
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    iget-boolean v2, p2, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChange:Z

    if-eqz v2, :cond_4

    iget v0, p2, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChangeProgress:F

    :cond_4
    invoke-virtual {p1, v3, v0, p3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->draw(Landroid/graphics/Canvas;FLjava/lang/Integer;)V

    if-gez v1, :cond_5

    .line 3783
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public drawReactionsLayoutOverlay(Landroid/graphics/Canvas;Z)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 3789
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 3790
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v1, :cond_1

    .line 3791
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v6, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v6, v2

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_1

    .line 3793
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    invoke-static {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 3795
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactions()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChange:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    if-eqz v2, :cond_5

    .line 3796
    :cond_2
    iput v0, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_3

    .line 3798
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p2, v2

    float-to-int v8, p2

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_2

    :cond_3
    move-object v3, p1

    .line 3800
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    iget-boolean v2, p2, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChange:Z

    if-eqz v2, :cond_4

    iget v0, p2, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChangeProgress:F

    :cond_4
    invoke-virtual {p1, v3, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawOverlay(Landroid/graphics/Canvas;F)Z

    if-gez v1, :cond_5

    .line 3802
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public drawScrimReaction(Landroid/graphics/Canvas;Ljava/lang/Integer;FZ)V
    .locals 6

    .line 4125
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    if-nez v0, :cond_1

    .line 4126
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    .line 4127
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v5, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_0

    .line 4129
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 4131
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->setScrimProgress(FZ)V

    .line 4132
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object p4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    iget p4, p4, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->animateChangeProgress:F

    invoke-virtual {p3, p1, p4, p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->draw(Landroid/graphics/Canvas;FLjava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public drawScrimReactionPreview(Landroid/view/View;Landroid/graphics/Canvas;ILjava/lang/Integer;F)V
    .locals 6

    .line 4137
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    if-nez v0, :cond_1

    .line 4138
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    .line 4139
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v5, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_0

    .line 4141
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 4143
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0, p5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->setScrimProgress(F)V

    .line 4144
    iget-object p5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {p5, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawPreview(Landroid/view/View;Landroid/graphics/Canvas;ILjava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public getBoundsLeft()I
    .locals 3

    .line 3809
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3810
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 3811
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    iget-boolean v1, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v1, :cond_0

    return v0

    .line 3814
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundLeft:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 3816
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3817
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0

    .line 3819
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundLeft:I

    .line 3820
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3821
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3823
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method public getBoundsRight()I
    .locals 3

    .line 3828
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3829
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 3830
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    iget-boolean v1, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v1, :cond_0

    return v0

    .line 3833
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 3835
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3836
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0

    .line 3838
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRight:I

    .line 3839
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3840
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3842
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method public getCustomDate()I
    .locals 1

    .line 2697
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    return v0
.end method

.method public getDelegate()Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    return-object v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 3883
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->TAG:I

    return v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 1079
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
    .locals 1

    .line 4074
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object p1

    return-object p1
.end method

.method protected getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 3937
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 3938
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public getTransitionParams()Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;
    .locals 1

    .line 4116
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    return-object v0
.end method

.method public hasButton()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasGradientService()Z
    .locals 1

    .line 3846
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 3992
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    .line 3993
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3994
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3996
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3997
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3999
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatesParent:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4000
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4001
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4002
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4003
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4004
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 4037
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 4038
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4039
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4041
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatesParent:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4042
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4043
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4044
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4045
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4046
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    .line 4021
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 4022
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4023
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4025
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatesParent:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4026
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4027
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4028
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4029
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4030
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public invalidateOutbounds()V
    .locals 1

    .line 4010
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4015
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    return-void

    .line 4011
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4012
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public isCellAttachedToWindow()Z
    .locals 1

    .line 1154
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->attachedToWindow:Z

    return v0
.end method

.method public isFloating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public markReactionsAsRead()V
    .locals 2

    .line 4160
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasUnreadReactions:Z

    .line 4161
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 4164
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->markReactionsAsRead()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 1159
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1160
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->attachedToWindow:Z

    .line 1161
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v1, 0x0

    .line 1162
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setStarsPaused(Z)V

    .line 1164
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->canDrawInParent:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    new-array v5, v0, [Landroid/text/Layout;

    aput-object v4, v5, v1

    invoke-static {v1, p0, v2, v3, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 1165
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v1, :cond_1

    .line 1166
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->attach()V

    .line 1168
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1169
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didUpdateTonGiftStickers:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1170
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1171
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1173
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    .line 1174
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1176
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->attach()V

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->onAttachToWindow()V

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    if-eqz v0, :cond_3

    .line 1179
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TopicSeparator;->attach()V

    .line 1181
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-eqz v0, :cond_4

    .line 1182
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->attach()V

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1124
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1125
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->attachedToWindow:Z

    .line 1126
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 1127
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v1, 0x1

    .line 1128
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->setStarsPaused(Z)V

    .line 1129
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->wasLayout:Z

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 1131
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->detach()V

    .line 1135
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1136
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateTonGiftStickers:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1137
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1138
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->onDetach()V

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->detach()V

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->onDetachFromWindow()V

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    if-eqz v0, :cond_1

    .line 1145
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TopicSeparator;->detach()V

    .line 1147
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-eqz v0, :cond_2

    .line 1148
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->detach()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2702
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2703
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    int-to-float v2, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2705
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2706
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    const/4 v13, 0x1

    xor-int/2addr v3, v13

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v14

    .line 2707
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 2708
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v3

    const/high16 v15, 0x41a00000    # 20.0f

    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v17, 0x41400000    # 12.0f

    const v18, 0x3d99999a    # 0.075f

    const/16 v4, 0x21

    const/16 v5, 0x1f

    const/4 v6, 0x0

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v8, 0x41800000    # 16.0f

    if-nez v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-nez v3, :cond_f

    invoke-direct {v0, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2709
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/high16 v9, 0x42d40000    # 106.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v3, v9

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 2710
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2711
    invoke-direct {v0, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->getImageSize(Lorg/telegram/messenger/MessageObject;)I

    move-result v2

    .line 2712
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v3, v9

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v3, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v3, v9

    .line 2713
    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sub-int/2addr v9, v2

    int-to-float v9, v9

    div-float/2addr v9, v11

    int-to-float v3, v3

    .line 2715
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2716
    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/high16 v20, 0x3f800000    # 1.0f

    iget-object v7, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v7, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_0

    :cond_0
    const/high16 v20, 0x3f800000    # 1.0f

    .line 2718
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v10, v2

    move/from16 v21, v8

    add-float v8, v9, v10

    add-float/2addr v10, v3

    invoke-virtual {v7, v9, v3, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2719
    iget v7, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v7, v5, :cond_1

    if-eq v7, v4, :cond_1

    const/16 v8, 0x22

    if-eq v7, v8, :cond_1

    const/16 v8, 0x23

    if-ne v7, v8, :cond_2

    .line 2720
    :cond_1
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v9, v7

    .line 2721
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 2722
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v2, v7

    .line 2724
    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v9, v3, v8, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 2725
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_3

    const/16 v7, 0x22

    if-eq v3, v7, :cond_3

    const/16 v7, 0x23

    if-ne v3, v7, :cond_4

    .line 2726
    :cond_3
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 2728
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v7, v2

    invoke-static {v7, v13}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto/16 :goto_2

    :cond_5
    move/from16 v21, v8

    const/high16 v20, 0x3f800000    # 1.0f

    .line 2729
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0xb

    if-ne v3, v7, :cond_6

    .line 2730
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v11

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v10, v10

    mul-float v10, v10, v18

    add-float/2addr v9, v10

    int-to-float v10, v8

    int-to-float v8, v8

    invoke-virtual {v3, v7, v9, v10, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto/16 :goto_2

    :cond_6
    const/16 v7, 0x19

    if-ne v3, v7, :cond_8

    .line 2732
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v3, v20

    goto :goto_1

    :cond_7
    const v3, 0x3f99999a    # 1.2f

    :goto_1
    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2733
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v11

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v9, v9

    mul-float v9, v9, v18

    add-float/2addr v8, v9

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v3, v7, v8, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto/16 :goto_2

    .line 2734
    :cond_8
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isStarGiftAction()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2735
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v11

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v9, v9

    mul-float v9, v9, v18

    add-float/2addr v8, v9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v3, v7, v8, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto/16 :goto_2

    .line 2736
    :cond_9
    iget v2, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_b

    .line 2737
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v2, v2

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2738
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-nez v3, :cond_a

    .line 2739
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v11

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v9, v9

    mul-float v9, v9, v18

    add-float/2addr v8, v9

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v3, v7, v8, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_2

    .line 2741
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v11

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v9, v9

    mul-float v9, v9, v18

    add-float/2addr v8, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v3, v7, v8, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_2

    .line 2744
    :cond_b
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v2, v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    .line 2745
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v11

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v9, v9

    mul-float v9, v9, v18

    add-float/2addr v8, v9

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v3, v7, v8, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 2747
    :goto_2
    const-string v3, "paintChatActionText"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    check-cast v3, Landroid/text/TextPaint;

    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eqz v3, :cond_e

    .line 2749
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eq v3, v7, :cond_c

    .line 2750
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTitlePaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2752
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eq v3, v7, :cond_d

    .line 2753
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2754
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSubtitlePaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    iput v7, v3, Landroid/text/TextPaint;->linkColor:I

    .line 2756
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eq v3, v7, :cond_e

    .line 2757
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2758
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    iput v7, v3, Landroid/text/TextPaint;->linkColor:I

    :cond_e
    :goto_3
    move/from16 v22, v2

    goto :goto_4

    :cond_f
    move/from16 v21, v8

    const/high16 v20, 0x3f800000    # 1.0f

    goto :goto_3

    .line 2763
    :goto_4
    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    .line 2765
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v2

    const/high16 v23, 0x41600000    # 14.0f

    const/16 v3, 0x16

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x15

    if-eqz v2, :cond_14

    .line 2766
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2767
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v10

    sub-float/2addr v2, v10

    div-float/2addr v2, v11

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayoutX:F

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    iget-boolean v10, v10, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v10, :cond_10

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    move/from16 v24, v15

    goto :goto_5

    :cond_10
    iget v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    move/from16 v24, v15

    iget v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v10, v15

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v10, v15

    int-to-float v10, v10

    :goto_5
    iput v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayoutY:F

    invoke-virtual {v1, v2, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2768
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2769
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v2, :cond_11

    invoke-interface {v2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2770
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->drawOutbounds(Landroid/graphics/Canvas;)V

    .line 2772
    :cond_12
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    :goto_6
    move/from16 v25, v11

    goto/16 :goto_d

    :cond_14
    move/from16 v24, v15

    .line 2773
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-eqz v2, :cond_15

    .line 2774
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2775
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2776
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 2777
    :cond_15
    invoke-direct {v0, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-nez v2, :cond_16

    if-eqz v12, :cond_13

    iget v2, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xb

    if-ne v2, v10, :cond_13

    .line 2778
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    if-eqz v2, :cond_17

    iget v10, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v10, v5, :cond_18

    if-ne v10, v4, :cond_17

    goto :goto_7

    :cond_17
    move/from16 v25, v11

    goto :goto_8

    .line 2779
    :cond_18
    :goto_7
    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2780
    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v10

    const v15, 0x415547ae    # 13.33f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v10, v15

    float-to-int v10, v10

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2781
    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v15

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v15, v4

    float-to-int v4, v15

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2782
    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v15

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    add-float/2addr v15, v5

    const v5, 0x415547ae    # 13.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v15, v5

    float-to-int v5, v15

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2783
    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v15

    move/from16 v25, v11

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v11

    add-float/2addr v15, v11

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v15, v11

    float-to-int v11, v15

    .line 2779
    invoke-virtual {v2, v10, v4, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2785
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->draw(Landroid/graphics/Canvas;)V

    .line 2788
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1a

    .line 2789
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2790
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2791
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->clipPath:Landroid/graphics/Path;

    if-nez v2, :cond_19

    .line 2792
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->clipPath:Landroid/graphics/Path;

    goto :goto_9

    .line 2794
    :cond_19
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 2796
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->clipPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v4

    div-float v4, v4, v25

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v5

    div-float v5, v5, v25

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v10

    div-float v10, v10, v25

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v10, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 2797
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2798
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2799
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2800
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    .line 2801
    :cond_1a
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2802
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    .line 2803
    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->id:I

    iput v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    .line 2804
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v4, v5, v1, v2, v10}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_a

    .line 2807
    :cond_1b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 2809
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2810
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2811
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2812
    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v11

    add-float/2addr v10, v11

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2813
    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v11

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v15

    add-float/2addr v11, v15

    .line 2809
    invoke-virtual {v2, v4, v5, v10, v11}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(FFFF)V

    .line 2815
    iget v2, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v9, :cond_1e

    .line 2816
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v2, :cond_1d

    .line 2818
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ImageUpdater;->getCurrentImageProgress()F

    move-result v5

    invoke-virtual {v4, v5, v13}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 2819
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v5, v10

    float-to-int v5, v5

    add-int/2addr v5, v13

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 2820
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setMaxIconSize(I)V

    .line 2821
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhoto:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoSelected:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIcon:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIconSelected:I

    invoke-virtual {v4, v5, v10, v11, v15}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    .line 2822
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ImageUpdater;->getCurrentImageProgress()F

    move-result v2

    cmpl-float v2, v2, v20

    if-nez v2, :cond_1c

    .line 2823
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2, v8, v13, v13}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_b

    .line 2825
    :cond_1c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2, v7, v13, v13}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 2828
    :cond_1d
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    goto :goto_d

    :cond_1e
    if-ne v2, v3, :cond_20

    .line 2830
    invoke-direct {v0, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->getUploadingInfoProgress(Lorg/telegram/messenger/MessageObject;)F

    move-result v2

    .line 2831
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v4, v2, v13}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 2832
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 2833
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setMaxIconSize(I)V

    .line 2834
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhoto:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoSelected:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIcon:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIconSelected:I

    invoke-virtual {v4, v5, v10, v11, v15}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    cmpl-float v2, v2, v20

    if-nez v2, :cond_1f

    .line 2836
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2, v8, v13, v13}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_c

    .line 2838
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2, v7, v13, v13}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 2840
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 2844
    :cond_20
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eqz v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_26

    .line 2845
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2846
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2847
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eq v2, v4, :cond_21

    .line 2848
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    .line 2850
    :cond_21
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2851
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 2852
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 2853
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v2, :cond_23

    invoke-interface {v2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_e

    :cond_22
    move v15, v3

    move v11, v9

    const/16 v13, 0x1f

    goto :goto_11

    .line 2854
    :cond_23
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    move v4, v3

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    if-nez v2, :cond_24

    const/4 v10, 0x0

    :goto_f
    move v11, v4

    goto :goto_10

    :cond_24
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getAdaptiveEmojiColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v10

    goto :goto_f

    :goto_10
    const/4 v4, 0x0

    move v15, v6

    const/4 v6, 0x0

    move/from16 v26, v7

    const/4 v7, 0x0

    move/from16 v27, v8

    const/4 v8, 0x0

    move/from16 v28, v9

    const/high16 v9, 0x3f800000    # 1.0f

    move v15, v11

    move/from16 v11, v28

    const/16 v13, 0x1f

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 2856
    :goto_11
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2858
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 2859
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 2860
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_12

    .line 2863
    :cond_25
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_13

    :cond_26
    move v15, v3

    move v11, v9

    const/16 v13, 0x1f

    .line 2866
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2c

    .line 2867
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2868
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleXLeft:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2869
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPaint:Landroid/text/TextPaint;

    if-eq v2, v3, :cond_27

    .line 2870
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    .line 2872
    :cond_27
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2873
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 2874
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 2875
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v2, :cond_28

    invoke-interface {v2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->canDrawOutboundsContent()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2876
    :cond_28
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-nez v4, :cond_29

    const/4 v4, 0x0

    :goto_14
    move-object v10, v4

    goto :goto_15

    :cond_29
    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getAdaptiveEmojiColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v4

    goto :goto_14

    :goto_15
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 2878
    :cond_2a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2880
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 2881
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 2882
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_16

    .line 2885
    :cond_2b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2888
    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-direct {v0, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 2889
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2890
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v2, v25

    .line 2891
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/high16 v10, 0x41000000    # 8.0f

    if-eq v3, v15, :cond_2d

    .line 2892
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :cond_2d
    move v7, v2

    .line 2895
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2896
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_2e

    iget v2, v2, Landroid/graphics/RectF;->top:F

    goto :goto_17

    :cond_2e
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v2, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 2897
    :goto_17
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-lez v22, :cond_2f

    mul-int/lit8 v3, v3, 0x2

    add-int v3, v3, v22

    :cond_2f
    :goto_18
    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_1a

    .line 2899
    :cond_30
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v3, v3

    mul-float v3, v3, v18

    add-float/2addr v2, v3

    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v3, v11, :cond_31

    move/from16 v3, v22

    goto :goto_19

    :cond_31
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    :goto_19
    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 2900
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v3, v11, :cond_32

    .line 2901
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 2903
    :cond_32
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isStarGiftAction()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2904
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_18

    .line 2905
    :cond_33
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_34

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isStarGiftAction()Z

    move-result v3

    if-nez v3, :cond_34

    const v3, 0x406a3d71    # 3.66f

    .line 2906
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 2909
    :cond_34
    :goto_1a
    iget v3, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v3, v13, :cond_35

    const/16 v4, 0x21

    if-ne v3, v4, :cond_36

    :cond_35
    const v3, 0x406a3d71    # 3.66f

    .line 2910
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 2914
    :cond_36
    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2915
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    const/high16 v18, 0x40c00000    # 6.0f

    const/4 v8, 0x0

    if-eqz v3, :cond_39

    .line 2916
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2917
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v25

    invoke-virtual {v1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2918
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 2919
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2920
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 2921
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_37

    .line 2922
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2923
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v4, v4, v25

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2924
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 2925
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2926
    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 2928
    :cond_37
    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x19

    if-ne v4, v5, :cond_38

    move/from16 v4, v18

    goto :goto_1b

    :cond_38
    move v4, v8

    :goto_1b
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    :goto_1c
    move v9, v3

    goto :goto_1d

    .line 2930
    :cond_39
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    goto :goto_1c

    .line 2932
    :goto_1d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2934
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_3c

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumReleasedText:Lorg/telegram/ui/Components/Text;

    if-eqz v3, :cond_3c

    .line 2935
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 2936
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v3

    div-float v4, v4, v25

    add-float/2addr v4, v7

    .line 2937
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 2938
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftReleasedBackgroundPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_3a

    .line 2939
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftReleasedBackgroundPaint:Landroid/graphics/Paint;

    .line 2941
    :cond_3a
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftReleasedBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v6

    if-eqz v6, :cond_3b

    const v6, 0x10ffffff

    goto :goto_1e

    :cond_3b
    const/high16 v6, 0x10000000

    :goto_1e
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2942
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    add-float/2addr v3, v4

    move/from16 v16, v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    invoke-virtual {v5, v4, v6, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2943
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftReleasedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v6, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2944
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumReleasedText:Lorg/telegram/ui/Components/Text;

    .line 2945
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v4

    const v5, -0x33000001    # -1.3421772E8f

    const/high16 v6, 0x3f800000    # 1.0f

    move v4, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    move-object v1, v2

    const/high16 v2, 0x41c00000    # 24.0f

    .line 2946
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v9, v2

    goto :goto_1f

    :cond_3c
    move/from16 v16, v10

    .line 2949
    :goto_1f
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v9, v2

    .line 2950
    iget v2, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3d

    .line 2951
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v9, v2

    .line 2953
    :cond_3d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2954
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2955
    iget v2, v12, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v15, :cond_4b

    .line 2956
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getTransitionProgress()F

    move-result v2

    const/high16 v30, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v30

    if-nez v2, :cond_3e

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3f

    :cond_3e
    move-object v11, v0

    move v10, v7

    move v15, v8

    const v22, 0x3e4ccccd    # 0.2f

    goto/16 :goto_20

    .line 3033
    :cond_3f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v2, :cond_40

    .line 3034
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3035
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v2, v25

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3036
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    iget-object v4, v2, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v25

    add-float/2addr v3, v7

    iput v3, v2, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->x:F

    .line 3037
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iput v9, v2, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->y:F

    .line 3038
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v4, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->spoilers:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v1, 0x0

    move v5, v7

    move-object v7, v3

    const/4 v3, 0x0

    move/from16 v17, v5

    const/4 v5, 0x1

    move v15, v8

    move/from16 v10, v17

    const v22, 0x3e4ccccd    # 0.2f

    move-object/from16 v8, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;ILandroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V

    .line 3039
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getAdaptiveEmojiColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    move-object v11, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    move-object v1, v0

    .line 3040
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    move-object v15, v11

    goto/16 :goto_29

    :cond_40
    move v10, v7

    const v22, 0x3e4ccccd    # 0.2f

    move-object v15, v0

    goto/16 :goto_29

    .line 2957
    :goto_20
    iget-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_44

    .line 2958
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41500000    # 13.0f

    .line 2959
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2960
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->ActionSettingWallpaper:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2961
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_41

    .line 2963
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x1

    goto :goto_21

    :cond_41
    const/4 v7, 0x3

    :goto_21
    if-ltz v2, :cond_42

    .line 2967
    new-instance v3, Landroid/text/SpannableString;

    const-string/jumbo v4, "\u2026"

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2968
    new-instance v4, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v4}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    const/4 v6, 0x1

    .line 2969
    iput-boolean v6, v4, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->fixTop:Z

    const/4 v5, 0x0

    .line 2970
    invoke-virtual {v4, v11, v5}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    .line 2971
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v8, 0x21

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/2addr v7, v2

    .line 2972
    invoke-virtual {v0, v2, v7, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_22

    :cond_42
    const/4 v5, 0x0

    .line 2974
    :goto_22
    new-instance v31, Landroid/text/StaticLayout;

    iget-object v2, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperPaint:Landroid/text/TextPaint;

    iget-object v3, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-nez v3, :cond_43

    const/16 v34, 0x1

    goto :goto_23

    :cond_43
    iget v6, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->width:I

    move/from16 v34, v6

    :goto_23
    sget-object v35, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    move-object/from16 v32, v0

    move-object/from16 v33, v2

    invoke-direct/range {v31 .. v38}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v31

    iput-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    goto :goto_24

    :cond_44
    const/4 v5, 0x0

    .line 2976
    :goto_24
    invoke-direct {v11, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->getUploadingInfoProgress(Lorg/telegram/messenger/MessageObject;)F

    move-result v0

    .line 2977
    iget-object v2, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_45

    iget v2, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgress:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_47

    .line 2978
    :cond_45
    iput v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgress:F

    .line 2979
    new-instance v31, Landroid/text/StaticLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    iget-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    iget-object v2, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-nez v2, :cond_46

    const/16 v34, 0x1

    goto :goto_25

    :cond_46
    iget v6, v2, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->width:I

    move/from16 v34, v6

    :goto_25
    sget-object v35, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    move-object/from16 v33, v0

    invoke-direct/range {v31 .. v38}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v31

    iput-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    .line 2982
    :cond_47
    iget-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperPaint:Landroid/text/TextPaint;

    iget-object v2, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2983
    iget-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_49

    .line 2984
    iget-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->getTransitionProgress()F

    move-result v0

    .line 2985
    iget-object v2, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 2986
    iget-object v3, v11, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v17, v30, v0

    mul-float v4, v4, v17

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2987
    iget-object v3, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2988
    iget-object v3, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    iput v4, v3, Landroid/text/TextPaint;->linkColor:I

    .line 2991
    iget-object v3, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v3, :cond_48

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v22

    add-float/2addr v0, v3

    .line 2993
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2994
    iget v3, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v3, v3

    div-float v3, v3, v25

    iget-object v4, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v4, v4, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v25

    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2995
    iget v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    iget-object v3, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float v0, v0, v25

    invoke-virtual {v1, v0, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2996
    iget-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget v3, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v25

    add-float v7, v10, v3

    iput v7, v0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->x:F

    .line 2997
    iget-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iput v9, v0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->y:F

    .line 2998
    iget-object v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v3, v11, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v4, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    iget-object v7, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->spoilers:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v29, v5

    const/4 v5, 0x1

    move v8, v2

    move v2, v0

    move-object v0, v11

    move v11, v8

    move-object/from16 v8, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;ILandroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V

    .line 2999
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getAdaptiveEmojiColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    move-object v13, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    move-object v1, v0

    .line 3000
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_26

    :cond_48
    move-object v13, v11

    move v11, v2

    .line 3003
    :goto_26
    iget-object v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3004
    iget-object v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iput v2, v0, Landroid/text/TextPaint;->linkColor:I

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v17, v17, v22

    add-float v0, v17, v0

    .line 3006
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3007
    iget v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v2, v2

    div-float v2, v2, v25

    iget-object v3, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v25

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3008
    iget v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    iget-object v3, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v2, v25

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3009
    iget-object v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3010
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3012
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3013
    iget-object v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v15, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3014
    iget v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v2, v2

    div-float v2, v2, v25

    iget-object v3, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v25

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3015
    iget v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    iget-object v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v0, v25

    invoke-virtual {v1, v0, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3016
    iget-object v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3017
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3020
    iget-object v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 3021
    iget-object v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    iput v11, v0, Landroid/text/TextPaint;->linkColor:I

    goto :goto_27

    :cond_49
    move-object v13, v11

    .line 3023
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3024
    iget v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    iget-object v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v0, v25

    invoke-virtual {v1, v0, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3025
    iget-object v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 3026
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3028
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3029
    iget v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    iget-object v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v0, v25

    iget-object v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3030
    iget-object v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->settingWallpaperProgressTextLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3031
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_4a
    :goto_27
    move-object v15, v13

    goto/16 :goto_29

    :cond_4b
    move-object v13, v0

    move v10, v7

    move v15, v8

    const v22, 0x3e4ccccd    # 0.2f

    const/high16 v30, 0x3f800000    # 1.0f

    .line 3042
    iget-object v0, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v0, :cond_4a

    .line 3043
    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v11, v14, v30

    if-gez v11, :cond_4c

    .line 3045
    iget v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsedHeight:I

    int-to-float v2, v2

    invoke-static {v2, v0, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 3046
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v15, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v3, 0xff

    const/16 v4, 0x1f

    .line 3047
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_28

    .line 3049
    :cond_4c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3051
    :goto_28
    iget v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v3, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v2, v25

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3052
    iget-object v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget v3, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v4, v4, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v25

    add-float v7, v10, v3

    iput v7, v2, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->x:F

    .line 3053
    iget-object v2, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iput v9, v2, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->y:F

    .line 3054
    iget-object v2, v2, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->paint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, v13, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v4, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    iget-object v7, v3, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->spoilers:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v8, v13

    move v13, v0

    move-object v0, v8

    move-object/from16 v8, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;ILandroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V

    .line 3055
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getAdaptiveEmojiColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    move-object v1, v0

    if-gez v11, :cond_4e

    .line 3056
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMore:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_4e

    .line 3057
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3059
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextClip:Lorg/telegram/ui/GradientClip;

    if-nez v0, :cond_4d

    .line 3060
    new-instance v0, Lorg/telegram/ui/GradientClip;

    invoke-direct {v0}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextClip:Lorg/telegram/ui/GradientClip;

    .line 3062
    :cond_4d
    iget v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v2, v2, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    div-float v0, v0, v25

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3063
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreX:I

    int-to-float v2, v2

    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMore:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreY:I

    iget v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreH:I

    sub-int/2addr v3, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreX:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreY:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3064
    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextClip:Lorg/telegram/ui/GradientClip;

    sub-float v7, v30, v14

    invoke-virtual {v2, v1, v0, v7}, Lorg/telegram/ui/GradientClip;->clipOut(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 3065
    iget v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreX:I

    int-to-float v2, v2

    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMore:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreY:I

    iget v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreH:I

    sub-int/2addr v3, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreX:I

    int-to-float v4, v4

    iget-object v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMore:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreY:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3066
    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextClip:Lorg/telegram/ui/GradientClip;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v0, v3, v7}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 3068
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v13, v2

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3070
    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextClip:Lorg/telegram/ui/GradientClip;

    mul-float v3, v7, v19

    sub-float v7, v30, v7

    mul-float/2addr v3, v7

    const/4 v4, 0x3

    invoke-virtual {v2, v1, v0, v4, v3}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 3072
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3074
    :cond_4e
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    if-gez v11, :cond_4f

    .line 3076
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMore:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_4f

    .line 3077
    iget v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreX:I

    int-to-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreY:I

    int-to-float v3, v3

    iget v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextMoreH:I

    int-to-float v4, v4

    div-float v4, v4, v25

    sub-float/2addr v3, v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v4, v4, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->paint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    sub-float v5, v30, v14

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 3080
    :cond_4f
    :goto_29
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3082
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_50

    .line 3083
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 3086
    :cond_50
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v0, :cond_51

    .line 3087
    iget v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsedHeight:I

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-static {v2, v0, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    .line 3089
    :cond_51
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 3090
    :cond_52
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 3092
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_53

    .line 3093
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_2a

    .line 3095
    :cond_53
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    iget v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 3098
    :goto_2a
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 3099
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3100
    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3102
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5c

    .line 3103
    const-string v0, "paintChatActionBackgroundSelected"

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    .line 3104
    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3105
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 3106
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const-string v4, "paintChatActionBackgroundDarken"

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3108
    :cond_54
    iget v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->dimAmount:F

    const/16 v24, 0x0

    cmpl-float v0, v0, v24

    if-lez v0, :cond_55

    .line 3109
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3112
    :cond_55
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x1f

    if-eq v0, v4, :cond_56

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x21

    if-ne v0, v4, :cond_59

    .line 3113
    :cond_56
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_57

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    goto :goto_2b

    :cond_57
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    .line 3114
    :goto_2b
    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 3115
    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_58

    const v0, 0x24ffffff

    goto :goto_2c

    :cond_58
    const/high16 v0, 0x10000000

    :goto_2c
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3116
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3117
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3120
    :cond_59
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x1f

    if-eq v0, v4, :cond_5b

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x21

    if-eq v0, v4, :cond_5b

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v11, 0x15

    if-eq v0, v11, :cond_5b

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x16

    if-eq v0, v4, :cond_5b

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_5b

    .line 3121
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 3122
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 3123
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3124
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->starsPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3126
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 3127
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-nez v0, :cond_5a

    .line 3128
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 3130
    :cond_5a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2d

    .line 3132
    :cond_5b
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 3136
    :cond_5c
    :goto_2d
    iget-boolean v0, v12, Lorg/telegram/messenger/MessageObject;->settingAvatar:Z

    if-eqz v0, :cond_5e

    iget v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    cmpl-float v3, v2, v30

    if-eqz v3, :cond_5e

    const v0, 0x3dda740e

    add-float/2addr v2, v0

    .line 3137
    iput v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    :cond_5d
    const/4 v2, 0x0

    goto :goto_2e

    :cond_5e
    if-nez v0, :cond_5d

    .line 3138
    iget v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_5f

    const v3, 0x3dda740e

    sub-float/2addr v0, v3

    .line 3139
    iput v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    .line 3141
    :cond_5f
    :goto_2e
    iget v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    move/from16 v3, v30

    invoke-static {v0, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_61

    .line 3143
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_60

    .line 3144
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 3146
    :cond_60
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 3147
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3148
    iget v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3149
    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 3150
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 3151
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->draw(Landroid/graphics/Canvas;FF)V

    .line 3152
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3154
    :cond_61
    iget v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    const/high16 v30, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v30

    if-eqz v0, :cond_62

    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_62

    .line 3155
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3156
    iget v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->progressToProgress:F

    sub-float v7, v30, v0

    .line 3157
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v1, v7, v7, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3158
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v10, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3159
    iget v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v0, v25

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3160
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 3161
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3164
    :cond_62
    iget-boolean v0, v12, Lorg/telegram/messenger/MessageObject;->flickerLoading:Z

    if-eqz v0, :cond_64

    .line 3165
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez v0, :cond_63

    .line 3166
    new-instance v0, Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    move/from16 v2, v25

    .line 3167
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setGradientScale(F)V

    .line 3168
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    .line 3169
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v2, 0x3da3d70a    # 0.08f

    const/4 v3, -0x1

    .line 3170
    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    move/from16 v4, v22

    .line 3171
    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    .line 3172
    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const v6, 0x3f333333    # 0.7f

    .line 3173
    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    .line 3169
    invoke-virtual {v0, v2, v5, v4, v3}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 3175
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v30, 0x3f800000    # 1.0f

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3177
    :cond_63
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    .line 3178
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v2, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    .line 3179
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    move/from16 v2, v21

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 3180
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2f

    :cond_64
    move/from16 v2, v21

    .line 3181
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_65

    .line 3182
    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    .line 3183
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 3184
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    .line 3185
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3186
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3187
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    .line 3191
    :cond_65
    :goto_2f
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3193
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_6f

    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPath:Landroid/graphics/Path;

    if-eqz v0, :cond_6f

    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonText:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_6f

    .line 3194
    const-string v0, "paintChatActionBackground"

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    .line 3195
    const-string v2, "paintChatActionBackgroundDarken"

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    .line 3196
    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x42820000    # 65.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 3197
    iget-object v4, v15, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 3198
    iget-object v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v5, :cond_66

    .line 3199
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v15, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v8, v15, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    add-float/2addr v8, v3

    iget v9, v15, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_30

    .line 3201
    :cond_66
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v15, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    iget v7, v15, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    add-float/2addr v7, v3

    iget v8, v15, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v8, v4

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 3203
    :goto_30
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3204
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3206
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    .line 3207
    invoke-virtual {v0}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v4

    .line 3208
    iget-object v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v5, :cond_67

    invoke-interface {v5}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v5

    goto :goto_31

    :cond_67
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v5

    .line 3209
    :goto_31
    iget-object v6, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPaintFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-eqz v6, :cond_68

    iget-boolean v6, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPaintFilterDark:Z

    if-eq v6, v5, :cond_6c

    .line 3210
    :cond_68
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 3211
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/ColorMatrixColorFilter;

    if-eqz v7, :cond_69

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_69

    .line 3212
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v7

    check-cast v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v7, v6}, Landroid/graphics/ColorMatrixColorFilter;->getColorMatrix(Landroid/graphics/ColorMatrix;)V

    :cond_69
    if-eqz v5, :cond_6a

    const v7, 0x3dcccccd    # 0.1f

    goto :goto_32

    :cond_6a
    const v7, -0x425c28f6    # -0.08f

    .line 3214
    :goto_32
    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    if-eqz v5, :cond_6b

    const v7, 0x3e19999a    # 0.15f

    goto :goto_33

    :cond_6b
    const v7, 0x3dcccccd    # 0.1f

    .line 3215
    :goto_33
    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 3216
    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v7, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPaintFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 3217
    iput-boolean v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPaintFilterDark:Z

    .line 3219
    :cond_6c
    iget-object v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPaintFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3220
    iget-object v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPaintEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 3221
    iget-object v5, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3222
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3223
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 3225
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 3226
    invoke-virtual {v2}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v0

    .line 3227
    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPaintEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 3228
    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3229
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_6d
    const v0, 0x4221b852    # 40.43f

    .line 3231
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x41c47ae1    # 24.56f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3232
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonText:Lorg/telegram/ui/Components/Text;

    const v2, 0x4221b852    # 40.43f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v15, Lorg/telegram/ui/Cells/ChatActionCell;->giftRibbonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    const/high16 v25, 0x40000000    # 2.0f

    div-float v3, v3, v25

    sub-float/2addr v2, v3

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 3233
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_34

    :cond_6e
    move-object v15, v0

    :cond_6f
    :goto_34
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 3237
    invoke-virtual {v15, v1, v5, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->drawReactions(Landroid/graphics/Canvas;ZLjava/lang/Integer;)V

    .line 3239
    iget-object v0, v15, Lorg/telegram/ui/Cells/ChatActionCell;->transitionParams:Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell$TransitionParams;->recordDrawingState()V

    .line 3240
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 3890
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3891
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3892
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    return-void

    .line 3895
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_3

    .line 3896
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 3897
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3898
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 3899
    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 3900
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3901
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 3902
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 3904
    new-instance v7, Lorg/telegram/ui/Cells/ChatActionCell$1;

    invoke-direct {v7, p0, v4}, Lorg/telegram/ui/Cells/ChatActionCell$1;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;Landroid/text/style/CharacterStyle;)V

    const/16 v4, 0x21

    .line 3912
    invoke-virtual {v1, v7, v5, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3914
    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    .line 3916
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    .line 3917
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3919
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v0, 0x1

    .line 3921
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1119
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    iget p4, p2, Landroid/graphics/RectF;->top:F

    float-to-int p4, p4

    iget p5, p2, Landroid/graphics/RectF;->right:F

    float-to-int p5, p5

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onLongPress()Z
    .locals 3

    .line 1104
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->onActionLongClick:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 1105
    invoke-interface {v0, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    const/4 v0, 0x1

    return v0

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_1

    .line 1112
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchX:F

    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchY:F

    invoke-interface {v0, p0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didLongPress(Lorg/telegram/ui/Cells/ChatActionCell;FF)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method protected onMeasure(II)V
    .locals 24

    move-object/from16 v0, p0

    .line 1793
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/high16 v2, 0x41600000    # 14.0f

    if-nez v1, :cond_0

    .line 1794
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 1795
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparatorTopPadding:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 1798
    :cond_0
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    const/16 v4, 0x21

    const/16 v5, 0x23

    const/16 v6, 0x1e

    const/16 v7, 0x12

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_8

    .line 1799
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v3

    int-to-float v3, v3

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v10

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const v10, 0x3f1eb852    # 0.62f

    mul-float/2addr v3, v10

    const/high16 v10, 0x42080000    # 34.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v3, v10

    :goto_0
    float-to-int v3, v3

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v11

    sub-int/2addr v10, v11

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v10, v11

    const/high16 v11, 0x42800000    # 64.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    .line 1800
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v1, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_3

    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v3, v5, :cond_4

    .line 1801
    :cond_3
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v3, v3

    const v10, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    .line 1803
    :cond_4
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/high16 v10, 0x42d40000    # 106.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v3, v10

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 1804
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0x1f

    const/high16 v11, 0x429c0000    # 78.0f

    if-ne v3, v10, :cond_5

    .line 1805
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/high16 v10, 0x43400000    # 192.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    .line 1806
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 1808
    :cond_5
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v3, v4, :cond_6

    .line 1809
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    const/high16 v10, 0x435c0000    # 220.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    .line 1810
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    .line 1812
    :cond_6
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1813
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v10, v10

    const v11, 0x3f333333    # 0.7f

    mul-float/2addr v10, v11

    invoke-static {v10, v8}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_1

    .line 1815
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_8
    :goto_1
    const/high16 v3, 0x41f00000    # 30.0f

    .line 1818
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1819
    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    if-eq v11, v10, :cond_9

    .line 1820
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wasLayout:Z

    .line 1821
    iput v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 1822
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->buildLayout()V

    :cond_9
    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v12, 0x41200000    # 10.0f

    if-eqz v1, :cond_b

    .line 1826
    iget v13, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v14, 0xb

    if-ne v13, v14, :cond_a

    .line 1827
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    :goto_2
    add-int/2addr v13, v14

    goto :goto_3

    .line 1828
    :cond_a
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1829
    iget v13, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    goto :goto_2

    :cond_b
    move v13, v9

    .line 1834
    :goto_3
    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v14}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v14

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x41000000    # 8.0f

    if-eqz v14, :cond_e

    .line 1835
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    iget-boolean v3, v3, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-nez v3, :cond_c

    .line 1836
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v3, v4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v9, v3, v4

    .line 1838
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v9, v3

    .line 1839
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-nez v4, :cond_d

    .line 1840
    iget v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    .line 1841
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    :goto_4
    add-int/2addr v9, v3

    :cond_d
    move/from16 p2, v2

    const/high16 v23, 0x41c00000    # 24.0f

    goto/16 :goto_14

    .line 1843
    :cond_e
    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-eqz v14, :cond_f

    .line 1844
    invoke-virtual {v14}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->height()I

    move-result v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int v9, v3, v4

    .line 1845
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-nez v4, :cond_d

    .line 1846
    iget v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    .line 1847
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    goto :goto_4

    .line 1849
    :cond_f
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1850
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->isGiftChannel(Lorg/telegram/messenger/MessageObject;)Z

    move-result v14

    move/from16 p2, v2

    .line 1851
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getImageSize(Lorg/telegram/messenger/MessageObject;)I

    move-result v2

    .line 1853
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v18

    move/from16 v19, v3

    const/4 v3, 0x2

    const/high16 v20, 0x40800000    # 4.0f

    if-eqz v18, :cond_12

    move/from16 p1, v11

    .line 1854
    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    move/from16 v18, v12

    iget v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v11, v12

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    if-lez v2, :cond_10

    mul-int/2addr v12, v3

    add-int/2addr v12, v2

    :cond_10
    add-int/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-nez v12, :cond_11

    move v12, v9

    goto :goto_5

    :cond_11
    iget-object v12, v12, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    move-result v12

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    add-int v12, v12, v21

    :goto_5
    add-int/2addr v11, v12

    int-to-float v11, v11

    goto :goto_7

    :cond_12
    move/from16 p1, v11

    move/from16 v18, v12

    .line 1856
    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftRectSize:I

    int-to-float v12, v12

    const v21, 0x3d99999a    # 0.075f

    mul-float v12, v12, v21

    add-float/2addr v11, v12

    int-to-float v12, v2

    add-float/2addr v11, v12

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-nez v12, :cond_13

    move v12, v9

    goto :goto_6

    :cond_13
    iget-object v12, v12, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    move-result v12

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    add-int v12, v12, v21

    :goto_6
    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1858
    :goto_7
    iput v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1859
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    const/high16 v21, 0x40c00000    # 6.0f

    const/16 v22, 0x0

    if-eqz v12, :cond_17

    .line 1860
    invoke-virtual {v12}, Landroid/text/Layout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1861
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    if-le v12, v8, :cond_14

    .line 1862
    iget v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    const/high16 v23, 0x41c00000    # 24.0f

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/text/Layout;->getHeight()I

    move-result v15

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v15, v5

    add-int/2addr v12, v15

    iput v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    goto :goto_8

    :cond_14
    const/high16 v23, 0x41c00000    # 24.0f

    :goto_8
    if-eqz v14, :cond_15

    move/from16 v5, v21

    goto :goto_9

    :cond_15
    move/from16 v5, v22

    .line 1864
    :goto_9
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v11, v5

    .line 1865
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_16

    .line 1866
    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    const/high16 v8, 0x41100000    # 9.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    int-to-float v5, v5

    add-float/2addr v11, v5

    .line 1868
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumReleasedText:Lorg/telegram/ui/Components/Text;

    if-eqz v5, :cond_18

    .line 1869
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v11, v5

    goto :goto_a

    :cond_17
    const/high16 v23, 0x41c00000    # 24.0f

    .line 1872
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v11, v5

    .line 1873
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v5, v8

    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1876
    :cond_18
    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-nez v5, :cond_19

    move v5, v9

    goto :goto_b

    :cond_19
    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    .line 1877
    :goto_b
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-nez v8, :cond_1a

    .line 1878
    iput v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    goto/16 :goto_e

    .line 1879
    :cond_1a
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    if-eqz v8, :cond_1b

    .line 1880
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    add-int/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    goto :goto_e

    .line 1881
    :cond_1b
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v12, v8, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v12, v7, :cond_1f

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isStarGiftAction()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_c

    .line 1883
    :cond_1c
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v7, v7, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v7, v6, :cond_1d

    .line 1884
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v5, v7

    add-int/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    goto :goto_e

    .line 1885
    :cond_1d
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    if-eqz v6, :cond_1e

    .line 1886
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    add-int/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    goto :goto_e

    .line 1887
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    if-le v5, v3, :cond_21

    .line 1888
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v7, v7, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v7, v7, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    goto :goto_e

    .line 1882
    :cond_1f
    :goto_c
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-nez v7, :cond_20

    move/from16 v7, v22

    goto :goto_d

    :cond_20
    move/from16 v7, v18

    :goto_d
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v5, v7

    add-int/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1890
    :cond_21
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumReleasedText:Lorg/telegram/ui/Components/Text;

    if-eqz v5, :cond_22

    .line 1891
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1894
    :cond_22
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    if-eqz v14, :cond_23

    move/from16 v22, p2

    :cond_23
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    add-int/2addr v13, v5

    .line 1898
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v5, v13

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 1900
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x41900000    # 18.0f

    if-eqz v6, :cond_27

    int-to-float v5, v5

    sub-float/2addr v5, v11

    if-eqz v6, :cond_24

    .line 1901
    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    goto :goto_f

    :cond_24
    move v6, v9

    :goto_f
    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v11, v5

    .line 1902
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isStarGiftAction()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1903
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v11, v5

    .line 1905
    :cond_25
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    .line 1906
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v5, v12

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v11, v14

    iget v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    add-float/2addr v5, v15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v5, v15

    iget-object v15, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v15, :cond_26

    invoke-virtual {v15}, Landroid/text/Layout;->getHeight()I

    move-result v15

    goto :goto_10

    :cond_26
    move v15, v9

    :goto_10
    int-to-float v15, v15

    add-float/2addr v11, v15

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v11, v15

    invoke-virtual {v6, v12, v14, v5, v11}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_11

    :cond_27
    const/high16 v5, 0x42200000    # 40.0f

    .line 1908
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v13, v6

    .line 1909
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1910
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_28

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_28

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v5, :cond_28

    .line 1911
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v13, v5

    .line 1912
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumAdditionalHeight:I

    .line 1915
    :cond_28
    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    shl-int/2addr v5, v6

    .line 1916
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1917
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1918
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsSize:I

    if-eq v6, v5, :cond_29

    .line 1919
    iput v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starsSize:I

    .line 1920
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resetPositions()V

    .line 1923
    :cond_29
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1924
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v5, v6

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 1925
    iput v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1926
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-lez v2, :cond_2a

    mul-int/2addr v6, v3

    add-int/2addr v6, v2

    :cond_2a
    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1927
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumSubtitleLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2b

    .line 1928
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v2, v11

    add-int/2addr v6, v2

    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1930
    :cond_2b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumReleasedText:Lorg/telegram/ui/Components/Text;

    if-eqz v2, :cond_2c

    .line 1931
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v2, v6

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1934
    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTitleLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2d

    .line 1935
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v2, v11

    add-int/2addr v6, v2

    iput v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1937
    :cond_2d
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-nez v6, :cond_2e

    goto :goto_12

    .line 1939
    :cond_2e
    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v9

    :goto_12
    add-int/2addr v2, v9

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1941
    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    int-to-float v6, v6

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    sub-float/2addr v6, v9

    div-float/2addr v6, v7

    .line 1942
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v7, :cond_2f

    add-int/2addr v2, v5

    const/high16 v4, 0x42000000    # 32.0f

    .line 1943
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v2, v7

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundButtonTop:I

    .line 1944
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v6, v7

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundButtonTop:I

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    add-float/2addr v6, v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundButtonTop:I

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v11

    add-int/2addr v8, v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    mul-int/2addr v11, v3

    add-int/2addr v8, v11

    int-to-float v3, v8

    invoke-virtual {v2, v7, v9, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1945
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    goto :goto_13

    .line 1947
    :cond_2f
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v2

    if-nez v2, :cond_31

    if-eqz v1, :cond_30

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0x22

    if-eq v2, v7, :cond_31

    if-eq v2, v4, :cond_31

    const/16 v4, 0x23

    if-eq v2, v4, :cond_31

    .line 1948
    :cond_30
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v6, v4

    iget v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundButtonTop:I

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonWidth:F

    add-float/2addr v6, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundButtonTop:I

    const/high16 v9, 0x41880000    # 17.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v8, v9

    int-to-float v3, v8

    invoke-virtual {v2, v4, v7, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1949
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    .line 1952
    :cond_31
    :goto_13
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRectHeight:I

    add-int/2addr v5, v2

    .line 1954
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v5, v2

    .line 1955
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-nez v3, :cond_32

    .line 1956
    iget v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    .line 1957
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    add-int/2addr v5, v2

    :cond_32
    move v9, v5

    .line 1959
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botInlineButtons:Lorg/telegram/messenger/BotInlineKeyboard$Source;

    if-eqz v2, :cond_33

    const/high16 v2, 0x42300000    # 44.0f

    .line 1960
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v9, v2

    .line 1964
    :cond_33
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_34

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-nez v3, :cond_34

    .line 1965
    iget v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    .line 1966
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    add-int/2addr v13, v2

    .line 1969
    :cond_34
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1970
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->titleHeight:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v13, v2

    :cond_35
    if-eqz v1, :cond_36

    .line 1973
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1974
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparatorTopPadding:I

    add-int/2addr v1, v9

    invoke-virtual {v0, v10, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_15

    .line 1976
    :cond_36
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparatorTopPadding:I

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v1, v2

    add-int/2addr v1, v13

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v10, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1978
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 11

    .line 3856
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_2

    .line 3857
    iget p1, v9, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 3859
    iget-object p1, v9, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 3860
    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3861
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3866
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentVideoLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {p1, v2}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v2, "g"

    const-string v4, "50_50_b"

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 3867
    iget p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1204
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1206
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchX:F

    .line 1207
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->lastTouchY:F

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_7

    .line 1211
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->onActionClick:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_4

    .line 1212
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1213
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundLeft:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRight:I

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_4

    .line 1214
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    .line 1216
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/BaseCell;->startCheckLongPress()V

    move v8, v7

    goto :goto_0

    .line 1218
    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    if-eqz v2, :cond_4

    .line 1219
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 1220
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->onActionClick:Landroid/view/View$OnClickListener;

    invoke-interface {v2, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1221
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    goto :goto_0

    .line 1222
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1223
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    goto :goto_0

    .line 1224
    :cond_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 1225
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundLeft:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_3

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRight:I

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-lez v2, :cond_4

    .line 1226
    :cond_3
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    .line 1228
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/BaseCell;->cancelCheckLongPress()V

    .line 1233
    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v6, :cond_5

    .line 1234
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/BaseCell;->cancelCheckLongPress()V

    :cond_5
    if-eqz v8, :cond_6

    return v7

    .line 1237
    :cond_6
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1240
    :cond_7
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    if-eqz v9, :cond_8

    invoke-virtual {v9, v1, v8}, Lorg/telegram/ui/Components/TopicSeparator;->onTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    return v7

    .line 1244
    :cond_8
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-eqz v9, :cond_9

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_9

    return v7

    .line 1248
    :cond_9
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    iget v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayoutX:F

    iget v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayoutY:F

    invoke-virtual {v9, v10, v11, v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->onTouchEvent(FFLandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_a

    return v7

    .line 1252
    :cond_a
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_b

    return v7

    .line 1256
    :cond_b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x4

    const-class v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostSuccess;

    const-class v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostRefund;

    const/16 v13, 0x15

    if-nez v9, :cond_17

    .line 1257
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v5, :cond_3d

    .line 1258
    iget v5, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0xb

    if-eq v5, v9, :cond_c

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1259
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    move v5, v7

    goto :goto_1

    :cond_d
    move v5, v8

    .line 1262
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v9

    if-ne v9, v10, :cond_f

    iget v9, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v9, v13, :cond_e

    const/16 v10, 0x16

    if-ne v9, v10, :cond_f

    :cond_e
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1263
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    move v5, v7

    .line 1266
    :cond_f
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v9, :cond_10

    iget-boolean v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    if-eqz v10, :cond_10

    .line 1267
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v13, v9, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->x:F

    iget v15, v9, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->y:F

    iget-object v9, v9, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v13

    iget-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    move/from16 v16, v8

    iget v8, v14, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->y:F

    iget-object v14, v14, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/Layout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v8, v14

    invoke-virtual {v10, v13, v15, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1268
    invoke-virtual {v10, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1269
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPressed:Z

    move v5, v7

    goto :goto_2

    :cond_10
    move/from16 v16, v8

    .line 1273
    :cond_11
    :goto_2
    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumButtonLayout:Landroid/text/StaticLayout;

    if-eqz v8, :cond_13

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-nez v8, :cond_12

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->buttonClickableAsImage:Z

    if-eqz v8, :cond_13

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1274
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v5, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1275
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    move v5, v7

    :cond_13
    if-nez v5, :cond_14

    .line 1278
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isMessageActionSuggestedPostApproval()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1279
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPressed:Z

    move v5, v7

    :cond_14
    if-nez v5, :cond_16

    .line 1282
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_15

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v8, :cond_15

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    goto :goto_3

    :cond_15
    const/4 v8, 0x0

    :goto_3
    new-array v6, v6, [Ljava/lang/Class;

    aput-object v12, v6, v16

    aput-object v11, v6, v7

    invoke-static {v8, v6}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->isInstance(Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1283
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPressed:Z

    move v5, v7

    :cond_16
    if-eqz v5, :cond_3e

    .line 1287
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/BaseCell;->startCheckLongPress()V

    goto/16 :goto_7

    :cond_17
    move/from16 v16, v8

    .line 1291
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v6, :cond_18

    .line 1292
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/BaseCell;->cancelCheckLongPress()V

    .line 1294
    :cond_18
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    if-eqz v8, :cond_1d

    .line 1295
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_1a

    .line 1296
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundLeft:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_19

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRight:I

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-lez v5, :cond_3d

    :cond_19
    move/from16 v8, v16

    .line 1297
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    move v5, v8

    goto/16 :goto_7

    :cond_1a
    move/from16 v8, v16

    .line 1300
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_1c

    .line 1301
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->onActionClick:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_1b

    .line 1302
    invoke-interface {v5, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1304
    :cond_1b
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    goto/16 :goto_6

    .line 1305
    :cond_1c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_3d

    .line 1306
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->actionPressed:Z

    goto/16 :goto_6

    :cond_1d
    move/from16 v8, v16

    .line 1308
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPressed:Z

    if-eqz v9, :cond_26

    .line 1309
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-eq v9, v7, :cond_22

    if-eq v9, v6, :cond_1f

    if-eq v9, v5, :cond_1e

    goto/16 :goto_6

    .line 1331
    :cond_1e
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPressed:Z

    .line 1332
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto/16 :goto_6

    .line 1335
    :cond_1f
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v5, :cond_20

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    if-nez v6, :cond_21

    :cond_20
    const/4 v8, 0x0

    goto :goto_5

    .line 1339
    :cond_21
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v8, v5, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->x:F

    iget v9, v5, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->y:F

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v8

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget v11, v10, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->y:F

    iget-object v10, v10, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v11, v10

    invoke-virtual {v6, v8, v9, v5, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1340
    invoke-virtual {v6, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_3d

    const/4 v8, 0x0

    .line 1341
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPressed:Z

    :goto_4
    move v5, v7

    goto/16 :goto_7

    .line 1336
    :goto_5
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPressed:Z

    goto :goto_4

    .line 1311
    :cond_22
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textPressed:Z

    invoke-virtual {v9, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1312
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 1313
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_23

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_23

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v9, :cond_23

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoAppendTasks;

    aput-object v14, v13, v8

    const-class v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionTodoCompletions;

    aput-object v8, v13, v7

    const-class v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    aput-object v8, v13, v6

    aput-object v12, v13, v5

    aput-object v11, v13, v10

    invoke-static {v9, v13}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->isInstance(Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1314
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result v6

    invoke-interface {v5, v0, v6}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didPressReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V

    goto/16 :goto_6

    .line 1315
    :cond_23
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    if-eqz v5, :cond_25

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextUncollapsed:Z

    if-nez v5, :cond_25

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v5, :cond_25

    .line 1316
    iget-object v1, v5, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsedHeight:I

    sub-int/2addr v1, v2

    .line 1317
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextUncollapsed:Z

    .line 1318
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v2, :cond_24

    const/4 v8, 0x0

    .line 1319
    invoke-interface {v2, v0, v8}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->forceUpdate(Lorg/telegram/ui/Cells/ChatActionCell;Z)V

    .line 1320
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_24

    .line 1321
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_24
    return v7

    .line 1325
    :cond_25
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-eqz v5, :cond_3d

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1326
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->open()V

    return v7

    .line 1347
    :cond_26
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    const/16 v9, 0x1e

    const/16 v10, 0x12

    const/16 v11, 0x19

    const/16 v12, 0x1f

    if-eqz v8, :cond_31

    .line 1348
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v7, :cond_2a

    if-eq v8, v6, :cond_28

    if-eq v8, v5, :cond_27

    goto/16 :goto_6

    :cond_27
    const/4 v8, 0x0

    .line 1382
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 1383
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1384
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto/16 :goto_6

    .line 1387
    :cond_28
    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_3d

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1388
    :cond_29
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    const/4 v8, 0x0

    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1389
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto/16 :goto_6

    :cond_2a
    const/4 v8, 0x0

    .line 1350
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 1351
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftButtonPressed:Z

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1352
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 1353
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v5, :cond_3d

    .line 1354
    iget v5, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v5, v12, :cond_2b

    .line 1355
    invoke-virtual {v0, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 1356
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->openStarsGiftTransaction()V

    goto/16 :goto_6

    :cond_2b
    if-ne v5, v11, :cond_2c

    .line 1358
    invoke-virtual {v0, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 1359
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->openPremiumGiftChannel()V

    goto/16 :goto_6

    :cond_2c
    if-ne v5, v10, :cond_2d

    .line 1361
    invoke-virtual {v0, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 1362
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->openPremiumGiftPreview()V

    goto/16 :goto_6

    :cond_2d
    if-ne v5, v9, :cond_2e

    .line 1364
    invoke-virtual {v0, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 1365
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->openStarsGiftTransaction()V

    goto/16 :goto_6

    .line 1366
    :cond_2e
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_2f

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    if-eqz v6, :cond_2f

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->balance_too_low:Z

    if-eqz v5, :cond_2f

    .line 1367
    invoke-virtual {v0, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 1368
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->openStarsNeedSheet()V

    goto/16 :goto_6

    .line 1370
    :cond_2f
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/ImageUpdater;

    if-nez v5, :cond_3d

    .line 1372
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->buttonClickableAsImage:Z

    if-eqz v5, :cond_30

    .line 1373
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v5, v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    goto/16 :goto_6

    .line 1375
    :cond_30
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v5, v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickButton(Lorg/telegram/ui/Cells/ChatActionCell;)V

    goto/16 :goto_6

    .line 1393
    :cond_31
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    if-eqz v8, :cond_3d

    .line 1394
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v7, :cond_35

    if-eq v8, v6, :cond_33

    if-eq v8, v5, :cond_32

    goto/16 :goto_6

    :cond_32
    const/4 v8, 0x0

    .line 1432
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_6

    :cond_33
    const/4 v8, 0x0

    .line 1435
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isNewStyleButtonLayout()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1436
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1437
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_6

    .line 1440
    :cond_34
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1441
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_6

    :cond_35
    const/4 v8, 0x0

    .line 1396
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 1397
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsed:Z

    if-eqz v5, :cond_37

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextUncollapsed:Z

    if-nez v5, :cond_37

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v5, :cond_37

    .line 1398
    iget-object v1, v5, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextCollapsedHeight:I

    sub-int/2addr v1, v2

    .line 1399
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextUncollapsed:Z

    .line 1400
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v2, :cond_36

    const/4 v8, 0x0

    .line 1401
    invoke-interface {v2, v0, v8}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->forceUpdate(Lorg/telegram/ui/Cells/ChatActionCell;Z)V

    .line 1402
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_36

    .line 1403
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_36
    return v7

    .line 1408
    :cond_37
    iget v5, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v5, v12, :cond_38

    .line 1409
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->openStarsGiftTransaction()V

    goto :goto_6

    :cond_38
    if-ne v5, v11, :cond_39

    .line 1411
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->openPremiumGiftChannel()V

    goto :goto_6

    :cond_39
    if-ne v5, v10, :cond_3a

    .line 1413
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->openPremiumGiftPreview()V

    goto :goto_6

    :cond_3a
    if-ne v5, v9, :cond_3b

    .line 1415
    invoke-direct {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->openStarsGiftTransaction()V

    goto :goto_6

    .line 1416
    :cond_3b
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v6, :cond_3d

    if-ne v5, v13, :cond_3c

    .line 1419
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v5, :cond_3c

    .line 1422
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ImageUpdater;->cancel()V

    goto :goto_6

    .line 1426
    :cond_3c
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v5, v0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    const/4 v8, 0x0

    .line 1427
    invoke-virtual {v0, v8}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3d
    :goto_6
    const/4 v5, 0x0

    :cond_3e
    :goto_7
    if-nez v5, :cond_4a

    .line 1449
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_40

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-nez v6, :cond_3f

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    if-eqz v6, :cond_4a

    :cond_3f
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_4a

    .line 1450
    :cond_40
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v6, :cond_44

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->spoilers:Ljava/util/List;

    if-eqz v6, :cond_44

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_44

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->isSpoilerRevealing:Z

    if-nez v6, :cond_44

    .line 1451
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->spoilers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 1452
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget v11, v10, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->x:F

    sub-float v11, v3, v11

    float-to-int v11, v11

    iget v10, v10, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->y:F

    sub-float v10, v4, v10

    float-to-int v10, v10

    invoke-virtual {v9, v11, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_41

    const/4 v9, 0x0

    .line 1453
    iput-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    .line 1454
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_43

    .line 1455
    iput-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    :cond_42
    :goto_8
    move v5, v7

    goto :goto_9

    .line 1458
    :cond_43
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    if-ne v8, v5, :cond_42

    .line 1459
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->isSpoilerRevealing:Z

    .line 1460
    new-instance v6, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 1468
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v5, v5, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1469
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v5, v6

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 1470
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilerPressed:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    iget v9, v8, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->x:F

    sub-float v9, v3, v9

    float-to-int v9, v9

    int-to-float v9, v9

    iget v8, v8, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->y:F

    sub-float v8, v4, v8

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v9, v8, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    .line 1471
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    goto :goto_8

    :cond_44
    :goto_9
    if-nez v5, :cond_49

    .line 1479
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_49

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    int-to-float v9, v8

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_49

    iget v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v10, v9

    cmpl-float v10, v4, v10

    if-ltz v10, :cond_49

    iget v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_49

    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_49

    int-to-float v8, v9

    sub-float/2addr v4, v8

    .line 1481
    iget v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    if-nez v5, :cond_4a

    float-to-int v4, v4

    .line 1484
    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v4

    .line 1485
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 1486
    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    cmpg-float v9, v8, v3

    if-gtz v9, :cond_48

    .line 1487
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    add-float/2addr v8, v4

    cmpl-float v3, v8, v3

    if-ltz v3, :cond_48

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spannable;

    if-eqz v3, :cond_48

    .line 1488
    check-cast v2, Landroid/text/Spannable;

    .line 1489
    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v2, v6, v6, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 1491
    array-length v3, v2

    if-eqz v3, :cond_46

    .line 1492
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_45

    const/16 v16, 0x0

    .line 1493
    aget-object v2, v2, v16

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto :goto_a

    :cond_45
    const/16 v16, 0x0

    .line 1496
    aget-object v2, v2, v16

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-ne v2, v3, :cond_47

    .line 1497
    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->openLink(Landroid/text/style/CharacterStyle;)V

    goto :goto_a

    :cond_46
    const/4 v9, 0x0

    .line 1502
    iput-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    :cond_47
    move v7, v5

    :goto_a
    move v5, v7

    goto :goto_b

    :cond_48
    const/4 v9, 0x0

    .line 1505
    iput-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto :goto_b

    :cond_49
    const/4 v9, 0x0

    .line 1509
    iput-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    :cond_4a
    :goto_b
    if-nez v5, :cond_4b

    .line 1515
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->checkBotButtonMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_4b
    if-nez v5, :cond_4c

    .line 1519
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_4c
    return v5
.end method

.method public setCustomDate(IZZ)V
    .locals 3

    .line 546
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    if-eq v0, p1, :cond_4

    div-int/lit16 v0, v0, 0xe10

    div-int/lit16 v1, p1, 0xe10

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    const p2, 0x7ffffffe

    if-ne p1, p2, :cond_1

    .line 552
    const-string p2, "MessageScheduledUntilOnline"

    sget v0, Lorg/telegram/messenger/R$string;->MessageScheduledUntilOnline:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 554
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->MessageScheduledOn:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "MessageScheduledOn"

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    int-to-long v0, p1

    .line 557
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object p2

    .line 559
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    .line 560
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 563
    :cond_3
    iput-object p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 564
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    .line 565
    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/ChatActionCell;->updateTextInternal(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCustomText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 587
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->updateTextInternal(Z)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    return-void
.end method

.method public setInvalidateColors(Z)V
    .locals 1

    .line 3925
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateColors:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3928
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateColors:Z

    .line 3929
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void
.end method

.method public setInvalidateListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3987
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setInvalidateWithParent(Landroid/view/View;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateWithParent:Landroid/view/View;

    return-void
.end method

.method public setInvalidatesParent(Z)V
    .locals 0

    .line 3982
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->invalidatesParent:Z

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    const/16 v1, 0xa0

    .line 974
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v10, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v3, 0x15

    if-ne v2, v10, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    if-nez v2, :cond_2

    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_3

    :cond_2
    if-nez p2, :cond_3

    iget v2, v10, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v2, v3, :cond_3

    iget-boolean v2, v10, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    if-nez v2, :cond_3

    :goto_0
    return-void

    .line 607
    :cond_3
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v2, v4, :cond_4

    .line 608
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Wrong thread!!!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 611
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v14, 0x0

    .line 612
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botInlineButtons:Lorg/telegram/messenger/BotInlineKeyboard$Source;

    .line 618
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->accessibilityText:Landroid/text/SpannableStringBuilder;

    .line 619
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v15, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    iget v5, v2, Lorg/telegram/messenger/MessageObject;->stableId:I

    iget v6, v10, Lorg/telegram/messenger/MessageObject;->stableId:I

    if-eq v5, v6, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v16, v4

    goto :goto_2

    :cond_6
    :goto_1
    move/from16 v16, v15

    :goto_2
    if-eqz v2, :cond_7

    .line 621
    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->playedGiftAnimation:Z

    iput-boolean v2, v10, Lorg/telegram/messenger/MessageObject;->playedGiftAnimation:Z

    .line 623
    :cond_7
    iput-object v10, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 624
    iput-boolean v4, v10, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 625
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_8

    move v2, v15

    goto :goto_3

    :cond_8
    move v2, v4

    :goto_3
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    .line 626
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 627
    iput v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 628
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->isSpoilerRevealing:Z

    .line 629
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    if-eqz v2, :cond_9

    if-eqz v16, :cond_9

    .line 630
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;->detach()V

    .line 631
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumText:Lorg/telegram/ui/Cells/ChatActionCell$TextLayout;

    .line 632
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftPremiumTextUncollapsed:Z

    :cond_9
    if-nez v16, :cond_a

    .line 634
    iget-boolean v2, v10, Lorg/telegram/messenger/MessageObject;->reactionsChanged:Z

    if-eqz v2, :cond_d

    .line 635
    :cond_a
    iput-boolean v4, v10, Lorg/telegram/messenger/MessageObject;->reactionsChanged:Z

    .line 636
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v2, :cond_b

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->reactions_as_tags:Z

    if-eqz v2, :cond_b

    move v2, v15

    goto :goto_4

    :cond_b
    move v2, v4

    .line 637
    :goto_4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactions()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 638
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactionsInLayout()Z

    move-result v5

    xor-int/2addr v5, v15

    .line 639
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v6, v10, v5, v2, v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->setMessage(Lorg/telegram/messenger/MessageObject;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_5

    .line 641
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v2, v14, v4, v4, v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->setMessage(Lorg/telegram/messenger/MessageObject;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 644
    :cond_d
    :goto_5
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x20

    if-ne v2, v5, :cond_f

    .line 645
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-nez v2, :cond_e

    .line 646
    new-instance v2, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v5, v0, v6}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;-><init>(ILorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    .line 647
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->isCellAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 648
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->attach()V

    .line 651
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->set(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_6

    .line 652
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    if-eqz v2, :cond_10

    .line 653
    invoke-virtual {v2}, Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;->detach()V

    .line 654
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->birthdayLayout:Lorg/telegram/ui/Components/SuggestBirthdayActionLayout;

    .line 656
    :cond_10
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    xor-int/lit8 v5, v16, 0x1

    invoke-virtual {v2, v10, v5}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->set(Lorg/telegram/messenger/MessageObject;Z)V

    .line 657
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 658
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearDecorators()V

    .line 659
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x16

    if-eq v2, v5, :cond_11

    .line 660
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

    .line 662
    :cond_11
    iget-wide v6, v10, Lorg/telegram/messenger/MessageObject;->actionDeleteGroupEventId:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_12

    const v2, 0x3ca3d70a    # 0.02f

    const v6, 0x3f99999a    # 1.2f

    .line 663
    invoke-static {v0, v2, v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/high16 v2, 0x437a0000    # 250.0f

    .line 664
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const-string v7, "paintChatActionText"

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v7

    check-cast v7, Landroid/text/TextPaint;

    invoke-static {v6, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overriddenMaxWidth:I

    .line 665
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->findDrawable(Ljava/lang/CharSequence;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 667
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->setView(Landroid/view/View;)V

    goto :goto_7

    .line 670
    :cond_12
    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->reset(Landroid/view/View;)V

    .line 671
    iput v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->overriddenMaxWidth:I

    .line 673
    :cond_13
    :goto_7
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isStoryMention()Z

    move-result v2

    const/16 v17, 0x8

    const v6, 0x3f333333    # 0.7f

    if-eqz v2, :cond_15

    .line 674
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 675
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 676
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_14

    .line 677
    iget-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z

    if-eqz v3, :cond_14

    .line 678
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v18 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZIZ)V

    goto :goto_8

    .line 680
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 682
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2, v15}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto/16 :goto_38

    .line 683
    :cond_15
    iget v2, v10, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v2, v5, :cond_21

    .line 685
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_17

    .line 686
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v4

    :goto_9
    if-ge v2, v1, :cond_17

    .line 687
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 688
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_16

    goto :goto_a

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 695
    :cond_17
    :goto_a
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz v1, :cond_18

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeWallpaper;

    if-eqz v2, :cond_18

    .line 696
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeWallpaper;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeWallpaper;->new_value:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_b

    .line 697
    :cond_18
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_19

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v1, :cond_19

    .line 699
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_b

    :cond_19
    move-object v1, v14

    .line 701
    :goto_b
    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 702
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v2

    goto :goto_c

    :cond_1a
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    .line 703
    :goto_c
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 704
    iget v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILjava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1f

    .line 706
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_e

    .line 708
    :cond_1b
    const-string v2, "150_150_wallpaper"

    if-eqz v1, :cond_1c

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    if-eqz v3, :cond_1c

    .line 709
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-static {v2}, Lorg/telegram/ui/ChatBackgroundDrawable;->hash(Lorg/telegram/tgnet/TLRPC$WallPaperSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static {v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->createThumb(Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    const/16 v26, 0x0

    const/16 v28, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v27, v1

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v28}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 710
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_1c
    if-eqz v1, :cond_1e

    .line 713
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_1d

    .line 714
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_d

    .line 716
    :cond_1d
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 718
    :goto_d
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-static {v2}, Lorg/telegram/ui/ChatBackgroundDrawable;->hash(Lorg/telegram/tgnet/TLRPC$WallPaperSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static {v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->createThumb(Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    const/16 v26, 0x0

    const/16 v28, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v27, v1

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v28}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 719
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    .line 721
    :cond_1e
    iput-object v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

    .line 723
    :cond_1f
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2, v15}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 725
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getUploadingInfoProgress(Lorg/telegram/messenger/MessageObject;)F

    move-result v1

    cmpl-float v1, v1, v9

    if-nez v1, :cond_20

    .line 727
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    invoke-virtual {v1, v9, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    xor-int/lit8 v3, v16, 0x1

    invoke-virtual {v1, v8, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_38

    .line 730
    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    xor-int/lit8 v3, v16, 0x1

    invoke-virtual {v1, v7, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_38

    :cond_21
    const/16 v5, 0x3e8

    if-ne v2, v3, :cond_29

    .line 733
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->stickerSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2, v15}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 734
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 735
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v14}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 736
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    .line 738
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v2

    .line 740
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 741
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    goto :goto_f

    :cond_22
    move-object v1, v14

    .line 745
    :goto_f
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 747
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_24

    .line 748
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v11, v4

    :goto_10
    if-ge v11, v6, :cond_24

    .line 749
    iget-object v12, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 750
    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v13, :cond_23

    goto :goto_11

    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_24
    move-object v12, v14

    .line 756
    :goto_11
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    if-eqz v5, :cond_26

    if-eqz v2, :cond_25

    move-object v2, v1

    .line 759
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move v6, v4

    invoke-static {v5, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v12, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    move v5, v8

    iget-object v8, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move v12, v6

    move-object v6, v3

    const-string v3, "g"

    move/from16 v18, v5

    const-string v5, "150_150"

    move/from16 v19, v7

    const-string v7, "50_50_b"

    move/from16 v20, v9

    const-wide/16 v9, 0x0

    move v14, v12

    move/from16 v18, v15

    move/from16 v15, v20

    move-object/from16 v12, p1

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    move-object v10, v12

    goto :goto_12

    :cond_25
    move v14, v4

    move/from16 v18, v15

    move v15, v9

    .line 761
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v12, v3}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v3, "150_150"

    const-string v5, "50_50_b"

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_12

    :cond_26
    move v14, v4

    move/from16 v18, v15

    move v15, v9

    .line 765
    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v14}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 766
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v1, :cond_28

    .line 767
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ImageUpdater;->getCurrentImageProgress()F

    move-result v1

    cmpl-float v1, v1, v15

    if-nez v1, :cond_27

    goto :goto_13

    .line 771
    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    xor-int/lit8 v3, v16, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_38

    .line 768
    :cond_28
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    invoke-virtual {v1, v15, v2}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 769
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    xor-int/lit8 v2, v16, 0x1

    xor-int/lit8 v3, v16, 0x1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_38

    :cond_29
    move v14, v4

    move v4, v8

    move/from16 v18, v15

    const/16 v3, 0x12

    const/16 v6, 0x1e

    const/16 v7, 0x21

    const/16 v8, 0x1f

    if-eq v2, v8, :cond_33

    if-eq v2, v7, :cond_33

    if-eq v2, v6, :cond_33

    if-eq v2, v3, :cond_33

    const/16 v9, 0x19

    if-eq v2, v9, :cond_33

    const/16 v9, 0x23

    if-ne v2, v9, :cond_2a

    goto/16 :goto_17

    :cond_2a
    const/16 v1, 0xb

    if-ne v2, v1, :cond_32

    .line 981
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move/from16 v2, v18

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 982
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 983
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    int-to-float v6, v6

    invoke-static {v6, v2}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 984
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 985
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 986
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v1, v2, v3, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v1, :cond_2b

    .line 988
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_16

    .line 991
    :cond_2b
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_2d

    .line 992
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v14

    :goto_14
    if-ge v2, v1, :cond_2d

    .line 993
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 994
    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v6, :cond_2c

    goto :goto_15

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2d
    const/4 v3, 0x0

    .line 1000
    :goto_15
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v2, 0x280

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 1002
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1004
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1005
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v5

    .line 1006
    iget-boolean v6, v10, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v6, :cond_2f

    iget v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v6

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(IJ)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1007
    invoke-static {v5, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentVideoLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1008
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .line 1009
    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    invoke-virtual {v5, v4, v10, v0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    :cond_2e
    const/4 v5, 0x0

    :cond_2f
    if-eqz v5, :cond_30

    .line 1014
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v3, "g"

    const-string v5, "50_50_b"

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_16

    .line 1016
    :cond_30
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v4, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v3, "150_150"

    const-string v5, "50_50_b"

    const-wide/16 v7, 0x0

    move-object/from16 v35, v2

    move-object v2, v1

    move-object/from16 v1, v35

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_16

    .line 1019
    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    :goto_16
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2, v14}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto/16 :goto_38

    :cond_32
    move/from16 v3, v18

    .line 1024
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 1025
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 1026
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_38

    .line 774
    :cond_33
    :goto_17
    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 787
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;

    if-eqz v4, :cond_37

    .line 788
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;

    .line 789
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v4, v4, Lorg/telegram/messenger/AppGlobalConfig;->noForwardsRequestExpirePeriod:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->get(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 790
    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->expired:Z

    if-nez v6, :cond_35

    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v11, v6

    add-long/2addr v11, v4

    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v11, v4

    if-gez v4, :cond_34

    goto :goto_18

    :cond_34
    move v4, v14

    goto :goto_19

    :cond_35
    :goto_18
    const/4 v4, 0x1

    :goto_19
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->offerExpired:Z

    .line 792
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_36

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionNoForwardsRequest;->expired:Z

    if-nez v2, :cond_36

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->offerExpired:Z

    if-nez v2, :cond_36

    .line 793
    new-instance v2, Lorg/telegram/messenger/BotInlineKeyboard$Builder;

    invoke-direct {v2}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;-><init>()V

    .line 794
    invoke-virtual {v2}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;->addSharingOfferKeyboard()V

    .line 795
    invoke-virtual {v2}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;->build()Lorg/telegram/messenger/BotInlineKeyboard$Source;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botInlineButtons:Lorg/telegram/messenger/BotInlineKeyboard$Source;

    :cond_36
    move-object/from16 v26, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    const/4 v4, 0x0

    :goto_1b
    const/16 v33, 0x0

    goto/16 :goto_2e

    .line 797
    :cond_37
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;

    const-class v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v4, :cond_3c

    .line 798
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;

    .line 799
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v4, :cond_39

    .line 801
    invoke-static {v4}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->getGiftDocument(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    .line 802
    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    if-nez v11, :cond_38

    .line 803
    new-instance v11, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v11, v0, v12, v14}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    .line 805
    :cond_38
    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v12, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v12, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 806
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    goto :goto_1c

    :cond_39
    const/4 v6, 0x0

    .line 809
    :goto_1c
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;->expires_at:I

    iget v5, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-ge v4, v5, :cond_3a

    const/4 v4, 0x1

    goto :goto_1d

    :cond_3a
    move v4, v14

    :goto_1d
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->offerExpired:Z

    .line 810
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_3b

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;->accepted:Z

    if-nez v4, :cond_3b

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftPurchaseOffer;->declined:Z

    if-nez v2, :cond_3b

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->offerExpired:Z

    if-nez v2, :cond_3b

    .line 811
    new-instance v2, Lorg/telegram/messenger/BotInlineKeyboard$Builder;

    invoke-direct {v2}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;-><init>()V

    .line 812
    invoke-virtual {v2}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;->addGiftOfferKeyboard()V

    .line 813
    invoke-virtual {v2}, Lorg/telegram/messenger/BotInlineKeyboard$Builder;->build()Lorg/telegram/messenger/BotInlineKeyboard$Source;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botInlineButtons:Lorg/telegram/messenger/BotInlineKeyboard$Source;

    :cond_3b
    move-object/from16 v26, v1

    move-object v2, v6

    :goto_1e
    const/4 v1, 0x0

    goto :goto_1a

    .line 815
    :cond_3c
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v4, :cond_3f

    .line 816
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    .line 817
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    .line 818
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v2, :cond_3e

    .line 820
    invoke-static {v2}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->getGiftDocument(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    .line 821
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    if-nez v6, :cond_3d

    .line 822
    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v11, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v0, v11, v14}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    .line 824
    :cond_3d
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v11, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v11, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 825
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatActionCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    goto :goto_1f

    :cond_3e
    const/4 v4, 0x0

    :goto_1f
    move-object/from16 v26, v1

    move-object v2, v4

    goto :goto_1e

    .line 827
    :cond_3f
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v4, :cond_41

    .line 829
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    .line 830
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v2, :cond_40

    .line 831
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_20

    :cond_40
    const/4 v2, 0x0

    :goto_20
    move-object/from16 v26, v1

    move-object/from16 v33, v10

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_2e

    .line 833
    :cond_41
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v4, :cond_42

    move-object v4, v2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->refunded:Z

    if-eqz v4, :cond_42

    .line 835
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    .line 836
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v2, :cond_40

    .line 837
    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    goto :goto_20

    .line 840
    :cond_42
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;

    if-eqz v2, :cond_43

    .line 841
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/UserConfig;->premiumTonStickerPack:Ljava/lang/String;

    if-nez v2, :cond_44

    .line 843
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->checkTonGiftStickers()V

    return-void

    .line 847
    :cond_43
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    if-nez v2, :cond_44

    .line 849
    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->checkPremiumGiftStickers()V

    return-void

    .line 854
    :cond_44
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-nez v4, :cond_45

    .line 856
    iget v4, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    :cond_45
    if-eqz v4, :cond_56

    .line 860
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    .line 862
    iget v11, v10, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v11, v6, :cond_4e

    .line 864
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;

    if-eqz v6, :cond_46

    .line 865
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->cryptoAmount:J

    invoke-static {v5, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getTonGiftEmoji(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    .line 868
    :cond_46
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;

    if-eqz v6, :cond_47

    .line 869
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;->stars:J

    goto :goto_21

    .line 871
    :cond_47
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;->stars:J

    :goto_21
    const-wide/16 v11, 0x3e8

    cmp-long v9, v5, v11

    if-gtz v9, :cond_48

    .line 874
    const-string v5, "2\u20e3"

    goto :goto_22

    :cond_48
    const-wide/16 v11, 0x9c4

    cmp-long v5, v5, v11

    if-gez v5, :cond_49

    .line 876
    const-string v5, "3\u20e3"

    goto :goto_22

    .line 878
    :cond_49
    const-string v5, "4\u20e3"

    :goto_22
    move v6, v14

    .line 881
    :goto_23
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_4c

    .line 882
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 883
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v11, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4b

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4b

    .line 884
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move v9, v14

    .line 885
    :goto_24
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_4c

    .line 886
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_4a

    .line 887
    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v12, v12, v5

    if-nez v12, :cond_4a

    goto :goto_25

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_4c
    const/4 v11, 0x0

    :cond_4d
    :goto_25
    move-object/from16 v26, v1

    move-object/from16 v28, v2

    goto/16 :goto_2c

    .line 904
    :cond_4e
    sget-object v5, Lorg/telegram/ui/Cells/ChatActionCell;->monthsToEmoticon:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 906
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v12, v14

    const/4 v11, 0x0

    :goto_26
    if-ge v12, v9, :cond_4d

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 907
    iget-object v15, v13, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v15, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_53

    .line 908
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v20, v11

    move v11, v14

    :goto_27
    if-ge v11, v15, :cond_52

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v11, v11, 0x1

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 909
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v14

    :goto_28
    if-ge v8, v7, :cond_50

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, v26

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v26, v1

    move-object/from16 v28, v2

    .line 910
    iget-wide v1, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v1, v1, v21

    if-nez v1, :cond_4f

    move-object/from16 v20, v14

    goto :goto_29

    :cond_4f
    move-object/from16 v1, v26

    move-object/from16 v2, v28

    const/4 v14, 0x0

    goto :goto_28

    :cond_50
    move-object/from16 v26, v1

    move-object/from16 v28, v2

    :goto_29
    if-eqz v20, :cond_51

    :goto_2a
    move-object/from16 v11, v20

    goto :goto_2b

    :cond_51
    move-object/from16 v1, v26

    move-object/from16 v2, v28

    const/16 v3, 0x12

    const/16 v7, 0x21

    const/16 v8, 0x1f

    const/4 v14, 0x0

    goto :goto_27

    :cond_52
    move-object/from16 v26, v1

    move-object/from16 v28, v2

    goto :goto_2a

    :cond_53
    move-object/from16 v26, v1

    move-object/from16 v28, v2

    :goto_2b
    if-eqz v11, :cond_54

    goto :goto_2c

    :cond_54
    move-object/from16 v1, v26

    move-object/from16 v2, v28

    const/16 v3, 0x12

    const/16 v7, 0x21

    const/16 v8, 0x1f

    const/4 v14, 0x0

    goto :goto_26

    :goto_2c
    if-nez v11, :cond_55

    .line 925
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    .line 926
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    move-object v2, v1

    move-object/from16 v33, v4

    :goto_2d
    move-object/from16 v1, v28

    goto :goto_2e

    :cond_55
    move-object/from16 v33, v4

    move-object v2, v11

    goto :goto_2d

    :cond_56
    move-object/from16 v26, v1

    move-object/from16 v28, v2

    move-object/from16 v1, v28

    const/4 v2, 0x0

    goto/16 :goto_1b

    .line 931
    :goto_2e
    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botInlineButtons:Lorg/telegram/messenger/BotInlineKeyboard$Source;

    const/4 v5, 0x2

    if-eqz v3, :cond_5b

    .line 932
    invoke-interface {v3}, Lorg/telegram/messenger/BotInlineKeyboard$Source;->getRowsCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_2f
    if-ge v6, v3, :cond_5b

    .line 933
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botInlineButtons:Lorg/telegram/messenger/BotInlineKeyboard$Source;

    invoke-interface {v7, v6}, Lorg/telegram/messenger/BotInlineKeyboard$Source;->getColumnsCount(I)I

    move-result v7

    const/4 v8, 0x0

    :goto_30
    if-ge v8, v7, :cond_5a

    .line 934
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botInlineButtons:Lorg/telegram/messenger/BotInlineKeyboard$Source;

    invoke-interface {v9, v6, v8}, Lorg/telegram/messenger/BotInlineKeyboard$Source;->getButton(II)Lorg/telegram/messenger/BotInlineKeyboard$Button;

    move-result-object v9

    .line 935
    new-instance v11, Lorg/telegram/ui/Cells/BotButton;

    new-instance v12, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-direct {v11, v12}, Lorg/telegram/ui/Cells/BotButton;-><init>(Ljava/lang/Runnable;)V

    .line 936
    move-object v12, v9

    check-cast v12, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    iput-object v12, v11, Lorg/telegram/ui/Cells/BotButton;->buttonCustom:Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;

    .line 938
    invoke-virtual {v9}, Lorg/telegram/messenger/BotInlineKeyboard$Button;->getIconRes()I

    move-result v12

    if-eqz v12, :cond_57

    .line 940
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v11, Lorg/telegram/ui/Cells/BotButton;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 941
    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    const/4 v14, -0x1

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_57
    const/high16 v12, 0x42200000    # 40.0f

    .line 944
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v11, Lorg/telegram/ui/Cells/BotButton;->height:I

    .line 945
    iget v12, v11, Lorg/telegram/ui/Cells/BotButton;->positionFlags:I

    or-int/lit8 v12, v12, 0x8

    iput v12, v11, Lorg/telegram/ui/Cells/BotButton;->positionFlags:I

    if-nez v8, :cond_58

    const/4 v13, 0x1

    :goto_31
    const/4 v14, 0x1

    goto :goto_32

    :cond_58
    const/4 v13, 0x0

    goto :goto_31

    .line 946
    :goto_32
    invoke-static {v12, v14, v13}, Lme/vkryl/core/BitwiseUtils;->setFlag(IIZ)I

    move-result v12

    iput v12, v11, Lorg/telegram/ui/Cells/BotButton;->positionFlags:I

    if-ne v8, v14, :cond_59

    const/4 v13, 0x1

    goto :goto_33

    :cond_59
    const/4 v13, 0x0

    .line 947
    :goto_33
    invoke-static {v12, v5, v13}, Lme/vkryl/core/BitwiseUtils;->setFlag(IIZ)I

    move-result v12

    iput v12, v11, Lorg/telegram/ui/Cells/BotButton;->positionFlags:I

    .line 949
    const-string v12, "paintChatBotButton"

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v12

    check-cast v12, Landroid/text/TextPaint;

    .line 950
    new-instance v13, Lorg/telegram/ui/Components/Text;

    invoke-virtual {v9}, Lorg/telegram/messenger/BotInlineKeyboard$Button;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v13, v9, v12}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    iput-object v13, v11, Lorg/telegram/ui/Cells/BotButton;->title:Lorg/telegram/ui/Components/Text;

    .line 951
    iget-object v9, v0, Lorg/telegram/ui/Cells/ChatActionCell;->botButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 956
    :cond_5b
    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject;->wasUnread:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->forceWasUnread:Z

    .line 957
    iput-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftSticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_60

    .line 959
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 960
    iget v1, v10, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_5c

    const/16 v3, 0x21

    if-eq v1, v3, :cond_5c

    .line 961
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftStickerDelegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    :cond_5c
    const/4 v3, 0x0

    .line 964
    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

    const/4 v4, 0x0

    .line 965
    :goto_34
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_5e

    .line 966
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    const-string v3, "f"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 967
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->giftEffectAnimation:Lorg/telegram/tgnet/TLRPC$VideoSize;

    goto :goto_35

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_5e
    :goto_35
    if-nez v16, :cond_5f

    .line 971
    iget v1, v10, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_62

    .line 972
    :cond_5f
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v31

    .line 973
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 974
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v29

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v3, v10, Lorg/telegram/messenger/MessageObject;->stableId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v26, v4, v14

    const/16 v18, 0x1

    aput-object v26, v4, v18

    aput-object v3, v4, v5

    const-string v3, "%d_%d_nr_messageId=%d"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v32, "tgs"

    const/16 v34, 0x1

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v34}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_38

    :cond_60
    if-eqz v1, :cond_62

    .line 977
    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    if-nez v4, :cond_61

    const/4 v4, 0x1

    :goto_36
    const/4 v14, 0x0

    goto :goto_37

    :cond_61
    const/4 v4, 0x0

    goto :goto_36

    :goto_37
    invoke-virtual {v2, v1, v14, v4}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    .line 1028
    :cond_62
    :goto_38
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->firstInChat:Z

    if-eqz v1, :cond_67

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->isAllChats:Z

    if-eqz v1, :cond_67

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->isSideMenued:Z

    if-eqz v1, :cond_67

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->isForum:Z

    if-nez v1, :cond_63

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->isMonoForum:Z

    if-eqz v1, :cond_67

    :cond_63
    const/high16 v1, 0x42040000    # 33.0f

    .line 1029
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparatorTopPadding:I

    .line 1030
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    if-nez v1, :cond_64

    .line 1031
    new-instance v1, Lorg/telegram/ui/Components/TopicSeparator;

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentAccount:I

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->themeDelegate:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v14, 0x1

    invoke-direct {v1, v2, v0, v3, v14}, Lorg/telegram/ui/Components/TopicSeparator;-><init>(ILandroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    .line 1032
    new-instance v2, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/TopicSeparator;->setOnClickListener(Ljava/lang/Runnable;)V

    .line 1038
    :cond_64
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/TopicSeparator;->update(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1039
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TopicSeparator;->detach()V

    const/4 v3, 0x0

    .line 1040
    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    const/4 v14, 0x0

    .line 1041
    iput v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparatorTopPadding:I

    goto :goto_39

    .line 1042
    :cond_65
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->attachedToWindow:Z

    if-eqz v1, :cond_66

    .line 1043
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TopicSeparator;->attach()V

    :cond_66
    const/4 v14, 0x0

    goto :goto_39

    .line 1046
    :cond_67
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    if-eqz v1, :cond_68

    .line 1047
    invoke-virtual {v1}, Lorg/telegram/ui/Components/TopicSeparator;->detach()V

    const/4 v3, 0x0

    .line 1048
    iput-object v3, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparator:Lorg/telegram/ui/Components/TopicSeparator;

    :cond_68
    const/4 v14, 0x0

    .line 1050
    iput v14, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparatorTopPadding:I

    .line 1052
    :goto_39
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->topicSeparatorTopPadding:I

    if-eq v1, v2, :cond_69

    .line 1053
    invoke-virtual {v0, v14, v2, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1055
    :cond_69
    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->rippleView:Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/ChatActionCell;->isButtonLayout(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->starGiftLayout:Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->has()Z

    move-result v2

    if-nez v2, :cond_6a

    move v4, v14

    goto :goto_3a

    :cond_6a
    move/from16 v4, v17

    :goto_3a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    invoke-static {v10}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopicToMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 1057
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOnActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1543
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->onActionClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnActionLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1548
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->onActionLongClick:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOverrideColor(II)V
    .locals 0

    .line 592
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideBackground:I

    .line 593
    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overrideText:I

    return-void
.end method

.method public setOverrideTextMaxWidth(I)V
    .locals 0

    .line 1675
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->overriddenMaxWidth:I

    return-void
.end method

.method public setScrimReaction(Ljava/lang/Integer;)V
    .locals 1

    .line 4121
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->setScrimReaction(Ljava/lang/Integer;)V

    return-void
.end method

.method public setShowTopic(Z)V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->showTopicSeparator:Z

    if-eq v0, p1, :cond_0

    .line 328
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->showTopicSeparator:Z

    .line 329
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateOutbounds()V

    .line 330
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpoilersSuppressed(Z)V
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 206
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setSuppressUpdates(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisiblePart(FFIF)V
    .locals 1

    const/4 v0, 0x1

    .line 1092
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->visiblePartSet:Z

    .line 1093
    iput p3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    .line 1094
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    .line 1095
    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    .line 1097
    iput p4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->dimAmount:F

    .line 1098
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->dimPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p4, p2

    float-to-int p2, p4

    const/high16 p3, -0x1000000

    invoke-static {p3, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1099
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void
.end method

.method public setVisiblePart(FI)V
    .locals 1

    const/4 v0, 0x1

    .line 1083
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->visiblePartSet:Z

    .line 1084
    iput p2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->backgroundHeight:I

    .line 1085
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTop:F

    const/4 p1, 0x0

    .line 1086
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->viewTranslationX:F

    return-void
.end method

.method public showingCancelButton()Z
    .locals 2

    .line 2693
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 4053
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->wallpaperPreviewDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
