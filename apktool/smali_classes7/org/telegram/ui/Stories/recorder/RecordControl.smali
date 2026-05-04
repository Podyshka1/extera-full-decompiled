.class public Lorg/telegram/ui/Stories/recorder/RecordControl;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;
    }
.end annotation


# instance fields
.field private final HALF_PI:F

.field public amplitude:F

.field public final animatedAmplitude:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final buttonPaint:Landroid/graphics/Paint;

.field private final buttonPaintWhite:Landroid/graphics/Paint;

.field private final check1:Lorg/telegram/ui/Components/Point;

.field private final check2:Lorg/telegram/ui/Components/Point;

.field private final check3:Lorg/telegram/ui/Components/Point;

.field private final checkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final checkPaint:Landroid/graphics/Paint;

.field private final checkPath:Landroid/graphics/Path;

.field private final circlePath:Landroid/graphics/Path;

.field private final collage:Lorg/telegram/ui/Components/AnimatedFloat;

.field private collageProgress:F

.field private final collageProgressAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private cx:F

.field private cy:F

.field private delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

.field private discardParentTouch:Z

.field private dual:Z

.field private final dualT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final flipButton:Lorg/telegram/ui/Components/ButtonBounce;

.field private flipButtonWasPressed:Z

.field private final flipDrawableBlack:Landroid/graphics/drawable/Drawable;

.field private flipDrawableRotate:F

.field private final flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final flipDrawableWhite:Landroid/graphics/drawable/Drawable;

.field private final galleryImage:Lorg/telegram/messenger/ImageReceiver;

.field private final h1:Lorg/telegram/ui/Components/Point;

.field private final h2:Lorg/telegram/ui/Components/Point;

.field private final h3:Lorg/telegram/ui/Components/Point;

.field private final h4:Lorg/telegram/ui/Components/Point;

.field private final hintLinePaintBlack:Landroid/graphics/Paint;

.field private final hintLinePaintWhite:Landroid/graphics/Paint;

.field private lastDuration:J

.field private leftCx:F

