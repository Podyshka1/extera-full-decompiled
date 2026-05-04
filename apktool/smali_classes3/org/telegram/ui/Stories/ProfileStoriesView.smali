.class public Lorg/telegram/ui/Stories/ProfileStoriesView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    }
.end annotation


# instance fields
.field private actionBarProgress:F

.field private attached:Z

.field private final avatarContainer:Landroid/view/View;

.field private final avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

.field private bounceScale:F

.field private final circles:Ljava/util/ArrayList;

.field private final clipOutAvatar:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private count:I

.field private final currentAccount:I

.field private cy:F

.field private final dialogId:J

.field private expandProgress:F

.field private expandRight:F

.field private expandRightPad:Z

.field private final expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private expandY:F

.field private final forumRoundRectMatrix:Landroid/graphics/Matrix;

.field private final forumRoundRectPath:Landroid/graphics/Path;

.field private final forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

.field private final forumSegmentPath:Landroid/graphics/Path;

.field private fragmentTransitionProgress:F

.field private final gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

.field private final isTopic:Z

.field private lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

.field private left:F

.field private final livePaint:Landroid/graphics/Paint;

.field private mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

.field private newStoryBounce:Landroid/animation/ValueAnimator;

.field private newStoryBounceT:F

.field private onLongPressRunnable:Ljava/lang/Runnable;

.field paint:Landroid/graphics/Paint;

.field private peerStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

.field private progressIsDone:Z

.field private progressToInsets:F

.field private final progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

.field private progressWasDrawn:Z

.field private final provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field private final readPaint:Landroid/graphics/Paint;

.field private readPaintAlpha:I

.field private final rect1:Landroid/graphics/RectF;

.field private final rect2:Landroid/graphics/RectF;

.field private final rect3:Landroid/graphics/RectF;

.field private right:F

.field private final rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field private tapTime:J

.field private tapX:F

.field private tapY:F

.field private final titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private unreadCount:I

.field private uploadingStoriesCount:I

.field w:F

