.class public abstract Lorg/telegram/ui/Stories/StoriesUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;,
        Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;,
        Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;,
        Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;
    }
.end annotation


# static fields
.field public static closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field static debugRunnable:Ljava/lang/Runnable;

.field static debugState:I

.field public static errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field public static expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

.field private static final forumRect:Landroid/graphics/RectF;

.field private static final forumRoundRectMatrix:Landroid/graphics/Matrix;

.field private static final forumRoundRectPath:Landroid/graphics/Path;

.field private static final forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

.field private static final forumSegmentPath:Landroid/graphics/Path;

.field public static grayLastColor:I

.field public static grayPaint:Landroid/graphics/Paint;

.field public static liveCutPaint:Landroid/graphics/Paint;

.field public static liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field public static livePaint:Landroid/graphics/Paint;

.field public static liveRect:Landroid/graphics/RectF;

.field public static liveText:Lorg/telegram/ui/Components/Text;

.field private static final rectTmp:Landroid/graphics/RectF;

.field static scheduled:Z

.field public static storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

.field private static final storyCellGrayLastColor:[I

.field public static storyCellGreyPaint:[Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$kfHW3-kZyQMzq2sFs9GFKip6YvU([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1170
    aput-object v1, p0, v0

    .line 1171
    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1172
    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p0, :cond_0

    .line 1173
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$vj-5KJCnxfshabut8bbOCF844fQ(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 1163
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->-$$Nest$fgetcancelled(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1166
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 79
    new-array v1, v0, [Lorg/telegram/ui/Components/GradientTools;

    sput-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    .line 92
    new-array v1, v0, [Landroid/graphics/Paint;

    sput-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    .line 93
    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGrayLastColor:[I

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 105
    sput-boolean v0, Lorg/telegram/ui/Stories/StoriesUtilities;->scheduled:Z

    .line 106
    sput v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugState:I

    .line 107
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$1;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$1;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugRunnable:Ljava/lang/Runnable;

    .line 668
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRect:Landroid/graphics/RectF;

    .line 684
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectPath:Landroid/graphics/Path;

    .line 685
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    .line 686
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    .line 687
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumSegmentPath:Landroid/graphics/Path;

    return-void
.end method

.method public static applyUploadingStr(Lorg/telegram/ui/ActionBar/SimpleTextView;ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 976
    sget p2, Lorg/telegram/messenger/R$string;->StoryEditing:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 978
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->UploadingStory:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 980
    :goto_0
    const-string/jumbo v0, "\u2026"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 982
    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 983
    new-instance v0, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    .line 984
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 985
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    .line 986
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void

    .line 988
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public static applyViewedUser(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1042
    :cond_0
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1043
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v0, :cond_1

    .line 1044
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    .line 1046
    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1047
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    .line 1048
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 645
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    .line 647
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 648
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 649
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 651
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    .line 652
    sget v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayLastColor:I

    if-eq v0, p0, :cond_3

    .line 653
    sput p0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayLastColor:I

    .line 654
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpg-float v1, v0, v1

    const v2, 0x3e4ccccd    # 0.2f

    if-gez v1, :cond_2

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_1

    .line 658
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    invoke-static {p0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 660
    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const v2, 0x3ee147ae    # 0.44f

    invoke-static {p0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 663
    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-static {p0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    return-void
.end method

.method private static checkStoriesGradientTools(Z)V
    .locals 3

    .line 766
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 767
    new-instance v1, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v1}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    aput-object v1, v0, p0

    .line 768
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 769
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    if-eqz p0, :cond_0

    .line 771
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    goto :goto_0

    .line 773
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 775
    :goto_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 776
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 777
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object p0, v0, p0

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_1
    return-void
.end method

.method private static checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 621
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 622
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, p0

    .line 623
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 624
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 625
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    if-nez p0, :cond_1

    .line 627
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    .line 628
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGrayLastColor:[I

    aget v1, v0, p0

    if-eq v1, p1, :cond_4

    .line 629
    aput p1, v0, p0

    .line 630
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpg-float v1, v0, v1

    const v2, 0x3e4ccccd    # 0.2f

    if-gez v1, :cond_3

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_2

    .line 634
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v0, p0

    invoke-static {p1, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 636
    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v0, p0

    const v0, 0x3ee147ae    # 0.44f

    invoke-static {p1, v1, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 639
    :cond_3
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v0, p0

    const/high16 v0, -0x1000000

    invoke-static {p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    return-void
.end method

.method public static createExpiredStoryString()Ljava/lang/CharSequence;
    .locals 3

    .line 1007
    sget v0, Lorg/telegram/messenger/R$string;->ExpiredStory:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->createExpiredStoryString(ZI[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createExpiredStoryString(ZI[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .line 1011
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1012
    const-string v1, "d "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1013
    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_bomb:I

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    if-eqz p0, :cond_0

    const p0, 0x3f4ccccd    # 0.8f

    .line 1015
    invoke-virtual {p1, p0, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 1017
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    :goto_0
    const/4 p0, 0x1

    const/4 p2, 0x0

    .line 1019
    invoke-virtual {v0, p1, p2, p0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static createReplyStoryString()Ljava/lang/CharSequence;
    .locals 4

    .line 1024
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1025
    const-string v1, "d "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Story:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1026
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_replystory2:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1027
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V
    .locals 15

    move/from16 v6, p4

    move/from16 v7, p6

    sub-float v8, v6, p3

    cmpg-float v0, p3, p5

    if-gez v0, :cond_0

    add-float v0, p5, v8

    cmpg-float v0, v6, v0

    if-gez v0, :cond_0

    .line 1059
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v3, v0, p3

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v2, p3

    .line 1061
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move/from16 v2, p3

    const/4 v0, 0x0

    .line 1064
    :goto_0
    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v1, 0x43b40000    # 360.0f

    add-float v1, p5, v1

    .line 1065
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v3, v1, v11

    if-gez v3, :cond_3

    if-nez v0, :cond_2

    cmpl-float v0, v2, p5

    if-lez v0, :cond_1

    cmpg-float v0, v6, v7

    if-ltz v0, :cond_2

    :cond_1
    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move v3, v8

    .line 1068
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    sub-float v12, v1, v11

    const/4 v13, 0x0

    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    .line 1073
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 7

    .line 100
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    .line 102
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    return-void
.end method

.method public static drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 26

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    .line 123
    sget-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->hideStories:Z

    if-eqz v3, :cond_0

    .line 124
    iget-object v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 125
    invoke-virtual {v7, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void

    .line 128
    :cond_0
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v9

    .line 129
    iget-boolean v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animate:Z

    .line 130
    invoke-static {v8}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    const/4 v10, 0x0

    if-eqz v4, :cond_1

    .line 131
    invoke-static {v8, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$fputdialogId(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;J)V

    .line 132
    invoke-virtual {v8}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->reset()V

    move v3, v10

    .line 138
    :cond_1
    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->isLoading(J)Z

    move-result v4

    .line 139
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/ChatObject;->isForum(IJ)Z

    move-result v5

    const/4 v11, 0x1

    if-eqz v5, :cond_2

    iget-boolean v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isDialogStoriesCell:Z

    if-nez v5, :cond_2

    move v12, v11

    goto :goto_0

    :cond_2
    move v12, v10

    .line 140
    :goto_0
    iget-boolean v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v5, :cond_3

    .line 141
    invoke-virtual {v9}, Lorg/telegram/ui/Stories/StoriesController;->hasHiddenStories()Z

    move-result v5

    goto :goto_1

    :cond_3
    move/from16 v5, p4

    .line 144
    :goto_1
    iget-object v6, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v6, :cond_4

    .line 145
    iget v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    invoke-virtual {v9, v0, v1, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    move v4, v10

    :cond_4
    const/4 v14, 0x3

    if-eqz v4, :cond_6

    .line 152
    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v10

    move v1, v14

    const/4 v0, 0x2

    goto :goto_3

    .line 155
    :cond_5
    invoke-static {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v0

    move v3, v10

    move v1, v14

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_9

    .line 158
    iget-boolean v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v5, :cond_7

    const/4 v0, 0x2

    :goto_2
    const/4 v1, 0x2

    goto :goto_3

    .line 161
    :cond_7
    iget v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    invoke-virtual {v9, v0, v1, v5}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v11

    goto :goto_3

    .line 165
    :cond_9
    invoke-static {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v0

    move v1, v0

    .line 168
    :goto_3
    iget v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceState:I

    if-eqz v5, :cond_a

    move v1, v5

    move v15, v1

    goto :goto_4

    :cond_a
    move v15, v0

    .line 172
    :goto_4
    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_e

    if-ne v0, v14, :cond_b

    move v3, v11

    :cond_b
    if-ne v1, v14, :cond_c

    .line 177
    iput v15, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    .line 178
    iput v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    :cond_c
    if-eqz v3, :cond_d

    .line 181
    iput v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    .line 182
    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->unreadState:I

    iput v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevUnreadState:I

    .line 183
    iput v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    .line 184
    iput v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    goto :goto_5

    .line 186
    :cond_d
    iput v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    .line 187
    iput v6, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    .line 191
    :cond_e
    :goto_5
    iput v15, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->unreadState:I

    .line 193
    iget-object v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3da3d70a    # 0.08f

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    goto :goto_6

    :cond_f
    move v0, v6

    .line 194
    :goto_6
    iget-boolean v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->showProgress:Z

    if-eq v3, v4, :cond_10

    if-eqz v4, :cond_10

    .line 195
    iput v6, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    .line 196
    iput-boolean v10, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    .line 198
    :cond_10
    iput-boolean v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->showProgress:Z

    .line 199
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-nez v3, :cond_11

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_11

    .line 200
    iget-object v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 201
    invoke-virtual {v7, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void

    .line 204
    :cond_11
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    cmpl-float v4, v0, v6

    if-eqz v4, :cond_12

    .line 206
    iget-object v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v2, v0, v0, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 209
    :cond_12
    invoke-static {v8}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasLiveStory(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 210
    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    goto :goto_7

    :cond_13
    move v0, v5

    .line 213
    :goto_7
    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v4, v1, v6

    if-eqz v4, :cond_14

    .line 215
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    :cond_14
    move/from16 v16, v1

    .line 217
    iget-boolean v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v1, :cond_15

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v1, :cond_15

    move/from16 p1, v5

    move/from16 v1, p1

    goto :goto_8

    :cond_15
    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    iget v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    .line 218
    invoke-static {v1, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->getInset(II)I

    move-result v1

    iget v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    move/from16 p1, v5

    iget v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    .line 219
    invoke-static {v4, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->getInset(II)I

    move-result v4

    iget v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    .line 217
    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    :goto_8
    cmpl-float v4, v1, p1

    if-nez v4, :cond_16

    .line 223
    iget-object v4, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    goto :goto_9

    .line 225
    :cond_16
    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 226
    invoke-virtual {v4, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 227
    invoke-virtual {v7, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    :goto_9
    cmpl-float v17, v0, p1

    if-lez v17, :cond_17

    .line 230
    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    const/high16 v18, 0x41700000    # 15.0f

    .line 231
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v4, Landroid/graphics/RectF;->top:F

    .line 232
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    iget v10, v4, Landroid/graphics/RectF;->right:F

    .line 233
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v10, v14

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 234
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v4, v14

    move v14, v1

    move v1, v5

    const/16 v5, 0xff

    move v2, v6

    const/16 v6, 0x1f

    move/from16 v18, v14

    const/high16 v13, 0x3f800000    # 1.0f

    const v19, 0x3da3d70a    # 0.08f

    move v14, v3

    move v3, v10

    move v10, v0

    move-object/from16 v0, p2

    .line 230
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_a

    :cond_17
    move v10, v0

    move/from16 v18, v1

    move-object v0, v2

    move v14, v3

    move v13, v6

    const v19, 0x3da3d70a    # 0.08f

    .line 239
    :goto_a
    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const/high16 v20, 0x40a00000    # 5.0f

    const/high16 v21, 0x437f0000    # 255.0f

    if-ne v1, v11, :cond_19

    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_18

    goto :goto_c

    :cond_18
    :goto_b
    const/4 v1, 0x2

    goto :goto_d

    :cond_19
    :goto_c
    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v1, v11, :cond_1f

    goto :goto_b

    :goto_d
    if-ne v15, v1, :cond_1a

    .line 242
    invoke-static {v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    .line 243
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    goto :goto_e

    :cond_1a
    const/4 v1, 0x3

    if-ne v15, v1, :cond_1b

    .line 245
    invoke-static {v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->getLivePaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    .line 246
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    goto :goto_e

    .line 248
    :cond_1b
    iget-boolean v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    invoke-static {v7, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    .line 249
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    aget-object v1, v1, v2

    .line 251
    :goto_e
    iget v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    if-ne v2, v11, :cond_1c

    iget v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_1c

    move v2, v11

    goto :goto_f

    :cond_1c
    const/4 v2, 0x0

    .line 253
    :goto_f
    iget-boolean v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v3, :cond_1d

    iget-boolean v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v3, :cond_1d

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v5, v3

    goto :goto_10

    :cond_1d
    const/4 v5, 0x0

    :goto_10
    if-eqz v2, :cond_1e

    .line 255
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v5, v2

    .line 256
    iget-object v2, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v3, v3, v21

    sub-float v6, v13, v16

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_11

    .line 258
    :cond_1e
    iget-object v2, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v3, v3, v21

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 259
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v13, v16

    mul-float/2addr v2, v6

    add-float/2addr v5, v2

    .line 261
    :goto_11
    iget v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->additionalInset:F

    add-float/2addr v5, v2

    .line 262
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 263
    invoke-virtual {v2, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 265
    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-static {v0, v2, v8, v1, v12}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Z)V

    .line 267
    :cond_1f
    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const v15, 0x402ccccd    # 2.7f

    const/high16 v22, 0x40600000    # 3.5f

    const/16 v23, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_21

    :cond_20
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v3, v2, :cond_29

    :cond_21
    if-ne v1, v2, :cond_22

    .line 268
    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_22

    move v1, v11

    goto :goto_12

    :cond_22
    const/4 v1, 0x0

    .line 270
    :goto_12
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v2, :cond_23

    .line 271
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    iget-object v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 272
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v2, v2, v3

    :goto_13
    move-object v4, v2

    goto :goto_14

    .line 274
    :cond_23
    iget-object v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 275
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    goto :goto_13

    .line 280
    :goto_14
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v2, :cond_24

    .line 281
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    invoke-static {v7, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v2

    .line 282
    iget v3, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    invoke-static {v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v3

    .line 284
    iget v5, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v5, v5, v21

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 285
    invoke-static {v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->getLivePaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v5

    .line 286
    iget v6, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 287
    iget-object v6, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v6, v5

    move-object v5, v2

    goto :goto_15

    :cond_24
    move-object/from16 v3, v23

    move-object v5, v3

    move-object v6, v5

    .line 290
    :goto_15
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v2, :cond_26

    .line 291
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v2, :cond_25

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v2, :cond_25

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    :goto_16
    neg-float v2, v2

    goto :goto_17

    :cond_25
    const/4 v2, 0x0

    goto :goto_17

    .line 293
    :cond_26
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v2, :cond_25

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v2, :cond_25

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    goto :goto_16

    :goto_17
    if-eqz v1, :cond_27

    .line 296
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float/2addr v2, v1

    .line 297
    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v1, v1, v21

    sub-float v24, v13, v16

    mul-float v1, v1, v24

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_18

    .line 299
    :cond_27
    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v1, v1, v21

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v24, v13, v16

    mul-float v1, v1, v24

    add-float/2addr v2, v1

    .line 302
    :goto_18
    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->additionalInset:F

    add-float/2addr v2, v1

    .line 303
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    move/from16 p0, v15

    iget-object v15, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 304
    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 305
    iget-boolean v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v1, :cond_28

    move-object v2, v7

    move-object v1, v9

    move-object v7, v3

    move-object v3, v8

    move v8, v12

    .line 306
    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegmentsInternal(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_19

    :cond_28
    move-object v2, v7

    move-object v3, v8

    move-object v1, v9

    move v8, v12

    .line 308
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v5

    invoke-static {v0, v5, v3, v4, v8}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Z)V

    goto :goto_19

    :cond_29
    move-object v2, v7

    move-object v3, v8

    move-object v1, v9

    move v8, v12

    move/from16 p0, v15

    .line 311
    :goto_19
    iget v4, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2a

    iget v4, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v4, v4, v13

    if-nez v4, :cond_2b

    :cond_2a
    iget v4, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v4, v5, :cond_37

    .line 313
    :cond_2b
    iget v4, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    if-ne v4, v11, :cond_2c

    .line 314
    iget-boolean v4, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    invoke-static {v2, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    .line 315
    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    goto :goto_1a

    .line 317
    :cond_2c
    iget-boolean v4, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v4, :cond_2d

    .line 318
    iget-boolean v4, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    iget-object v5, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 319
    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v4, v4, v5

    goto :goto_1a

    .line 321
    :cond_2d
    iget-object v4, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 322
    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    :goto_1a
    mul-float v5, v16, v21

    float-to-int v5, v5

    .line 325
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 330
    iget-boolean v5, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v5, :cond_2e

    .line 331
    iget-boolean v5, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    invoke-static {v2, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v5

    .line 332
    iget v6, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 333
    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v6

    .line 334
    iget v7, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v7, v7, v21

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 335
    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getLivePaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v7

    .line 336
    iget v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v9, v9, v21

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    iget-object v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v25, v7

    move-object v7, v6

    move-object/from16 v6, v25

    goto :goto_1b

    :cond_2e
    move-object/from16 v5, v23

    move-object v6, v5

    move-object v7, v6

    .line 340
    :goto_1b
    iget-boolean v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v9, :cond_30

    .line 341
    iget-boolean v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v9, :cond_2f

    iget-boolean v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v9, :cond_2f

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    :goto_1c
    neg-float v9, v9

    goto :goto_1d

    :cond_2f
    const/4 v9, 0x0

    goto :goto_1d

    .line 343
    :cond_30
    iget-boolean v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v9, :cond_2f

    iget-boolean v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v9, :cond_2f

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    goto :goto_1c

    .line 345
    :goto_1d
    iget v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const/4 v15, 0x3

    if-ne v12, v15, :cond_31

    iget v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_31

    const/high16 v12, 0x40e00000    # 7.0f

    .line 347
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v16

    add-float/2addr v9, v12

    .line 348
    iget v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v12, v12, v21

    sub-float v15, v13, v16

    mul-float/2addr v12, v15

    float-to-int v12, v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1e

    .line 350
    :cond_31
    iget v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v12, v12, v21

    mul-float v12, v12, v16

    float-to-int v12, v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 351
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float v15, v13, v16

    mul-float/2addr v12, v15

    add-float/2addr v9, v12

    .line 353
    :goto_1e
    iget v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->additionalInset:F

    add-float/2addr v9, v12

    .line 354
    sget-object v12, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v15, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v12, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 355
    invoke-virtual {v12, v9, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 356
    iget-boolean v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v9, :cond_33

    iget v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    const/4 v15, 0x3

    if-ne v12, v15, :cond_33

    iget v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    cmpl-float v15, v12, v13

    if-eqz v15, :cond_33

    add-float v12, v12, v19

    .line 357
    iput v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    cmpl-float v9, v12, v13

    if-lez v9, :cond_32

    .line 359
    iput v13, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    .line 361
    :cond_32
    iget v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 362
    iget v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    sub-float v12, v13, v12

    iput v12, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 363
    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegmentsInternal(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 364
    iput v9, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    .line 365
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 366
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 367
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_20

    :cond_33
    if-eqz v9, :cond_36

    .line 371
    invoke-static {v3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v1

    const/4 v8, 0x2

    if-ne v1, v8, :cond_34

    move-object v4, v7

    goto :goto_1f

    :cond_34
    const/4 v15, 0x3

    if-ne v1, v15, :cond_35

    move-object v4, v6

    goto :goto_1f

    :cond_35
    if-ne v1, v11, :cond_36

    move-object v4, v5

    .line 380
    :cond_36
    :goto_1f
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v3, v1, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/view/View;Landroid/graphics/Paint;)V

    .line 384
    :cond_37
    :goto_20
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v10, v1

    if-lez v1, :cond_38

    goto :goto_21

    :cond_38
    const/4 v11, 0x0

    .line 385
    :goto_21
    iput-boolean v11, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    if-lez v17, :cond_39

    .line 387
    iget v1, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->additionalInset:F

    add-float v1, v18, v1

    .line 388
    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 389
    invoke-virtual {v4, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 390
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v1

    const/4 v5, 0x0

    invoke-static {v0, v4, v10, v1, v5}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawLive(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZF)V

    .line 393
    :cond_39
    iget v1, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v4, v1, v13

    if-eqz v4, :cond_3b

    .line 394
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    const/high16 v5, 0x437a0000    # 250.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    iput v1, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_3a

    .line 396
    iput v13, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    .line 398
    :cond_3a
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 399
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 400
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_3b
    if-eqz v14, :cond_3c

    .line 404
    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3c
    return-void
.end method

.method private static drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Z)V
    .locals 7

    if-nez p4, :cond_0

    .line 671
    sget p1, Lcom/exteragram/messenger/ExteraConfig;->avatarCorners:F

    const/high16 v0, 0x41e00000    # 28.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    :cond_0
    move-object v1, p0

    move-object v6, p3

    goto :goto_0

    .line 677
    :cond_1
    iget p1, p2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    const/high16 p4, 0x40000000    # 2.0f

    if-nez p2, :cond_2

    .line 678
    sget-object p1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, p4

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 680
    :cond_2
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float p2, p1, p4

    const/high16 p4, 0x43b40000    # 360.0f

    add-float v3, p2, p4

    sub-float v4, p4, p1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    .line 672
    :goto_0
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRect:Landroid/graphics/RectF;

    sget-object p1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 673
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 674
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/4 p2, 0x1

    invoke-static {p1, p2, p4}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-static {p3, p2, p4}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v1, p0, p1, p2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawLive(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZF)V
    .locals 11

    .line 409
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveText:Lorg/telegram/ui/Components/Text;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lorg/telegram/ui/Components/Text;

    sget v1, Lorg/telegram/messenger/R$string;->LiveStoryBadge:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x411a8f5c    # 9.66f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveText:Lorg/telegram/ui/Components/Text;

    .line 412
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveCutPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 413
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveCutPaint:Landroid/graphics/Paint;

    .line 414
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 416
    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->livePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 417
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->livePaint:Landroid/graphics/Paint;

    .line 419
    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    if-nez v0, :cond_3

    .line 420
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    .line 422
    :cond_3
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->livePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_live2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x40951eb8    # 4.66f

    .line 424
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    .line 425
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->liveText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v1

    add-float/2addr v1, v0

    add-float/2addr v1, v0

    const/high16 v2, 0x41700000    # 15.0f

    .line 426
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2, v3, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p4

    int-to-float p4, p4

    const/high16 v2, 0x40000000    # 2.0f

    .line 427
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    .line 429
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 430
    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float/2addr v1, v2

    sub-float/2addr v5, v1

    sub-float/2addr v5, v3

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, p4

    sub-float/2addr v6, v7

    sub-float/2addr v6, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    add-float/2addr v8, v1

    add-float/2addr v8, v3

    iget v9, p1, Landroid/graphics/RectF;->bottom:F

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr p4, v10

    add-float/2addr v9, p4

    add-float/2addr v9, v3

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 431
    invoke-static {v3, v4, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 432
    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sget-object v5, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p0, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 433
    sget-object v3, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    invoke-static {v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->scaleRect(Landroid/graphics/RectF;F)V

    .line 434
    sget-object v3, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    sget-object v5, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v2

    sget-object v6, Lorg/telegram/ui/Stories/StoriesUtilities;->liveCutPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_4

    .line 436
    sget-object p3, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v3, v1

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v7

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p4

    invoke-virtual {p3, v3, v4, v5, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 437
    sget-object p1, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v2

    sget-object p4, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    div-float/2addr p4, v2

    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->livePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p3, p4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 438
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->liveText:Lorg/telegram/ui/Components/Text;

    sget-object p1, Lorg/telegram/ui/Stories/StoriesUtilities;->liveRect:Landroid/graphics/RectF;

    iget p3, p1, Landroid/graphics/RectF;->left:F

    add-float v4, p3, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v6, -0x1

    move-object v3, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    goto :goto_0

    :cond_4
    move-object v3, p0

    .line 441
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 12

    .line 600
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$mupdateProgressParams(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 601
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 604
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    const/high16 v0, 0x43b40000    # 360.0f

    if-eqz p2, :cond_0

    .line 605
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    iget p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    mul-float v4, p2, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v11, v6

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p0

    move-object v11, p3

    .line 607
    sget-object v7, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget p0, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    add-float v8, p0, v0

    const/high16 p0, -0x3c4c0000    # -360.0f

    iget p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    mul-float v9, p2, p0

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    const/16 p2, 0x10

    if-ge p0, p2, :cond_1

    int-to-float p2, p0

    const/high16 p3, 0x41b40000    # 22.5f

    mul-float/2addr p2, p3

    const/high16 v0, 0x41200000    # 10.0f

    add-float/2addr p2, v0

    add-float/2addr p3, p2

    sub-float/2addr p3, v0

    sub-float v9, p3, p2

    .line 615
    sget-object v7, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget p3, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    add-float v8, p3, p2

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V
    .locals 8

    if-nez p6, :cond_8

    .line 690
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->avatarCorners:F

    const/high16 v3, 0x41e00000    # 28.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 712
    :cond_0
    iget-boolean v1, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->useArcProgress:Z

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    .line 713
    iget-boolean v1, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isFirst:Z

    if-nez v1, :cond_2

    iget-boolean v5, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    if-nez v5, :cond_2

    cmpg-float v1, p3, v2

    if-gez v1, :cond_1

    .line 715
    iget v0, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float v1, v0

    div-float v5, v1, v4

    div-float v6, v0, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    return-void

    .line 717
    :cond_1
    iget v0, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float v1, v0

    div-float/2addr v1, v4

    add-float v5, v1, v3

    div-float/2addr v0, v4

    add-float v6, v0, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    return-void

    .line 719
    :cond_2
    iget-boolean v2, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    if-eqz v2, :cond_3

    .line 720
    iget v0, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float v1, v0

    div-float/2addr v1, v4

    add-float v5, v1, v3

    div-float/2addr v0, v4

    add-float v6, v0, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    .line 722
    iget v0, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float v1, v0

    div-float v5, v1, v4

    div-float v6, v0, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    return-void

    :cond_4
    sub-float v3, p4, p3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v2, p3

    .line 724
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    .line 727
    :cond_5
    iget-boolean v1, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    if-eqz v1, :cond_6

    .line 728
    iget v0, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float v1, v0

    div-float/2addr v1, v4

    add-float v5, v1, v3

    div-float/2addr v0, v4

    add-float v6, v0, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    return-void

    :cond_6
    cmpg-float v1, p3, v2

    if-gez v1, :cond_7

    .line 730
    iget v5, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->rightTopAngleToExclude:F

    iget v6, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->rightBottomAngleToExclude:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    return-void

    .line 732
    :cond_7
    iget v1, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->leftTopAngleToExclude:F

    neg-float v5, v1

    iget v6, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->leftBottomAngleToExclude:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    return-void

    .line 691
    :cond_8
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2, p6}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v0

    int-to-float v0, v0

    float-to-int v1, p3

    .line 692
    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    add-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    const/high16 v4, -0x3cb90000    # -199.0f

    add-float/2addr v4, v1

    sub-float v3, p3, v4

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v3, v5

    sub-float v4, p4, v4

    div-float/2addr v4, v5

    .line 696
    sget-object v5, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 697
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, p1, v0, v0, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 699
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 700
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 701
    invoke-virtual {v5, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 703
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 704
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    .line 706
    sget-object v5, Lorg/telegram/ui/Stories/StoriesUtilities;->forumSegmentPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    mul-float/2addr v3, v1

    mul-float/2addr v1, v4

    .line 707
    invoke-virtual {v0, v3, v1, v5, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    const/4 v0, 0x0

    .line 708
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 709
    invoke-virtual {p0, v5, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static drawSegmentsInternal(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    .line 445
    iget-object v1, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 446
    iget-boolean v1, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    iget-object v2, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 448
    iget-wide v1, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->crossfadeToDialog:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 449
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v1

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v1

    :goto_0
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v1, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v9

    .line 454
    :goto_1
    iput v2, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalState:I

    .line 455
    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v2

    if-nez v2, :cond_2

    .line 457
    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesFromFullPeer(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v2

    :cond_2
    move-object v10, v2

    .line 460
    iget-boolean v2, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v2, :cond_3

    .line 461
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    move v11, v2

    goto :goto_4

    :cond_3
    if-eqz v10, :cond_5

    .line 463
    iget-object v2, v10, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v9, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v10, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_2

    :cond_5
    :goto_3
    move v2, v9

    goto :goto_2

    :goto_4
    const/4 v12, 0x3

    if-ne v1, v8, :cond_6

    .line 467
    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    .line 468
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    :goto_5
    move-object v7, v1

    goto :goto_6

    :cond_6
    if-ne v1, v12, :cond_7

    .line 470
    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getLivePaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    .line 471
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    goto :goto_5

    :cond_7
    if-ne v1, v9, :cond_8

    .line 473
    iget-boolean v1, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    .line 474
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    iget-boolean v2, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    goto :goto_5

    .line 476
    :cond_8
    iget-boolean v1, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v1, :cond_9

    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v2, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v1, v1, v2

    goto :goto_5

    :cond_9
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    goto :goto_5

    :goto_6
    const/16 v13, 0xff

    const/high16 v14, 0x437f0000    # 255.0f

    const/high16 v15, 0x3f800000    # 1.0f

    if-gt v11, v9, :cond_d

    .line 481
    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStoriesLive(J)I

    move-result v0

    if-ne v0, v8, :cond_a

    move-object/from16 v2, p6

    goto :goto_7

    .line 485
    :cond_a
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    if-ne v7, v1, :cond_b

    move-object/from16 v2, p7

    goto :goto_7

    :cond_b
    if-ne v0, v9, :cond_c

    move-object/from16 v2, p5

    goto :goto_7

    :cond_c
    move-object/from16 v2, p4

    .line 493
    :goto_7
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43870000    # 270.0f

    move-object/from16 v5, p3

    .line 496
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    .line 498
    iget v0, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    cmpl-float v3, v0, v15

    if-eqz v3, :cond_1b

    if-eq v2, v7, :cond_1b

    sub-float/2addr v15, v0

    mul-float/2addr v15, v14

    float-to-int v0, v15

    .line 499
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    move/from16 v6, p8

    move-object v2, v7

    .line 502
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43870000    # 270.0f

    move-object/from16 v5, p3

    .line 505
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    move-object v1, v2

    .line 506
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_d
    move-object v1, v7

    const/high16 v2, 0x43b40000    # 360.0f

    int-to-float v3, v11

    div-float v16, v2, v3

    const/16 v2, 0x14

    if-le v11, v2, :cond_e

    move v2, v12

    goto :goto_8

    :cond_e
    const/4 v2, 0x5

    :goto_8
    int-to-float v2, v2

    .line 512
    iget v3, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    mul-float/2addr v2, v3

    cmpl-float v3, v2, v16

    if-lez v3, :cond_f

    const/4 v2, 0x0

    :cond_f
    move/from16 v17, v2

    .line 518
    iget-boolean v2, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    move v2, v3

    goto :goto_9

    :cond_10
    iget v2, v10, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_9
    if-ge v3, v11, :cond_1b

    .line 520
    iget-boolean v4, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isStoryCell:Z

    if-eqz v4, :cond_11

    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v6, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v4, v4, v6

    goto :goto_a

    :cond_11
    sget-object v4, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    .line 521
    :goto_a
    iget-boolean v6, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v6, :cond_14

    .line 522
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v11, -0x1

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v6

    if-ne v6, v8, :cond_12

    goto :goto_c

    :cond_12
    if-ne v6, v12, :cond_13

    goto :goto_b

    :cond_13
    if-ne v6, v9, :cond_19

    goto :goto_d

    .line 531
    :cond_14
    iget-object v6, v10, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_15

    goto :goto_d

    .line 533
    :cond_15
    iget-object v6, v10, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z

    if-nez v6, :cond_16

    iget-object v6, v10, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v6, v2, :cond_19

    .line 534
    :cond_16
    iget-object v4, v10, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    if-eqz v4, :cond_17

    :goto_b
    move-object/from16 v4, p6

    goto :goto_e

    .line 536
    :cond_17
    iget-object v4, v10, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    if-eqz v4, :cond_18

    :goto_c
    move-object/from16 v4, p7

    goto :goto_e

    :cond_18
    :goto_d
    move-object/from16 v4, p5

    :cond_19
    :goto_e
    int-to-float v6, v3

    mul-float v6, v6, v16

    const/high16 v7, 0x42b40000    # 90.0f

    sub-float/2addr v6, v7

    add-float v7, v6, v16

    add-float v6, v6, v17

    sub-float v7, v7, v17

    move/from16 v18, v2

    .line 548
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    move-object v8, v1

    move/from16 v19, v3

    move-object v3, v4

    move v4, v6

    move-object/from16 v1, p0

    move-object v6, v5

    move v5, v7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    move v7, v5

    move-object v5, v6

    .line 549
    iget v1, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_1a

    if-eq v3, v8, :cond_1a

    .line 550
    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 552
    iget v1, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    sub-float v1, v15, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v1, p0

    move-object v6, v5

    move v5, v7

    move-object v3, v8

    move/from16 v7, p8

    .line 553
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    move-object v2, v3

    .line 555
    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_f

    :cond_1a
    move-object v2, v8

    :goto_f
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v5, p3

    move-object v1, v2

    move/from16 v2, v18

    const/4 v8, 0x2

    goto/16 :goto_9

    :cond_1b
    return-void
.end method

.method public static ensureStoryFileLoaded(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v2, p1

    goto/16 :goto_5

    .line 1112
    :cond_1
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 1113
    iget-object v3, v2, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 1115
    :goto_0
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1116
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v6, v3, :cond_2

    .line 1117
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_4

    .line 1122
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :cond_4
    move-object v14, v3

    .line 1125
    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const v5, 0x7fffffff

    const-string v6, ""

    const/4 v7, 0x1

    if-eqz v3, :cond_6

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_6

    .line 1126
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v8, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v3, v8, v6, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1127
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1128
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1

    .line 1131
    :cond_5
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v8, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v3, v8, v6, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1134
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_8

    .line 1136
    new-instance v8, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".temp"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_8

    .line 1138
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_6
    if-eqz v3, :cond_7

    .line 1147
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_2

    :cond_7
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_c

    .line 1148
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    .line 1149
    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 1150
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    invoke-virtual {v8, v3, v6, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1151
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1152
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1

    .line 1161
    :catch_0
    :cond_8
    new-instance v3, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    invoke-direct {v3, v2, v8, v9, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;-><init>(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/ui/Stories/StoriesUtilities-IA;)V

    .line 1162
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda0;

    move-object/from16 v2, p1

    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V

    iput-object v0, v3, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    .line 1168
    new-array v0, v7, [Ljava/lang/Runnable;

    .line 1169
    new-instance v2, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V

    aput-object v2, v0, v4

    const-wide/16 v8, 0xbb8

    .line 1176
    invoke-static {v2, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1177
    new-instance v2, Lorg/telegram/ui/Stories/StoriesUtilities$2;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Stories/StoriesUtilities$2;-><init>([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V

    iput-object v2, v3, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1189
    invoke-virtual {v2, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 1190
    iget-object v0, v3, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 1192
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->getStoryImageFilter()Ljava/lang/String;

    move-result-object v9

    .line 1194
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_9

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_9

    .line 1195
    iget-object v5, v3, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pframe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    .line 1197
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_3

    :cond_a
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_b

    .line 1198
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 1199
    invoke-static {v2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 1200
    iget-object v5, v3, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v16, v14

    const-wide/16 v13, 0x0

    invoke-virtual/range {v5 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_4
    return-object v3

    .line 1202
    :cond_b
    iget-object v0, v3, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-object v1

    :cond_c
    move-object/from16 v2, p1

    .line 1156
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-object v1

    .line 1108
    :goto_5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-object v1
.end method

.method public static getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;
    .locals 4

    .line 803
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    .line 804
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    .line 805
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 806
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    .line 807
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 808
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 809
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 810
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 812
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 813
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getErrorPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;
    .locals 4

    .line 848
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    .line 850
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 851
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    .line 852
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 853
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    .line 854
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 855
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 856
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 857
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 858
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 860
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 861
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getErrorPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;
    .locals 4

    .line 831
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    .line 833
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 834
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    .line 835
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 836
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    .line 837
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 838
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 839
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 840
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 841
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 843
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 844
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getExpiredStoryDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 939
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/16 v0, 0xb4

    .line 940
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x168

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, -0x777778

    .line 941
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 942
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 943
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 944
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 945
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v3, -0x1000000

    const/16 v4, 0x64

    .line 946
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 947
    const-string v3, "expired"

    const/high16 v4, 0x42ac0000    # 86.0f

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 948
    const-string/jumbo v3, "story"

    const/high16 v4, 0x42d40000    # 106.0f

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 949
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    .line 951
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getInset(II)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    move p0, p1

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/high16 p0, 0x40400000    # 3.0f

    .line 743
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    return p0

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const/high16 p0, 0x40800000    # 4.0f

    .line 745
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getLivePaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;
    .locals 4

    .line 817
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    .line 819
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    .line 820
    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    .line 821
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_live1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_live2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 822
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 823
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 824
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 826
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 827
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-lez v0, :cond_4

    .line 566
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 567
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v5, p1, v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    if-eqz v5, :cond_3

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    if-lez v5, :cond_3

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    if-nez v5, :cond_3

    .line 568
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p0

    .line 569
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->live:Z

    if-eqz p2, :cond_1

    return v4

    .line 572
    :cond_1
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    if-le p1, p0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    return v1

    .line 581
    :cond_4
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 582
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    if-eqz v5, :cond_7

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    if-lez v5, :cond_7

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_unavailable:Z

    if-nez v5, :cond_7

    .line 583
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p0

    .line 584
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:Lorg/telegram/tgnet/TLRPC$TL_recentStory;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->live:Z

    if-eqz p2, :cond_5

    return v4

    .line 587
    :cond_5
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_recentStory;->max_id:I

    if-le p1, p0, :cond_6

    return v3

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method public static getStoryImageFilter()Ljava/lang/String;
    .locals 3

    .line 1081
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 1082
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;
    .locals 4

    .line 752
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoriesGradientTools(Z)V

    .line 753
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 754
    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getUploadingStr(Landroid/widget/TextView;ZZ)Ljava/lang/CharSequence;
    .locals 4

    if-eqz p2, :cond_0

    .line 957
    sget p2, Lorg/telegram/messenger/R$string;->StoryEditing:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 959
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->UploadingStory:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 961
    :goto_0
    const-string/jumbo v0, "\u2026"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 963
    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 964
    new-instance v0, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    .line 965
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 966
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    :cond_1
    return-object p2
.end method

.method public static hasExpiredViews(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1035
    :cond_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    const v2, 0x15180

    add-int/2addr p0, v2

    if-le v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isExpired(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z
    .locals 0

    .line 1077
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 1

    .line 883
    const-string v0, "320_320"

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;)V

    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 890
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1

    .line 891
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 892
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v9, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 893
    new-instance v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 895
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 896
    :goto_0
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v0, :cond_3

    .line 897
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xa

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, -0x1

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, -0x1000000

    .line 898
    invoke-static {v4, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 899
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 900
    new-instance v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 901
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 902
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 903
    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v11, p1

    move-object v4, p2

    move-object v3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 904
    new-instance v1, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/ImageReceiver;->addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V

    return-void

    .line 906
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 23

    move-object/from16 v0, p1

    .line 912
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_0

    .line 913
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v3, "320_180"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 915
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v14, "320_180"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static setStoryMiniImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 868
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v2, 0x3e8

    if-eqz v1, :cond_1

    .line 869
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 870
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v2, "100_100"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 872
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 873
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 874
    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 875
    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, "100_100"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 877
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void
.end method

.method public static setThumbImage(Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;II)V
    .locals 13

    move/from16 v1, p3

    move/from16 v2, p4

    .line 920
    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    if-eqz v4, :cond_0

    .line 921
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .line 922
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 923
    invoke-virtual {p1, v1, p0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 924
    :cond_0
    const-string v0, "_"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_1

    .line 925
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v3, v8, v6, v7, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 926
    iget-object v5, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 928
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_2
    move-object v3, v7

    :goto_0
    if-eqz v3, :cond_3

    .line 929
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 930
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v4, v8, v6, v7, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 931
    invoke-static {v4, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v11, p2

    move-object v3, v4

    move-object v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 933
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void
.end method

.method public static updateColors()V
    .locals 3

    .line 782
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-eqz v0, :cond_0

    .line 783
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 785
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->liveGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-eqz v0, :cond_1

    .line 786
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_live1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_live2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 788
    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 789
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 791
    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 792
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    .line 794
    :cond_3
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-eqz v0, :cond_4

    .line 795
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 796
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    .line 797
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 798
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    :cond_4
    return-void
.end method