.field private loadingSegments:[F

.field private final lockButton:Lorg/telegram/ui/Components/ButtonBounce;

.field private final lockDrawable:Landroid/graphics/drawable/Drawable;

.field private final lockedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private longpressRecording:Z

.field private final mainPaint:Landroid/graphics/Paint;

.field private final metaballsPath:Landroid/graphics/Path;

.field private final noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field private final onFlipLongPressRunnable:Ljava/lang/Runnable;

.field private final onRecordLongPressRunnable:Ljava/lang/Runnable;

.field private final outlineFilledPaint:Landroid/graphics/Paint;

.field private final outlinePaint:Landroid/graphics/Paint;

.field private overrideStartModeIsVideoT:F

.field private final p1:Lorg/telegram/ui/Components/Point;

.field private final p2:Lorg/telegram/ui/Components/Point;

.field private final p3:Lorg/telegram/ui/Components/Point;

.field private final p4:Lorg/telegram/ui/Components/Point;

.field private final pauseDrawable:Landroid/graphics/drawable/Drawable;

.field private final recordButton:Lorg/telegram/ui/Components/ButtonBounce;

.field private final recordCx:Lorg/telegram/ui/Components/AnimatedFloat;

.field private recording:Z

.field private recordingLoading:Z

.field private recordingLoadingStart:J

.field private final recordingLoadingT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final recordingLongT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private recordingStart:J

.field private final recordingT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private redGradient:Landroid/graphics/RadialGradient;

.field private final redMatrix:Landroid/graphics/Matrix;

.field private final redPaint:Landroid/graphics/Paint;

.field private rightCx:F

.field private showLock:Z

.field private startModeIsVideo:Z

.field private final startModeIsVideoT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private touch:Z

.field private final touchIsButtonT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final touchIsCenter2T:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final touchIsCenterT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private touchStart:J

.field private final touchT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private touchX:F

.field private touchY:F

.field private final unlockDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$5Bec-GJR4l-6WOdnT5sJssEGgtM(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$onDraw$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$dtyl4G0jnkQVyhow2DHmfjUHX8s(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$o-aU4dnUh9NM05mH6e1rn4d-jhY(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pTV5KAt3K95yCiwmvpKIt9CcKBg(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$peexlpDkfU1fab-Za7b8N5KY2Pw(Lorg/telegram/ui/Stories/recorder/RecordControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->lambda$new$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 27

    move-object/from16 v1, p0

    .line 139
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v7, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v7}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v7, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    .line 110
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    .line 111
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaintWhite:Landroid/graphics/Paint;

    .line 114
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    .line 115
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    .line 116
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->redMatrix:Landroid/graphics/Matrix;

    .line 121
    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    .line 122
    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    .line 123
    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    move-object v3, v0

    .line 126
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-object v5, v2

    move-object v4, v3

    const-wide/16 v2, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    const-wide/16 v4, 0x136

    move-object/from16 v18, v16

    move-object/from16 v19, v17

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 128
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x14a

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object/from16 v16, v6

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->dualT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 133
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    .line 134
    new-instance v0, Lorg/telegram/ui/Components/Point;

    const v2, 0x411aaaab

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    neg-float v3, v3

    const v4, 0x40155555

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->check1:Lorg/telegram/ui/Components/Point;

    .line 135
    new-instance v0, Lorg/telegram/ui/Components/Point;

    const v3, 0x40355555

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    neg-float v3, v3

    const v4, 0x410aaaab

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    .line 136
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const v3, -0x3f955555

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->check3:Lorg/telegram/ui/Components/Point;

    .line 246
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0xc8

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->animatedAmplitude:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 291
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideoT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v0, -0x40800000    # -1.0f

    .line 292
    iput v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->overrideStartModeIsVideoT:F

    .line 293
    iput-boolean v8, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    .line 295
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 296
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x352

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLongT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x2

    .line 299
    new-array v0, v0, [F

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->loadingSegments:[F

    .line 300
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 310
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 311
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x28a

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsCenterT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 312
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0xa0

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsCenter2T:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 313
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x2ee

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordCx:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 314
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x28a

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsButtonT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 315
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x140

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 318
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->collage:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 319
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgressAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 320
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 332
    new-instance v0, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->onRecordLongPressRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->onFlipLongPressRunnable:Ljava/lang/Runnable;

    .line 364
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    .line 365
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    const v0, 0x3fc90fdb

    .line 367
    iput v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->HALF_PI:F

    .line 661
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->p2:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->p4:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->h1:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->h2:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->h3:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->h4:Lorg/telegram/ui/Components/Point;

    const/4 v0, 0x0

    .line 141
    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 143
    new-instance v20, Landroid/graphics/RadialGradient;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, -0x8cecf

    const/4 v4, -0x1

    filled-new-array {v3, v3, v4}, [I

    move-result-object v24

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v2

    move-object/from16 v25, v5

    invoke-direct/range {v20 .. v26}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v20

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->redGradient:Landroid/graphics/RadialGradient;

    move-object/from16 v5, v19

    .line 144
    invoke-virtual {v2, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 145
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->redGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 146
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 149
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 151
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x64000000

    .line 152
    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x58ffffff

    .line 154
    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x18000000

    .line 155
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 158
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    move-object/from16 v3, v18

    .line 160
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 162
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 163
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v2, v5, :cond_0

    .line 164
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_0

    .line 166
    :cond_0
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 169
    :goto_0
    invoke-virtual {v7, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    const/high16 v2, 0x40c00000    # 6.0f

    .line 171
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_media_gallery:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 174
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v7, 0x4dffffff    # 5.3687088E8f

    invoke-direct {v5, v7, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v7, -0xd1d1d1

    invoke-static {v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-direct {v5, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    .line 176
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 177
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v5, v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)Lorg/telegram/ui/Components/CombinedDrawable;

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_photo_switch2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableWhite:Landroid/graphics/drawable/Drawable;

    .line 180
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_photo_switch2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableBlack:Landroid/graphics/drawable/Drawable;

    .line 182
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_filled_unlockedrecord:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->unlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_filled_lockedrecord:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_round_pause_m:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/RecordControl;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 192
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f23d70a    # 0.64f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dist(Lorg/telegram/ui/Components/Point;Lorg/telegram/ui/Components/Point;)F
    .locals 2

    .line 668
    iget v0, p1, Lorg/telegram/ui/Components/Point;->x:F

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    iget v1, p2, Lorg/telegram/ui/Components/Point;->x:F

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v0, p1, v1, p2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    return p1
.end method

.method private getVector(FFDFLorg/telegram/ui/Components/Point;)V
    .locals 6

    float-to-double v0, p1

    .line 663
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, p5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p6, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double p1, p2

    .line 664
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double/2addr p3, v4

    add-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, p6, Lorg/telegram/ui/Components/Point;->y:F

    return-void
.end method

.method private isPressed(FFFFFZ)Z
    .locals 3

    .line 678
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p6, :cond_0

    sub-float/2addr p4, p2

    const/high16 p2, 0x42c80000    # 100.0f

    .line 679
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p4, p2

    if-lez p2, :cond_0

    return v2

    :cond_0
    sub-float/2addr p3, p1

    .line 682
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p5

    if-gtz p1, :cond_1

    return v1

    :cond_1
    return v2

    .line 684
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    cmpg-float p1, p1, p5

    if-gtz p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingStart:J

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoDuration(J)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    .line 333
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->canRecordAudio()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    .line 338
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 339
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    .line 344
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    invoke-interface {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordStart(ZLjava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 353
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onFlipLongClick()V

    const/high16 v0, 0x43b40000    # 360.0f

    .line 355
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->rotateFlip(F)V

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    .line 358
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 359
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 360
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDraw$3()V
    .locals 3

    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    .line 485
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    .line 486
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingStart:J

    const/4 v1, 0x1

    .line 487
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    .line 488
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    .line 489
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 490
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 491
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordEnd(Z)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 3

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingStart:J

    const-wide/16 v0, 0x0

    .line 791
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    const/4 v2, 0x1

    .line 792
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    .line 793
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoDuration(J)V

    return-void
.end method

.method private static setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V
    .locals 2

    .line 284
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)V

    return-void
.end method

.method private static setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)V
    .locals 2

    sub-float v0, p1, p3

    float-to-int v0, v0

    sub-float v1, p2, p3

    float-to-int v1, v1

    add-float/2addr p1, p3

    float-to-int p1, p1

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 288
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public hasCheck()Z
    .locals 2

    .line 658
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTouch()Z
    .locals 1

    .line 690
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->discardParentTouch:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 233
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 49

    move-object/from16 v0, p0

    .line 371
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v9

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v10

    .line 372
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLongT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v9

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    .line 373
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->overrideStartModeIsVideoT:F

    cmpl-float v2, v1, v9

    if-ltz v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideoT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    if-eqz v2, :cond_3

    move v2, v8

    goto :goto_2

    :cond_3
    move v2, v9

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    :goto_3
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 377
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    if-eqz v2, :cond_4

    move v2, v8

    goto :goto_4

    :cond_4
    move v2, v9

    :goto_4
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v13

    .line 378
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsCenterT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v2, v8

    goto :goto_5

    :cond_6
    move v2, v9

    :goto_5
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    mul-float v14, v13, v1

    .line 379
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsCenter2T:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_7

    move v2, v8

    goto :goto_6

    :cond_7
    move v2, v9

    :goto_6
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    mul-float v15, v13, v1

    .line 380
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v1, v2

    const/high16 v16, 0x41800000    # 16.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v8, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v7

    .line 381
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v1, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1, v8, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v17

    .line 382
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchIsButtonT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    move v2, v8

    goto :goto_7

    :cond_8
    move v2, v9

    :goto_7
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    mul-float/2addr v1, v13

    .line 384
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collage:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    cmpl-float v3, v3, v9

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-lez v3, :cond_9

    move/from16 v3, v19

    goto :goto_8

    :cond_9
    move/from16 v3, v18

    :goto_8
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    sub-float v20, v8, v10

    mul-float v2, v2, v20

    .line 385
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgressAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v21

    .line 386
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    .line 388
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-eqz v4, :cond_a

    mul-float v4, v10, v12

    mul-float/2addr v4, v13

    goto :goto_9

    :cond_a
    move v4, v9

    :goto_9
    cmpl-float v5, v4, v9

    const/high16 v22, 0x40000000    # 2.0f

    if-lez v5, :cond_b

    .line 390
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    const/high16 v23, 0x42480000    # 50.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    move/from16 v24, v8

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    .line 391
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    move/from16 v23, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 392
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v8, v3

    .line 394
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    const/high16 v25, 0x41f00000    # 30.0f

    move/from16 v26, v1

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v9, v1

    invoke-static {v6, v9, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    move v9, v5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    move/from16 v27, v2

    move v2, v6

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    move/from16 v28, v11

    move v11, v9

    move/from16 v9, v27

    move/from16 v27, v8

    move/from16 v8, v26

    move/from16 v26, v7

    move v7, v4

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 395
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v2, v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 397
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v11, v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-static {v2, v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_b
    move/from16 v27, v3

    move/from16 v26, v7

    move/from16 v24, v8

    move/from16 v23, v9

    move/from16 v28, v11

    move v8, v1

    move v9, v2

    move-object/from16 v1, p1

    .line 401
    :goto_a
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordCx:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v26

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    invoke-static {v2, v3, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v25

    const/high16 v2, 0x41e80000    # 29.0f

    .line 402
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v2, v4, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v26

    .line 403
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2, v3, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    .line 404
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    const v5, 0x3e4ccccd    # 0.2f

    if-eqz v4, :cond_c

    move/from16 v4, v23

    goto :goto_b

    :cond_c
    move v4, v5

    :goto_b
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->animatedAmplitude:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->amplitude:F

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v4

    mul-float/2addr v4, v5

    add-float v4, v4, v24

    invoke-static {v3, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 405
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v6, v25, v26

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    sub-float v5, v7, v26

    move/from16 v30, v11

    add-float v11, v25, v26

    add-float v7, v7, v26

    invoke-virtual {v4, v6, v5, v11, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 406
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    sub-float v31, v24, v27

    mul-float v7, v12, v31

    move/from16 v32, v6

    const/4 v6, -0x1

    move/from16 v33, v10

    const v10, -0x8cecf

    invoke-static {v6, v10, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    cmpl-float v10, v27, v23

    const/high16 v34, 0x437f0000    # 255.0f

    if-lez v10, :cond_d

    .line 408
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 409
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v1, v3, v3, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 410
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    mul-float v6, v31, v34

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 411
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 412
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 413
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v4

    move v4, v5

    move v5, v6

    const/16 v6, 0xff

    move-object/from16 v35, v7

    const/16 v7, 0x1f

    move/from16 v36, v2

    const/4 v2, 0x0

    move/from16 v37, v3

    const/4 v3, 0x0

    move/from16 v38, v10

    move/from16 v29, v13

    move/from16 v10, v27

    move/from16 v39, v32

    move/from16 v13, v37

    move/from16 v27, v12

    move/from16 v32, v15

    move-object/from16 v15, v35

    move/from16 v12, v36

    move/from16 v35, v11

    const v11, 0x3e4ccccd    # 0.2f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_c

    :cond_d
    move/from16 v38, v10

    move/from16 v35, v11

    move/from16 v29, v13

    move/from16 v10, v27

    move/from16 v39, v32

    const v11, 0x3e4ccccd    # 0.2f

    move v13, v3

    move/from16 v27, v12

    move/from16 v32, v15

    move v12, v2

    move-object v15, v4

    .line 415
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 417
    :goto_c
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v1, v13, v13, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 418
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 419
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v12, v12, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const v36, 0x3f333333    # 0.7f

    const v2, 0x3e99999a    # 0.3f

    if-lez v38, :cond_f

    .line 421
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPaint:Landroid/graphics/Paint;

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 422
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 423
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->check1:Lorg/telegram/ui/Components/Point;

    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 424
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->check1:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    iget v5, v5, Lorg/telegram/ui/Components/Point;->x:F

    div-float v6, v10, v2

    move/from16 v40, v2

    move/from16 v7, v23

    move/from16 v11, v24

    invoke-static {v6, v11, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->check1:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    iget v5, v5, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v6, v11, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v2, v10, v40

    if-lez v2, :cond_e

    .line 425
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->check3:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->x:F

    sub-float v5, v10, v40

    div-float v5, v5, v36

    const/4 v7, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v5, v11, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->check2:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->check3:Lorg/telegram/ui/Components/Point;

    iget v6, v6, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v5, v11, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    invoke-static {v4, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 426
    :cond_e
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 427
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->checkPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_d

    :cond_f
    move/from16 v40, v2

    .line 429
    :goto_d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 431
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v11, 0x3f800000    # 1.0f

    .line 432
    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 433
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v2, 0x42060000    # 33.5f

    .line 434
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const/high16 v3, 0x40900000    # 4.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    add-float v3, v26, v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v5, v24, v14

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    .line 435
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v7, v3

    sub-float v3, v26, v7

    .line 436
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 437
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float v4, v3, v2

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    sub-float v6, v5, v2

    add-float/2addr v3, v2

    add-float/2addr v5, v2

    invoke-virtual {v15, v4, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 438
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 439
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    move/from16 v4, v40

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v4, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    mul-float v4, v4, v34

    mul-float v4, v4, v31

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 440
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v23, 0x0

    cmpl-float v2, v9, v23

    if-lez v2, :cond_10

    move/from16 v2, v19

    goto :goto_e

    :cond_10
    move/from16 v2, v18

    :goto_e
    cmpl-float v3, v21, v23

    if-lez v3, :cond_11

    move/from16 v3, v19

    goto :goto_f

    :cond_11
    move/from16 v3, v18

    :goto_f
    and-int/2addr v2, v3

    const/high16 v9, 0x43b40000    # 360.0f

    if-eqz v2, :cond_12

    .line 442
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-float v4, v21, v9

    const/4 v5, 0x0

    .line 443
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_12
    move-object v2, v15

    .line 446
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingStart:J

    sub-long v10, v3, v5

    .line 447
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    goto :goto_11

    :cond_13
    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v1, v24, v28

    .line 448
    :goto_11
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    const-wide/32 v4, 0xea60

    if-eqz v3, :cond_14

    invoke-interface {v3}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->getMaxVideoDuration()J

    move-result-wide v40

    goto :goto_12

    :cond_14
    move-wide/from16 v40, v4

    .line 449
    :goto_12
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->getMaxVisibleVideoDuration()J

    move-result-wide v42

    goto :goto_13

    :cond_15
    move-wide/from16 v42, v4

    :goto_13
    long-to-float v3, v10

    const-wide/16 v44, 0x0

    cmp-long v6, v42, v44

    if-gez v6, :cond_16

    goto :goto_14

    :cond_16
    move-wide/from16 v4, v42

    :goto_14
    long-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v9

    .line 450
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 452
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    .line 454
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 455
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    mul-float v6, v3, v36

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v1, v24, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v1, v1, v34

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v23, 0x0

    cmpg-float v1, v3, v23

    if-gtz v1, :cond_17

    const/4 v5, 0x0

    .line 458
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object/from16 v7, p1

    :goto_15
    move-object v15, v2

    goto :goto_16

    .line 460
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v7, v2

    .line 461
    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingStart:J

    sub-long/2addr v5, v1

    const-wide/16 v1, 0x1518

    rem-long/2addr v5, v1

    long-to-float v1, v5

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->loadingSegments:[F

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getSegments(F[F)V

    .line 462
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 463
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->loadingSegments:[F

    aget v2, v1, v18

    aget v1, v1, v19

    add-float v5, v2, v1

    div-float v5, v5, v22

    sub-float/2addr v1, v2

    .line 466
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v1, v22

    .line 468
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    if-eqz v2, :cond_18

    div-float v4, v4, v22

    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float/2addr v2, v4

    .line 469
    invoke-static {v2, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    .line 470
    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    :cond_18
    sub-float v3, v5, v1

    mul-float v4, v1, v22

    const/4 v5, 0x0

    .line 473
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlineFilledPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v7, v1

    goto :goto_15

    .line 476
    :goto_16
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v1, :cond_1b

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const-wide/16 v1, 0x3e8

    .line 479
    div-long v1, v10, v1

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-eqz v3, :cond_19

    .line 480
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoDuration(J)V

    :cond_19
    const-wide/16 v1, 0x0

    cmp-long v1, v40, v1

    if-lez v1, :cond_1a

    cmp-long v1, v10, v40

    if-ltz v1, :cond_1a

    .line 483
    new-instance v1, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 495
    :cond_1a
    iput-wide v10, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    .line 498
    :cond_1b
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 500
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    const/high16 v9, 0x41b00000    # 22.0f

    if-eqz v1, :cond_1c

    .line 501
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    const v11, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    mul-float v1, v1, v33

    const/16 v23, 0x0

    cmpl-float v2, v1, v23

    if-lez v2, :cond_1c

    .line 503
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 504
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 505
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 506
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    neg-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 507
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->unlockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 508
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 512
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    const v11, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    mul-float v1, v1, v20

    mul-float v1, v1, v31

    const/16 v23, 0x0

    cmpl-float v2, v1, v23

    if-lez v2, :cond_1d

    .line 514
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 515
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 516
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    neg-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 517
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 518
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 521
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->dualT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->dual:Z

    if-eqz v2, :cond_1e

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_1e
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    const/16 v23, 0x0

    cmpl-float v2, v1, v23

    if-lez v2, :cond_1f

    .line 523
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 524
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    const v11, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    mul-float/2addr v2, v1

    mul-float v2, v2, v31

    .line 525
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 526
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 527
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 528
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableBlack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 529
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    :cond_1f
    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v24

    if-gez v2, :cond_20

    .line 532
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 533
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    const v11, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    sub-float v1, v24, v1

    mul-float/2addr v2, v1

    mul-float v2, v2, v31

    .line 534
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v2, v2, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 535
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 536
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 537
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableWhite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 538
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 542
    :cond_20
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v1

    if-nez v1, :cond_21

    mul-float v13, v29, v27

    mul-float v13, v13, v33

    .line 548
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    .line 550
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 551
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    .line 549
    invoke-static {v2, v3, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 554
    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 547
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    mul-float/2addr v1, v13

    move v8, v1

    goto :goto_18

    :cond_21
    const/4 v8, 0x0

    .line 560
    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-nez v2, :cond_22

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v2, :cond_22

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_19

    :cond_22
    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v10

    const/16 v23, 0x0

    cmpl-float v11, v8, v23

    if-lez v11, :cond_25

    .line 562
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 563
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 565
    iget v13, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    .line 567
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v1, v1, v29

    const v2, 0x3fa66666    # 1.3f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v14

    sub-float v1, v25, v13

    .line 568
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v16

    mul-float v1, v8, v22

    add-float v2, v26, v1

    cmpg-float v2, v16, v2

    if-gez v2, :cond_25

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v2, v14, v2

    if-gez v2, :cond_25

    add-float v17, v26, v8

    cmpg-float v2, v16, v17

    if-gez v2, :cond_23

    mul-float v2, v26, v26

    mul-float v3, v16, v16

    add-float v4, v2, v3

    mul-float v5, v8, v8

    sub-float/2addr v4, v5

    mul-float v6, v26, v22

    mul-float v6, v6, v16

    div-float/2addr v4, v6

    move/from16 v18, v9

    move/from16 v19, v10

    float-to-double v9, v4

    .line 574
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    add-float/2addr v5, v3

    sub-float/2addr v5, v2

    mul-float v1, v1, v16

    div-float/2addr v5, v1

    float-to-double v1, v5

    .line 575
    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    goto :goto_1a

    :cond_23
    move/from16 v18, v9

    move/from16 v19, v10

    const-wide/16 v9, 0x0

    move-wide v1, v9

    :goto_1a
    cmpl-float v3, v13, v25

    if-lez v3, :cond_24

    const-wide/16 v20, 0x0

    goto :goto_1b

    :cond_24
    const-wide v20, 0x400921fb54442d18L    # Math.PI

    :goto_1b
    sub-float v3, v26, v8

    div-float v3, v3, v16

    const-wide v40, 0x400921fb54442d18L    # Math.PI

    float-to-double v4, v3

    .line 581
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v3, v3

    add-double v5, v20, v9

    sub-double v42, v3, v9

    move-wide/from16 v44, v1

    float-to-double v1, v14

    mul-double v42, v42, v1

    add-double v5, v5, v42

    sub-double v9, v20, v9

    sub-double v9, v9, v42

    add-double v42, v20, v40

    sub-double v42, v42, v44

    sub-double v46, v40, v44

    sub-double v46, v46, v3

    mul-double v46, v46, v1

    sub-double v42, v42, v46

    sub-double v20, v20, v40

    add-double v20, v20, v44

    add-double v20, v20, v46

    .line 588
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    move-wide v3, v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    move/from16 v1, v25

    move/from16 v5, v26

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    move-wide/from16 v25, v3

    .line 589
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p2:Lorg/telegram/ui/Components/Point;

    move-wide v3, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    move-wide/from16 v40, v3

    move v9, v5

    .line 590
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    move v5, v8

    move v1, v13

    move-wide/from16 v3, v42

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    .line 591
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p4:Lorg/telegram/ui/Components/Point;

    move-wide/from16 v3, v20

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    const v1, 0x4019999a    # 2.4f

    mul-float/2addr v14, v1

    .line 594
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->dist(Lorg/telegram/ui/Components/Point;Lorg/telegram/ui/Components/Point;)F

    move-result v1

    div-float v1, v1, v17

    invoke-static {v14, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v16, v16, v22

    div-float v2, v16, v17

    const/high16 v3, 0x3f800000    # 1.0f

    .line 595
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v1, v2

    mul-float v5, v9, v1

    mul-float v10, v8, v1

    .line 600
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    const-wide v13, 0x3ff921fb60000000L    # 1.5707963705062866

    sub-double v3, v25, v13

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->h1:Lorg/telegram/ui/Components/Point;

    move/from16 v48, v2

    move v2, v1

    move/from16 v1, v48

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    .line 601
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p2:Lorg/telegram/ui/Components/Point;

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    add-double v3, v40, v13

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->h2:Lorg/telegram/ui/Components/Point;

    move/from16 v48, v2

    move v2, v1

    move/from16 v1, v48

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    .line 602
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    add-double v3, v42, v13

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->h3:Lorg/telegram/ui/Components/Point;

    move v5, v2

    move v2, v1

    move v1, v5

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    .line 603
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p4:Lorg/telegram/ui/Components/Point;

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    sub-double v3, v20, v13

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->h4:Lorg/telegram/ui/Components/Point;

    move/from16 v48, v2

    move v2, v1

    move/from16 v1, v48

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/RecordControl;->getVector(FFDFLorg/telegram/ui/Components/Point;)V

    mul-float v13, v29, v27

    mul-float v13, v13, v33

    mul-float v13, v13, v32

    const/16 v23, 0x0

    cmpl-float v1, v13, v23

    if-lez v1, :cond_26

    .line 608
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 610
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 611
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->h1:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->h3:Lorg/telegram/ui/Components/Point;

    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p3:Lorg/telegram/ui/Components/Point;

    iget v10, v6, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v6, Lorg/telegram/ui/Components/Point;->y:F

    move-object/from16 v24, v1

    move/from16 v26, v2

    move/from16 v25, v3

    move/from16 v28, v4

    move/from16 v27, v5

    move/from16 v30, v6

    move/from16 v29, v10

    invoke-virtual/range {v24 .. v30}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 612
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p4:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 613
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->h4:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->h2:Lorg/telegram/ui/Components/Point;

    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p2:Lorg/telegram/ui/Components/Point;

    iget v10, v6, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v6, Lorg/telegram/ui/Components/Point;->y:F

    move-object/from16 v24, v1

    move/from16 v26, v2

    move/from16 v25, v3

    move/from16 v28, v4

    move/from16 v27, v5

    move/from16 v30, v6

    move/from16 v29, v10

    invoke-virtual/range {v24 .. v30}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 614
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->p1:Lorg/telegram/ui/Components/Point;

    iget v3, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 616
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    mul-float v13, v13, v34

    float-to-int v2, v13

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 617
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->metaballsPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 619
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    sub-float v2, v1, v9

    add-float/2addr v1, v9

    move/from16 v4, v35

    move/from16 v3, v39

    invoke-virtual {v15, v3, v2, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 620
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v15, v12, v12, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1c

    :cond_25
    move/from16 v18, v9

    move/from16 v19, v10

    :cond_26
    :goto_1c
    if-gtz v11, :cond_28

    const/16 v23, 0x0

    cmpl-float v1, v19, v23

    if-lez v1, :cond_27

    goto :goto_1d

    :cond_27
    return-void

    .line 625
    :cond_28
    :goto_1d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    mul-float v1, v1, v33

    mul-float v1, v1, v31

    .line 626
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 627
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    if-lez v11, :cond_29

    .line 629
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v8, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_29
    const/16 v23, 0x0

    cmpl-float v2, v19, v23

    if-lez v2, :cond_2a

    .line 631
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    if-eqz v2, :cond_2a

    .line 632
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v10, v19, v5

    mul-float/2addr v10, v1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v10, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 634
    :cond_2a
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 636
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    if-eqz v2, :cond_2b

    .line 637
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 638
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 639
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v1

    neg-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 641
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 642
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 645
    :cond_2b
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    const v11, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    mul-float v1, v1, v31

    .line 646
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 647
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 648
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 649
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 650
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableBlack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 651
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 653
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 259
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    .line 260
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    .line 262
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    int-to-float v2, p2

    div-float/2addr v2, v1

    .line 263
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v1, 0x43070000    # 135.0f

    .line 265
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 266
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float v2, v1, v0

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    add-float/2addr v1, v0

    .line 267
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableWhite:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v1, v2, v4}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableBlack:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FFF)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->unlockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redGradient:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->redMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 280
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float v7, p1, v2

    .line 707
    iget v8, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 p1, 0x40e00000    # 7.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v10, p1

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isPressed(FFFFFZ)Z

    move-result p1

    .line 708
    iget-boolean v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 710
    iget-object v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 711
    iget-object v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    .line 712
    iget-boolean v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    if-eqz v1, :cond_4

    .line 713
    :cond_1
    iget-object v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    iget v8, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    iget v9, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v10, 0x42700000    # 60.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isPressed(FFFFFZ)Z

    move-result v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 714
    iget-object v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    iget v8, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v9, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isPressed(FFFFFZ)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v3

    goto :goto_0

    :cond_2
    move v8, v4

    :goto_0
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 715
    iget-object v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    iget v8, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    iget v9, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isPressed(FFFFFZ)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v8

    if-nez v8, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    move v8, v4

    :goto_1
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_4
    :goto_2
    if-nez v0, :cond_8

    .line 720
    iput-boolean v3, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    .line 721
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v4, v3

    :cond_6
    iput-boolean v4, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->discardParentTouch:Z

    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchStart:J

    .line 723
    iput v6, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    .line 724
    iput v7, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchY:F

    .line 726
    iget v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->cx:F

    sub-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 727
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->onRecordLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 730
    :cond_7
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 731
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->onFlipLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    :cond_8
    const/4 v1, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x43340000    # 180.0f

    if-ne v0, v1, :cond_b

    .line 736
    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    if-nez v0, :cond_9

    return v4

    .line 739
    :cond_9
    iget v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->rightCx:F

    iget v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->leftCx:F

    invoke-static {v6, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchX:F

    .line 740
    iput v7, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touchY:F

    .line 741
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 743
    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButtonWasPressed:Z

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 744
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Stories/recorder/RecordControl;->rotateFlip(F)V

    .line 745
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onFlipClick()V

    .line 748
    :cond_a
    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v0, :cond_17

    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-eqz v0, :cond_17

    .line 749
    iget v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->cy:F

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v7

    .line 750
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    invoke-static {v0, v8, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 751
    iget-object v1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onZoom(F)V

    goto/16 :goto_5

    :cond_b
    if-eq v0, v3, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    goto :goto_3

    :cond_c
    move v3, v4

    goto/16 :goto_5

    .line 756
    :cond_d
    :goto_3
    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    if-nez v0, :cond_e

    return v4

    .line 760
    :cond_e
    iput-boolean v4, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->touch:Z

    .line 761
    iput-boolean v4, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->discardParentTouch:Z

    .line 763
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->onRecordLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 764
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->onFlipLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 766
    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_f

    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 767
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onGalleryClick()V

    goto/16 :goto_4

    .line 768
    :cond_f
    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-eqz v0, :cond_11

    .line 769
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 770
    iput-boolean v4, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    .line 771
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v8, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 772
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordLocked()V

    goto :goto_4

    .line 774
    :cond_10
    iput-boolean v4, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    .line 775
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingStart:J

    .line 776
    iput-boolean v3, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    .line 777
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0, v4}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordEnd(Z)V

    goto :goto_4

    .line 779
    :cond_11
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 780
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->hasCheck()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 781
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onCheckClick()V

    goto :goto_4

    .line 782
    :cond_12
    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    if-nez v0, :cond_13

    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_13

    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    if-nez v0, :cond_13

    .line 783
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onPhotoShoot()V

    goto :goto_4

    .line 784
    :cond_13
    iget-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_14

    .line 785
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->canRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x0

    .line 786
    iput-wide v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->lastDuration:J

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingStart:J

    .line 788
    iput-boolean v4, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->showLock:Z

    .line 789
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/RecordControl$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/RecordControl;)V

    invoke-interface {v0, v4, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordStart(ZLjava/lang/Runnable;)V

    goto :goto_4

    .line 797
    :cond_14
    iput-boolean v4, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    .line 798
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingStart:J

    .line 799
    iput-boolean v3, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    .line 800
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0, v4}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordEnd(Z)V

    .line 804
    :cond_15
    :goto_4
    iput-boolean v4, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->longpressRecording:Z

    .line 806
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 807
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Stories/recorder/RecordControl;->rotateFlip(F)V

    .line 808
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onFlipClick()V

    .line 811
    :cond_16
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 812
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 813
    iget-object v0, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 815
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 819
    :cond_17
    :goto_5
    iput-boolean p1, v5, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButtonWasPressed:Z

    return v3
.end method

.method public rotateFlip(F)V
    .locals 3

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotateT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x26c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x136

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    .line 673
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableRotate:F

    .line 674
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAmplitude(FZ)V
    .locals 1

    .line 248
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->amplitude:F

    if-nez p2, :cond_0

    .line 250
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->animatedAmplitude:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_0
    return-void
.end method

.method public setCollageProgress(FZ)V
    .locals 2

    .line 323
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgress:F

    if-nez p2, :cond_2

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collage:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 327
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->collageProgressAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 329
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    return-void
.end method

.method public setDual(Z)V
    .locals 1

    .line 694
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->dual:Z

    if-eq p1, v0, :cond_0

    .line 695
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->dual:Z

    .line 696
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInvert(F)V
    .locals 6

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->outlinePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->buttonPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x64000000

    const/high16 v4, 0x16000000

    invoke-static {v3, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintWhite:Landroid/graphics/Paint;

    const v3, 0x58ffffff

    const v4, 0x10ffffff

    invoke-static {v3, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->hintLinePaintBlack:Landroid/graphics/Paint;

    const/high16 v3, 0x18000000

    const/high16 v4, 0x30000000

    invoke-static {v3, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipDrawableWhite:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->unlockDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-direct {v3, p1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public startAsVideo(Z)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 83
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->overrideStartModeIsVideoT:F

    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->startModeIsVideo:Z

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startAsVideoT(F)V
    .locals 0

    .line 89
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->overrideStartModeIsVideoT:F

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stopRecording()V
    .locals 3

    .line 828
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 831
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recording:Z

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingStart:J

    const/4 v1, 0x1

    .line 833
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    .line 834
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->onVideoRecordEnd(Z)V

    .line 835
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 836
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->flipButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 837
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->lockButton:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 838
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stopRecordingLoading(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 842
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoading:Z

    if-nez p1, :cond_0

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RecordControl;->recordingLoadingT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateGalleryImage()V
    .locals 18

    move-object/from16 v0, p0

    .line 197
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->delegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;->showStoriesDrafts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    .line 199
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v3, v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IIZ)V

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    if-eqz v4, :cond_0

    .line 201
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v7, "80_80"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 205
    :cond_0
    sget-object v1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_1

    .line 207
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 210
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 211
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v6, "80_80"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    :cond_2
    if-eqz v1, :cond_4

    .line 212
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 213
    iget-boolean v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const-string v4, ":"

    if-eqz v3, :cond_3

    .line 214
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vthumb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v7, "80_80"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 216
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    iget v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v6, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    invoke-virtual {v3, v5, v6, v2}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IIZ)V

    .line 217
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v9, "80_80"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 220
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->galleryImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/RecordControl;->noGalleryDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