.field private final whitePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$3bhy4y-VcRIXgElJtex2qp0Z11s(Lorg/telegram/ui/Stories/ProfileStoriesView;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$animateNewStory$1([ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JQNPIPP51-ie698WId-XQXlPmQs(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I
    .locals 0

    .line 529
    iget p1, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static synthetic $r8$lambda$LsbWL_1FPFdAU8lJgWbcneL4904(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$RAb6hdlFRazCNdq5kd8FlD--DSg(Lorg/telegram/ui/Stories/ProfileStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$animateBounce$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RSLy2hF5fkos4dQT5lHlrXSuGsU(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$vibrateNewStory$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetattached(Lorg/telegram/ui/Stories/ProfileStoriesView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarImage(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcircles(Lorg/telegram/ui/Stories/ProfileStoriesView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexpandProgress(Lorg/telegram/ui/Stories/ProfileStoriesView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetradialProgress(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/Components/RadialProgress;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbounceScale(Lorg/telegram/ui/Stories/ProfileStoriesView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnewStoryBounceT(Lorg/telegram/ui/Stories/ProfileStoriesView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mclipCircle(Lorg/telegram/ui/Stories/ProfileStoriesView;Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnearest(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateStories(Lorg/telegram/ui/Stories/ProfileStoriesView;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvibrateNewStory(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->vibrateNewStory()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJZLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v7, p8

    .line 152
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    .line 67
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    .line 75
    new-instance v12, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v9, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v12, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 77
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipOutAvatar:Landroid/graphics/Paint;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    const/high16 v15, 0x3f800000    # 1.0f

    .line 90
    iput v15, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    .line 91
    iput v15, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    .line 95
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-direct {v0, v1, v13}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;-><init>(Landroid/view/View;Z)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    .line 439
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    .line 440
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    .line 441
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    .line 443
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    .line 445
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1e0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 446
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0xf0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object/from16 v16, v6

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 447
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x96

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 449
    iput v15, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    .line 912
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    .line 913
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    .line 914
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    .line 915
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    .line 1034
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1035
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1088
    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/ProfileStoriesView$3;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    .line 1172
    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    move/from16 v0, p2

    .line 154
    iput v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    move-wide/from16 v2, p3

    .line 155
    iput-wide v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    move/from16 v2, p5

    .line 156
    iput-boolean v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->isTopic:Z

    move-object/from16 v2, p6

    .line 157
    iput-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    move-object/from16 v2, p7

    .line 158
    iput-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 159
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisibleInvalidate(Ljava/lang/Runnable;)V

    .line 160
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    const v0, 0x5affffff

    .line 162
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 164
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 168
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_live1:I

    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 173
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x41900000    # 18.0f

    .line 175
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x140

    const v0, 0x3ecccccd    # 0.4f

    move/from16 p2, v0

    move-wide/from16 p3, v3

    move-object/from16 p7, v6

    move-wide/from16 p5, v7

    move-object/from16 p1, v12

    .line 176
    invoke-virtual/range {p1 .. p7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p1

    .line 177
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v3, -0x1

    .line 178
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 179
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 180
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 182
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 183
    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    const v3, 0x40151eb8    # 2.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    invoke-direct {v1, v13, v13}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method private animateBounce()V
    .locals 6

    .line 836
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    .line 837
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 838
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 839
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 841
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    .line 842
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 843
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 845
    new-instance v4, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    .line 850
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 851
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 852
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 853
    new-instance v1, Lorg/telegram/ui/Stories/ProfileStoriesView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$2;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 861
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    .line 869
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v1, 0x3fd47ae1    # 1.66f

    .line 870
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    .line 871
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 872
    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p3, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 873
    iget-object v3, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    .line 875
    iget-object v5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    cmpl-float v5, v1, v3

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x43340000    # 180.0f

    if-lez v5, :cond_1

    sub-float/2addr v1, p3

    add-float p3, v3, v4

    add-float/2addr v1, p3

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    .line 879
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    .line 880
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 881
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    add-float/2addr v7, p3

    neg-float v3, p3

    mul-float/2addr v3, v2

    invoke-virtual {v1, v0, v7, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    iget-object p2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    mul-float/2addr v2, p3

    sub-float/2addr v6, v2

    invoke-virtual {v0, p2, p3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_1
    add-float/2addr v1, p3

    sub-float p3, v3, v4

    add-float/2addr v1, p3

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    .line 885
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    .line 886
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 887
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    neg-float v3, p3

    mul-float/2addr v2, p3

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    iget-object p2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    sub-float/2addr v7, p3

    sub-float/2addr v6, v2

    neg-float p3, v6

    invoke-virtual {v0, p2, v7, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 890
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 891
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 892
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 4

    .line 918
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ChatObject;->isForum(IJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 919
    sget v1, Lcom/exteragram/messenger/ExteraConfig;->avatarCorners:F

    const/high16 v2, 0x41e00000    # 28.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    .line 920
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p5

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p5, v1

    const/4 v1, 0x1

    invoke-static {p5, v1, v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result p5

    int-to-float p5, p5

    .line 921
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 922
    invoke-virtual {p1, p2, p5, p5, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    add-float/2addr p3, p4

    sub-float p4, p3, p4

    float-to-int v0, p3

    .line 927
    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    const/high16 v3, -0x3cb90000    # -199.0f

    add-float/2addr v3, v0

    sub-float/2addr p3, v3

    div-float/2addr p3, v2

    sub-float/2addr p4, v3

    div-float/2addr p4, v2

    .line 932
    iget-object v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 933
    iget-object v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, p2, p5, p5, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 934
    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 935
    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {p5, v0, v2, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 936
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 938
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    invoke-virtual {p2, p5, v0}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 939
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p2

    .line 941
    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    invoke-virtual {p5}, Landroid/graphics/Path;->reset()V

    .line 942
    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    mul-float/2addr p3, p2

    mul-float/2addr p2, p4

    iget-object p4, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    invoke-virtual {p5, p3, p2, p4, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 943
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 944
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 952
    iget-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 954
    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    .line 955
    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v5

    .line 956
    iget-object v9, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v5

    cmpl-float v10, v6, v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lez v10, :cond_1

    move v10, v12

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    if-eqz v10, :cond_2

    sub-float/2addr v6, v0

    add-float v0, v7, v8

    add-float/2addr v6, v0

    div-float/2addr v6, v5

    sub-float/2addr v6, v7

    .line 962
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v13, v0

    .line 963
    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    :goto_1
    double-to-float v0, v13

    goto :goto_2

    :cond_2
    add-float/2addr v6, v0

    sub-float v0, v7, v8

    add-float/2addr v6, v0

    div-float/2addr v6, v5

    sub-float/2addr v6, v7

    .line 966
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v13, v0

    .line 967
    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    goto :goto_1

    :goto_2
    cmpl-float v6, v9, v7

    if-lez v6, :cond_3

    move v11, v12

    :cond_3
    if-eqz v11, :cond_4

    sub-float/2addr v9, v2

    add-float v2, v7, v8

    add-float/2addr v9, v2

    div-float/2addr v9, v5

    sub-float/2addr v9, v7

    .line 972
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v8

    float-to-double v6, v2

    .line 973
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    :goto_3
    double-to-float v2, v6

    goto :goto_4

    :cond_4
    add-float/2addr v9, v2

    sub-float v2, v7, v8

    add-float/2addr v9, v2

    div-float/2addr v9, v5

    sub-float/2addr v9, v7

    .line 976
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v8

    float-to-double v6, v2

    .line 977
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    goto :goto_3

    :goto_4
    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 981
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 982
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    mul-float/2addr v5, v9

    sub-float v10, v3, v5

    const/4 v11, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :cond_5
    if-eqz v10, :cond_6

    .line 984
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v9, v2, v4

    add-float v3, v0, v2

    sub-float v10, v4, v3

    const/4 v11, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 985
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    sub-float/2addr v4, v2

    sub-float v10, v4, v0

    move v9, v0

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :cond_6
    if-eqz v11, :cond_7

    .line 987
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v9, v0, v4

    add-float v3, v2, v0

    sub-float v10, v4, v3

    const/4 v11, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 988
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    sub-float/2addr v4, v2

    sub-float v10, v4, v0

    move v9, v2

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :cond_7
    move v9, v2

    .line 990
    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 991
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v9, v0, v4

    mul-float/2addr v0, v5

    sub-float v10, v3, v0

    const/4 v11, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :cond_8
    if-nez v0, :cond_a

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    return-void

    :cond_a
    :goto_5
    if-nez v0, :cond_b

    move-object v0, v2

    .line 998
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    .line 999
    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v5

    sub-float v8, v2, v6

    .line 1001
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float v9, v0, v7

    cmpl-float v8, v8, v9

    if-lez v8, :cond_c

    .line 1002
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    const/high16 v10, 0x43b40000    # 360.0f

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :cond_c
    cmpl-float v8, v2, v6

    if-lez v8, :cond_d

    sub-float/2addr v2, v0

    add-float v0, v6, v7

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    sub-float/2addr v2, v6

    .line 1007
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    .line 1008
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v9, v6

    .line 1009
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    mul-float/2addr v5, v9

    sub-float v10, v3, v5

    const/4 v11, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :cond_d
    add-float/2addr v2, v0

    sub-float v0, v6, v7

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    sub-float/2addr v2, v6

    .line 1012
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    .line 1013
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 1014
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v9, v0, v4

    mul-float/2addr v0, v5

    sub-float v10, v3, v0

    const/4 v11, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private getExpandRight()F
    .locals 3

    .line 1182
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPad:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    const/high16 v2, 0x428e0000    # 71.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$animateBounce$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    iput p1, v0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->bounceScale:F

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    .line 848
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animateNewStory$1([ZLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 471
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 472
    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 473
    aput-boolean v1, p1, v0

    .line 474
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->vibrateNewStory()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 476
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    .line 477
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    .line 1173
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPress()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$vibrateNewStory$0()V
    .locals 0

    .line 458
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    return-void
.end method

.method private lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 3

    .line 1021
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 1022
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v1, v2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 1024
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1025
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1023
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    sub-float p2, v0, p1

    sub-float p3, v1, p1

    add-float/2addr v0, p1

    add-float/2addr v1, p1

    .line 1028
    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    .locals 3

    if-eqz p3, :cond_5

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 904
    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 905
    iget-object v1, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object p3, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_2

    return-object p1

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object p2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateStories(ZZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 204
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->isTopic:Z

    if-eqz v2, :cond_0

    return-void

    .line 207
    :cond_0
    iget-wide v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 208
    :goto_0
    iget v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    .line 209
    iget v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesFromFullPeer(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v6

    .line 210
    iget v7, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v7

    .line 212
    iget-wide v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move-object v8, v6

    :goto_1
    if-eqz v6, :cond_3

    .line 219
    iget v12, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_2

    :cond_3
    move v12, v3

    :goto_2
    if-eqz v7, :cond_4

    .line 222
    iget v13, v7, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_4
    if-eqz v8, :cond_5

    .line 224
    iget-object v13, v8, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    if-nez v13, :cond_6

    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 225
    :cond_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget v15, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    .line 228
    iput v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    move-wide/from16 v16, v10

    if-eqz v13, :cond_15

    move v11, v3

    move/from16 v18, v11

    .line 230
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_9

    .line 231
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 232
    instance-of v9, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v9, :cond_7

    goto :goto_4

    .line 235
    :cond_7
    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v3, v12, :cond_8

    .line 236
    iget v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    :cond_8
    add-int/lit8 v18, v18, 0x1

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 240
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_14

    .line 241
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 242
    instance-of v11, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v11, :cond_b

    :cond_a
    :goto_6
    const/4 v9, 0x3

    goto/16 :goto_a

    .line 245
    :cond_b
    instance-of v11, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v11, :cond_10

    .line 246
    iget v11, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-eqz v7, :cond_d

    const/4 v4, 0x0

    .line 248
    :goto_7
    iget-object v10, v7, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_d

    .line 249
    iget-object v10, v7, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v10, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v10, v11, :cond_c

    .line 250
    iget-object v9, v7, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_8

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 255
    :cond_d
    :goto_8
    instance-of v4, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v4, :cond_f

    if-eqz v6, :cond_a

    const/4 v4, 0x0

    .line 257
    :goto_9
    iget-object v9, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_a

    .line 258
    iget-object v9, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v9, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v9, v11, :cond_e

    .line 259
    iget-object v9, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_6

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_f
    if-eqz v4, :cond_10

    goto :goto_6

    .line 270
    :cond_10
    iget v4, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    if-eqz v4, :cond_11

    if-le v5, v4, :cond_11

    goto :goto_6

    :cond_11
    if-nez v2, :cond_12

    .line 273
    iget v4, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v4, v12, :cond_a

    .line 274
    :cond_12
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x3

    if-lt v4, v9, :cond_13

    goto :goto_b

    :cond_13
    :goto_a
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_14
    const/4 v9, 0x3

    :goto_b
    move/from16 v3, v18

    goto :goto_c

    :cond_15
    const/4 v9, 0x3

    const/4 v3, 0x0

    .line 281
    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v9, :cond_1f

    const/4 v4, 0x0

    .line 282
    :goto_d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1f

    .line 283
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 284
    instance-of v10, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v10, :cond_1b

    .line 285
    iget v10, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-eqz v7, :cond_17

    const/4 v11, 0x0

    .line 287
    :goto_e
    iget-object v12, v7, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_17

    .line 288
    iget-object v12, v7, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v12, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v12, v10, :cond_16

    .line 289
    iget-object v9, v7, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_f

    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 294
    :cond_17
    :goto_f
    instance-of v11, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v11, :cond_1a

    if-eqz v6, :cond_19

    const/4 v9, 0x0

    .line 296
    :goto_10
    iget-object v11, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_19

    .line 297
    iget-object v11, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v11, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v11, v10, :cond_18

    .line 298
    iget-object v10, v6, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_11

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_19
    :goto_11
    const/4 v10, 0x3

    goto :goto_12

    :cond_1a
    if-eqz v11, :cond_1b

    goto :goto_11

    .line 309
    :cond_1b
    instance-of v10, v9, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v10, :cond_1c

    goto :goto_11

    .line 312
    :cond_1c
    iget v10, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    if-eqz v10, :cond_1d

    if-le v5, v10, :cond_1d

    goto :goto_11

    .line 315
    :cond_1d
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 316
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_1e

    goto :goto_13

    :cond_1e
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_1f
    :goto_13
    const/4 v4, 0x0

    .line 325
    :goto_14
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ge v4, v5, :cond_26

    .line 326
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v9, 0x0

    .line 330
    :goto_15
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_21

    .line 331
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 332
    iget v11, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v12, v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    if-ne v11, v12, :cond_20

    goto :goto_16

    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_21
    move v9, v7

    const/4 v10, 0x0

    :goto_16
    if-ne v9, v7, :cond_22

    .line 341
    iput v6, v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    goto :goto_19

    .line 343
    :cond_22
    iput v9, v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    if-nez v2, :cond_24

    if-eqz v8, :cond_23

    if-eqz v10, :cond_23

    .line 344
    iget v6, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v7, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v9, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v7, v9, v10}, Lorg/telegram/ui/Stories/StoriesController;->getMaxStoriesReadId(J)I

    move-result v7

    if-gt v6, v7, :cond_23

    goto :goto_17

    :cond_23
    const/4 v6, 0x0

    goto :goto_18

    :cond_24
    :goto_17
    const/4 v6, 0x1

    :goto_18
    iput-boolean v6, v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    :goto_19
    if-nez v1, :cond_25

    .line 347
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_26
    const/4 v4, 0x0

    .line 352
    :goto_1a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2d

    .line 353
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v9, 0x0

    .line 356
    :goto_1b
    iget-object v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_28

    .line 357
    iget-object v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 358
    iget v10, v10, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    iget v11, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v10, v11, :cond_27

    goto :goto_1c

    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_28
    move v9, v7

    :goto_1c
    if-ne v9, v7, :cond_2c

    .line 365
    iget-wide v9, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    iput-wide v9, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 366
    new-instance v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    invoke-direct {v9, v0, v5}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 367
    iput v4, v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    const/high16 v10, 0x3f800000    # 1.0f

    .line 368
    iput v10, v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    .line 369
    iget-object v10, v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v11, 0x1

    invoke-virtual {v10, v6, v11}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    if-nez v2, :cond_2a

    if-eqz v8, :cond_29

    .line 370
    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v10, v8, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-gt v5, v10, :cond_29

    goto :goto_1d

    :cond_29
    const/4 v11, 0x0

    goto :goto_1e

    :cond_2a
    :goto_1d
    const/4 v11, 0x1

    :goto_1e
    iput-boolean v11, v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    if-nez v1, :cond_2b

    .line 372
    invoke-virtual {v9}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    .line 374
    :cond_2b
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2d
    const/4 v4, 0x0

    .line 378
    iput-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v2, 0x0

    .line 379
    :goto_1f
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 380
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 381
    iget v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2e

    .line 382
    iput-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_20

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 386
    :cond_2f
    :goto_20
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_30

    const/4 v2, 0x0

    goto :goto_21

    .line 387
    :cond_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_21
    iput v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->uploadingStoriesCount:I

    .line 389
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-nez v11, :cond_31

    .line 390
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->uploadingStoriesCount:I

    if-eqz v2, :cond_31

    const/4 v11, 0x1

    :cond_31
    if-eqz p2, :cond_32

    if-eqz v1, :cond_32

    .line 393
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/16 v19, 0x1

    add-int/lit8 v2, v2, 0x1

    if-ne v11, v2, :cond_33

    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/lit8 v15, v15, 0x1

    if-ne v2, v15, :cond_33

    .line 394
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->animateNewStory()V

    goto :goto_22

    :cond_32
    const/16 v19, 0x1

    .line 396
    :cond_33
    :goto_22
    iput v11, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    .line 397
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-lez v11, :cond_34

    const-string v3, "Stories"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v11, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    :cond_34
    const/4 v4, 0x0

    const-string v3, ""

    :goto_23
    if-eqz v1, :cond_35

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_35

    move/from16 v4, v19

    :cond_35
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 399
    iget-wide v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    cmp-long v2, v2, v16

    if-ltz v2, :cond_37

    .line 400
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 401
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v4, :cond_36

    .line 402
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->setColor(Lorg/telegram/messenger/MessagesController$PeerColor;Z)V

    goto :goto_24

    .line 404
    :cond_36
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->setUser(Lorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_24

    .line 407
    :cond_37
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 408
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v4, :cond_38

    .line 409
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->setColor(Lorg/telegram/messenger/MessagesController$PeerColor;Z)V

    goto :goto_24

    .line 411
    :cond_38
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 415
    :goto_24
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private vibrateNewStory()V
    .locals 3

    .line 453
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 456
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    .line 457
    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    const-wide/16 v1, 0xb4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public animateNewStory()V
    .locals 3

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 467
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    const/4 v1, 0x2

    .line 469
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    .line 470
    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView$1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1059
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 1060
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 500
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v7

    .line 501
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v2, v8

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v2, v3

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    .line 502
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v4, 0x40600000    # 3.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 503
    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    mul-float/2addr v3, v4

    .line 504
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 505
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    .line 506
    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v3, v10

    sub-float/2addr v6, v3

    iget-object v11, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getScaleX()F

    move-result v11

    mul-float/2addr v6, v11

    .line 507
    iget-object v11, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v3

    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v11, v3

    .line 508
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    add-float/2addr v6, v4

    add-float/2addr v11, v5

    invoke-virtual {v3, v4, v5, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 510
    iget v11, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    const/4 v12, 0x0

    move v3, v12

    .line 512
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x1

    if-ge v3, v4, :cond_2

    .line 513
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 514
    iget-object v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v6, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    iput v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    cmpg-float v5, v5, v9

    if-gtz v5, :cond_0

    .line 515
    iget v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpg-float v5, v5, v9

    if-gtz v5, :cond_0

    .line 516
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->destroy()V

    .line 517
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 521
    :cond_0
    iget-object v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->indexAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v6, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    iput v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    .line 522
    iget-object v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->readAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v6, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    iput v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    if-lez v3, :cond_1

    .line 523
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget v5, v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget v4, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    .line 529
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_1
    :goto_1
    add-int/2addr v3, v13

    goto :goto_0

    .line 532
    :cond_2
    :goto_2
    iget v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v4, 0x3e4ccccd    # 0.2f

    div-float/2addr v3, v4

    sub-float v3, v8, v3

    invoke-static {v3, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    .line 533
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v14, v15}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v5

    .line 534
    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v6, v14, v15}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v6

    if-nez v6, :cond_3

    .line 535
    iget-object v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v14, :cond_3

    iget-boolean v14, v14, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    if-eqz v14, :cond_3

    .line 536
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    .line 537
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    .line 538
    iget-object v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v14, v12, v13}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_5

    .line 540
    :cond_4
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    if-eqz v6, :cond_6

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    if-nez v6, :cond_6

    :cond_5
    move v6, v13

    goto :goto_3

    :cond_6
    move v6, v12

    .line 541
    :goto_3
    iget-object v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v14, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v6

    .line 542
    iget v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    invoke-static {v9, v6, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    .line 544
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 545
    iget v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    iget-object v15, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    move/from16 v16, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v14, v14, v15, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 547
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    iget v15, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v4, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    const/4 v15, 0x0

    .line 550
    iput-object v15, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    cmpl-float v4, v6, v9

    const v17, 0x40151eb8    # 2.33f

    const/high16 v18, 0x437f0000    # 255.0f

    const v19, 0x4071999a    # 3.775f

    if-lez v4, :cond_10

    .line 552
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    move/from16 v20, v10

    iget-object v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v4, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 553
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    neg-float v10, v10

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v4, v10, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 554
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->getPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v4

    .line 555
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v8, :cond_7

    .line 556
    new-instance v8, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    .line 557
    invoke-virtual {v8, v15, v13, v12}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 558
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move/from16 v23, v14

    iget-wide v13, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-static {v10, v13, v14}, Lorg/telegram/messenger/ChatObject;->isForum(IJ)Z

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/RadialProgress;->setRoundRectProgress(Z)V

    goto :goto_4

    :cond_7
    move/from16 v23, v14

    .line 561
    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v13, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v8, v13, v14}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v13, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v8, v13, v14}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    .line 564
    :cond_8
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v13, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v8, v13, v14}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 566
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 567
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iput-object v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    :cond_9
    move v13, v9

    move v10, v12

    .line 569
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_a

    .line 570
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget v14, v14, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    add-float/2addr v13, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 572
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v13, v8

    goto :goto_7

    :cond_b
    move v8, v9

    goto :goto_7

    :cond_c
    :goto_6
    const/high16 v8, 0x3f800000    # 1.0f

    .line 577
    :goto_7
    iget-object v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/RadialProgress;->setDiff(I)V

    mul-float v10, v3, v18

    mul-float/2addr v10, v6

    float-to-int v10, v10

    .line 578
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 579
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 580
    iget-object v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v10, v4}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    .line 581
    iget-object v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-object v13, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    iget v15, v13, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    iget v12, v13, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    invoke-virtual {v10, v14, v15, v12, v13}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    .line 582
    iget-object v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v8, v12, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v8

    const/4 v12, 0x1

    invoke-virtual {v10, v8, v12}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 583
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    iget-boolean v8, v8, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    if-eqz v8, :cond_d

    .line 584
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    .line 586
    :cond_d
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    .line 587
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    .line 588
    iget-object v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v10

    const v12, 0x3f7ae148    # 0.98f

    cmpl-float v10, v10, v12

    if-ltz v10, :cond_e

    const/4 v10, 0x1

    goto :goto_8

    :cond_e
    const/4 v10, 0x0

    :goto_8
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    if-eq v8, v10, :cond_f

    .line 590
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    int-to-float v10, v10

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 591
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    int-to-float v10, v10

    invoke-virtual {v8, v10, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 592
    invoke-direct {v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->animateBounce()V

    :cond_f
    move-object v8, v4

    const/4 v12, 0x0

    :goto_9
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_10
    move/from16 v20, v10

    move/from16 v23, v14

    .line 595
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    const/4 v8, 0x0

    goto :goto_9

    :goto_a
    cmpg-float v10, v6, v4

    const v13, 0x5affffff

    if-gez v10, :cond_27

    .line 598
    iget v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    div-float v3, v3, v16

    sub-float v3, v4, v3

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    sub-float v6, v4, v6

    mul-float v10, v3, v6

    .line 599
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    .line 600
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v16

    if-eqz v5, :cond_13

    .line 603
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 604
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    neg-float v3, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 605
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getErrorPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v2

    .line 606
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float v3, v10, v18

    float-to-int v3, v3

    .line 607
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 608
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/ChatObject;->isForum(IJ)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 610
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3ea3d70a    # 0.32f

    mul-float/2addr v3, v4

    .line 611
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 613
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v5, v5, v20

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_12
    :goto_b
    move/from16 v32, v9

    const/high16 v19, 0x41400000    # 12.0f

    const/high16 v24, 0x3fc00000    # 1.5f

    goto/16 :goto_1c

    .line 615
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    if-nez v4, :cond_14

    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->uploadingStoriesCount:I

    if-lez v4, :cond_12

    :cond_14
    cmpl-float v4, v10, v9

    if-lez v4, :cond_12

    .line 616
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 617
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    neg-float v5, v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 618
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 619
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    const v5, 0x405a3d71    # 3.41f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    neg-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 620
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-static {v4, v5, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    const v4, 0x40875c29    # 4.23f

    .line 622
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    float-to-double v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v19, 0x41400000    # 12.0f

    const/high16 v24, 0x3fc00000    # 1.5f

    float-to-double v14, v6

    const-wide v25, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v25

    div-double/2addr v4, v14

    const-wide v14, 0x4076800000000000L    # 360.0

    mul-double/2addr v4, v14

    double-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v3, v5

    invoke-static {v6, v5, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    mul-float/2addr v6, v10

    invoke-static {v9, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 625
    iget v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/16 v6, 0x32

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/high16 v5, 0x42480000    # 50.0f

    .line 626
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const/16 v3, 0x14

    if-le v14, v3, :cond_15

    const/4 v3, 0x3

    :goto_c
    const/4 v5, 0x1

    goto :goto_d

    :cond_15
    const/4 v3, 0x5

    goto :goto_c

    :goto_d
    if-gt v14, v5, :cond_16

    move v3, v12

    :cond_16
    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 634
    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v25

    .line 636
    invoke-static {v9, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v2, v2, v25

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v2, v3, v2

    .line 637
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3a000000

    iget v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    invoke-static {v13, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v3, -0x3d4c0000    # -90.0f

    div-float v4, v25, v20

    sub-float/2addr v3, v4

    move v4, v12

    move/from16 v26, v4

    :goto_e
    if-ge v4, v14, :cond_18

    .line 643
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->live:Z

    if-eqz v5, :cond_17

    const/16 v26, 0x1

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_18
    const/high16 v27, 0x40200000    # 2.5f

    const/high16 v28, 0x40400000    # 3.0f

    if-eqz v26, :cond_1b

    .line 647
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 648
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    const/16 v3, 0xff

    const/16 v4, 0x1f

    .line 649
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 651
    iget v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v3, v3, v21

    div-float v3, v3, v27

    add-float v3, v3, v21

    cmpl-float v14, v3, v21

    if-eqz v14, :cond_19

    .line 654
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 655
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 658
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    .line 659
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    int-to-float v4, v15

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 660
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 661
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 662
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 663
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v14, :cond_1a

    .line 667
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_1a
    move/from16 v32, v9

    goto/16 :goto_1b

    :cond_1b
    move v4, v12

    :goto_f
    if-ge v4, v14, :cond_1a

    int-to-float v5, v4

    sub-float v6, v16, v5

    const/high16 v12, 0x3f800000    # 1.0f

    .line 670
    invoke-static {v6, v12, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    sub-float v29, v12, v6

    int-to-float v6, v14

    sub-float/2addr v6, v15

    sub-float/2addr v6, v5

    .line 671
    invoke-static {v6, v12, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    sub-float v30, v12, v5

    cmpg-float v5, v30, v9

    if-gez v5, :cond_1c

    move v13, v4

    move/from16 v32, v9

    move v9, v2

    goto/16 :goto_1a

    :cond_1c
    if-nez v4, :cond_1d

    .line 676
    iget v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    sub-float/2addr v5, v12

    div-float v5, v5, v27

    add-float v21, v5, v12

    move/from16 v5, v21

    goto :goto_10

    :cond_1d
    move v5, v12

    :goto_10
    cmpl-float v31, v5, v12

    if-eqz v31, :cond_1e

    .line 679
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 680
    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v12, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    invoke-virtual {v1, v5, v5, v6, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 683
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1f

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->live:Z

    if-eqz v5, :cond_1f

    const/4 v12, 0x1

    :goto_11
    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_1f
    const/4 v12, 0x0

    goto :goto_11

    :goto_12
    cmpg-float v5, v29, v21

    if-gez v5, :cond_22

    if-eqz v12, :cond_20

    .line 686
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    move-object v6, v5

    goto :goto_13

    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->getPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v8

    move-object v6, v8

    .line 687
    :goto_13
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    int-to-float v13, v5

    sub-float v32, v21, v29

    mul-float v13, v13, v32

    mul-float/2addr v13, v10

    float-to-int v13, v13

    .line 688
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v12, :cond_21

    move/from16 v13, v28

    goto :goto_14

    :cond_21
    move/from16 v13, v17

    .line 689
    :goto_14
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 690
    iget-object v13, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    move/from16 v32, v9

    neg-float v9, v2

    mul-float v9, v9, v30

    move/from16 v33, v5

    const/4 v5, 0x0

    move/from16 v34, v9

    move v9, v2

    move-object v2, v13

    move v13, v4

    move/from16 v4, v34

    move/from16 v34, v33

    move-object/from16 v33, v8

    move/from16 v8, v34

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 691
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v8, v33

    goto :goto_15

    :cond_22
    move v13, v4

    move/from16 v32, v9

    move v9, v2

    :goto_15
    cmpl-float v1, v29, v32

    if-lez v1, :cond_25

    if-eqz v12, :cond_23

    .line 695
    iget-object v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    :goto_16
    move-object v6, v1

    goto :goto_17

    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    goto :goto_16

    .line 696
    :goto_17
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v2, v1

    mul-float v2, v2, v29

    mul-float/2addr v2, v10

    float-to-int v2, v2

    .line 697
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v12, :cond_24

    move/from16 v2, v28

    goto :goto_18

    :cond_24
    move/from16 v2, v24

    .line 698
    :goto_18
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 699
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    neg-float v4, v9

    mul-float v4, v4, v30

    const/4 v5, 0x0

    move v12, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 700
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_19

    :cond_25
    move-object/from16 v1, p1

    :goto_19
    if-eqz v31, :cond_26

    .line 704
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_26
    mul-float v2, v9, v30

    mul-float v30, v30, v25

    add-float v2, v2, v30

    sub-float/2addr v3, v2

    :goto_1a
    add-int/lit8 v4, v13, 0x1

    move v2, v9

    move/from16 v9, v32

    const/4 v12, 0x0

    const v13, 0x5affffff

    goto/16 :goto_f

    :goto_1b
    if-eqz v26, :cond_28

    .line 711
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    invoke-static {v1, v2, v10, v3, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawLive(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZF)V

    .line 712
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1c

    :cond_27
    move/from16 v32, v9

    const/high16 v19, 0x41400000    # 12.0f

    const/high16 v24, 0x3fc00000    # 1.5f

    move v10, v3

    .line 717
    :cond_28
    :goto_1c
    invoke-direct {v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->getExpandRight()F

    .line 718
    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    cmpl-float v2, v2, v32

    const/high16 v9, 0x41900000    # 18.0f

    if-lez v2, :cond_3b

    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v2, v10, v21

    if-gez v2, :cond_3b

    move/from16 v2, v32

    .line 720
    iput v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/4 v2, 0x0

    .line 721
    :goto_1d
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 722
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 723
    iget v3, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    .line 724
    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_29
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 726
    :goto_1e
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 727
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 729
    iget v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    .line 730
    iget v6, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/high16 v8, 0x41e00000    # 28.0f

    .line 732
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v20

    mul-float/2addr v8, v5

    .line 733
    iget v12, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    add-float/2addr v12, v8

    add-float/2addr v12, v2

    .line 735
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v5

    add-float/2addr v2, v13

    add-float v13, v12, v8

    .line 737
    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 739
    iget-object v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    sub-float/2addr v12, v8

    sub-float v15, v23, v8

    add-float v8, v23, v8

    invoke-virtual {v14, v12, v15, v13, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 740
    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    iget-object v12, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget v13, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    iget-object v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-direct {v0, v8, v12, v13, v14}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 742
    iget-object v8, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    iget-object v12, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v8, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 743
    iget-object v8, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget-object v12, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v8, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v8, 0x402a3d71    # 2.66f

    .line 744
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    const v12, 0x3faa3d71    # 1.33f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    iget v14, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v12, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float/2addr v6, v13

    invoke-static {v8, v12, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    .line 745
    iget-object v4, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    neg-float v6, v6

    mul-float/2addr v6, v5

    invoke-virtual {v4, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 747
    :cond_2a
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const v3, -0x7f443b34

    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v5, 0x5affffff

    invoke-static {v5, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    .line 749
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->getPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v5

    .line 750
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 751
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f900000    # 1.125f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v4, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 752
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v12, 0x0

    .line 772
    :goto_1f
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_36

    .line 773
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    add-int/lit8 v2, v12, -0x2

    if-ltz v2, :cond_2b

    .line 774
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_20

    :cond_2b
    const/4 v2, 0x0

    :goto_20
    add-int/lit8 v4, v12, -0x1

    if-ltz v4, :cond_2c

    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_21

    :cond_2c
    const/4 v4, 0x0

    :goto_21
    invoke-direct {v0, v2, v4, v3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v2

    add-int/lit8 v6, v12, 0x1

    .line 775
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_2d

    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_22

    :cond_2d
    const/4 v4, 0x0

    :goto_22
    add-int/lit8 v12, v12, 0x2

    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v12, v8, :cond_2e

    iget-object v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_23

    :cond_2e
    const/4 v8, 0x0

    :goto_23
    invoke-direct {v0, v4, v8, v3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v4

    if-eqz v2, :cond_30

    .line 777
    iget-object v8, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 778
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v12, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v12, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v12, v12, v20

    iget-object v13, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v13, v13, v20

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v8, v8, v12

    if-ltz v8, :cond_2f

    iget-object v8, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 779
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v12, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v12, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v12, v12, v20

    iget-object v13, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v13, v13, v20

    add-float/2addr v12, v13

    cmpl-float v8, v8, v12

    if-lez v8, :cond_30

    :cond_2f
    const/4 v2, 0x0

    :cond_30
    if-eqz v4, :cond_32

    .line 783
    iget-object v8, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 784
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v12, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v12, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v12, v12, v20

    iget-object v13, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v13, v13, v20

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v8, v8, v12

    if-ltz v8, :cond_31

    iget-object v8, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    .line 785
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v12, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v12, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v12, v12, v20

    iget-object v13, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v13, v13, v20

    add-float/2addr v12, v13

    cmpl-float v8, v8, v12

    if-lez v8, :cond_32

    :cond_31
    const/4 v4, 0x0

    .line 790
    :cond_32
    iget v8, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v12, v8, v21

    if-gez v12, :cond_33

    .line 791
    iget v12, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float v12, v12, v18

    sub-float v8, v21, v8

    mul-float/2addr v12, v8

    sub-float v8, v21, v10

    mul-float/2addr v12, v8

    float-to-int v8, v12

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 792
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    :cond_33
    move-object v8, v5

    .line 794
    iget v1, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/16 v32, 0x0

    cmpl-float v1, v1, v32

    if-lez v1, :cond_35

    .line 795
    iget-boolean v1, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->live:Z

    if-eqz v1, :cond_34

    iget-object v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->livePaint:Landroid/graphics/Paint;

    :goto_24
    move-object v5, v1

    goto :goto_25

    :cond_34
    iget-object v1, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    goto :goto_24

    .line 796
    :goto_25
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v1, v12

    .line 797
    iget v13, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float/2addr v1, v13

    iget v13, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    mul-float/2addr v1, v13

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v13, v21, v10

    mul-float/2addr v1, v13

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v1, p1

    .line 798
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    move-object v13, v0

    .line 799
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_26

    :cond_35
    move-object v13, v0

    :goto_26
    move-object/from16 v1, p1

    move v12, v6

    move-object v5, v8

    move-object v0, v13

    goto/16 :goto_1f

    :cond_36
    move-object v13, v0

    move-object v8, v5

    .line 802
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v0, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float v0, v0, v18

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v1, v21, v10

    mul-float/2addr v0, v1

    float-to-int v5, v0

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v1, v0

    .line 803
    iget-object v0, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v22, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_27
    if-ltz v0, :cond_3a

    .line 804
    iget-object v2, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    .line 805
    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_2a

    .line 808
    :cond_37
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    if-ltz v4, :cond_38

    .line 809
    iget-object v5, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_28

    :cond_38
    const/4 v4, 0x0

    :goto_28
    add-int/lit8 v5, v0, -0x2

    if-ltz v5, :cond_39

    iget-object v6, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_29

    :cond_39
    const/4 v5, 0x0

    :goto_29
    invoke-direct {v13, v4, v5, v2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v4

    .line 810
    invoke-direct {v13, v1, v2, v4}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    .line 811
    iget-object v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 812
    iget-object v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 813
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 815
    :cond_3a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2b

    :cond_3b
    move-object v13, v0

    :goto_2b
    if-eqz v8, :cond_3c

    const v0, 0x40133333    # 2.3f

    .line 819
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 822
    :cond_3c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 824
    iget v0, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v0, v2

    mul-float v0, v0, v20

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3d

    .line 826
    iget-object v2, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v11, v3

    iget v3, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v2, v11, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 827
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v3, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 828
    iget-object v4, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    iget v6, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 829
    iget-object v5, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    float-to-int v2, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    float-to-int v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v5, v2, v6, v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 830
    iget-object v2, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v0, v0, v18

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 831
    iget-object v0, v13, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3d
    return-void
.end method

.method public getFragmentTransitionProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1224
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1066
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1068
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    const/4 v0, 0x0

    .line 1069
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1070
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1073
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1078
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1080
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    .line 1081
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1082
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1085
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLongPress()V
    .locals 0

    return-void
.end method

.method protected onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1188
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    .line 1195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapX:F

    .line 1196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapY:F

    .line 1197
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1198
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    .line 1200
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1201
    iget-object v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_5

    .line 1202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapX:F

    iget v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1203
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return v1

    .line 1206
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const-wide/16 v0, -0x1

    .line 1207
    iput-wide v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1210
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActionBarActionMode(F)V
    .locals 1

    .line 432
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    .line 436
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBounds(FFFZ)V
    .locals 3

    .line 1038
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1039
    :goto_1
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    .line 1040
    iput p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    if-nez p4, :cond_2

    .line 1042
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1044
    :cond_2
    iput p3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    if-eqz v0, :cond_3

    .line 1046
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setExpandCoords(FZF)V
    .locals 0

    .line 1051
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    .line 1052
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPad:Z

    .line 1053
    iput p3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    .line 1054
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpandProgress(F)V
    .locals 1

    .line 424
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 425
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFragmentTransitionProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1215
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1218
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    .line 1219
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressToStoriesInsets(F)V
    .locals 1

    .line 98
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 1

    .line 195
    iput-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->peerStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x1

    .line 200
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
