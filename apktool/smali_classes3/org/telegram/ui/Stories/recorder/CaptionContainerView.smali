.class public abstract Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;,
        Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;
    }
.end annotation


# instance fields
.field public applyButton:Landroid/widget/ImageView;

.field private applyButtonCheck:Landroid/graphics/drawable/Drawable;

.field private applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field protected final backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private backgroundForCaptionField:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field protected final backgroundPaint:Landroid/graphics/Paint;

.field beforeScrollY:I

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapMatrix:Landroid/graphics/Matrix;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private blurPaint:Landroid/graphics/Paint;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public final bounds:Landroid/graphics/RectF;

.field protected final captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final clickBounds:Landroid/graphics/RectF;

.field private final clipPath:Landroid/graphics/Path;

.field private codePointCount:I

.field private collapseGradient:Landroid/graphics/RadialGradient;

.field private collapseGradientMatrix:Landroid/graphics/Matrix;

.field private collapseOutGradient:Landroid/graphics/RadialGradient;

.field private collapseOutPaint:Landroid/graphics/Paint;

.field private collapsePaint:Landroid/graphics/Paint;

.field public collapsed:Z

.field public collapsedFromX:I

.field public final collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final containerView:Landroid/widget/FrameLayout;

.field protected currentAccount:I

.field private dialogId:J

.field public final editText:Lorg/telegram/ui/Components/EditTextEmoji;

.field protected factoryForMentions:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final fadeGradient:Landroid/graphics/LinearGradient;

.field private final fadePaint:Landroid/graphics/Paint;

.field private getUiBlurBitmap:Lorg/telegram/messenger/Utilities$CallbackVoidReturn;

.field goingToScrollY:I

.field private hasReply:Z

.field private final heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private hintTextBitmap:Landroid/graphics/Bitmap;

.field private final hintTextBitmapPaint:Landroid/graphics/Paint;

.field private final hintTextPaint:Landroid/text/TextPaint;

.field private ignoreDraw:Z

.field private ignoreTextChange:Z

.field public ignoreTouches:Z

.field private keyboardAnimator:Landroid/animation/ValueAnimator;

.field public final keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field public keyboardShown:Z

.field public keyboardT:F

.field private lastHeight:I

.field private lastHeightTranslation:F

.field public limitTextContainer:Landroid/widget/FrameLayout;

.field public limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final matrix:Landroid/graphics/Matrix;

.field private mentionBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field public mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

.field private mentionsDelegate:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

.field private onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;

.field private onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

.field parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

.field private final rectF:Landroid/graphics/RectF;

.field protected final replyBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private replyClipPath:Landroid/graphics/Path;

.field private replyLinePaint:Landroid/graphics/Paint;

.field private replyLinePath:Landroid/graphics/Path;

.field private replyLinePathRadii:[F

.field private replyText:Lorg/telegram/ui/Components/Text;

.field protected final replyTextBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private replyTitle:Lorg/telegram/ui/Components/Text;

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rootView:Landroid/widget/FrameLayout;

.field private scrollAnimator:Landroid/animation/ObjectAnimator;

.field private shiftDp:I

.field private final sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field protected final strokeDrawable:Lorg/telegram/ui/Components/blur3/StrokeDrawable;

.field protected final strokeDrawableEmoji:Lorg/telegram/ui/Components/blur3/StrokeDrawable;

.field private final textChangeRunnable:Ljava/lang/Runnable;

.field public toKeyboardShow:Z

.field private updateShowKeyboard:Ljava/lang/Runnable;

.field waitingForScrollYChange:Z


# direct methods
.method public static synthetic $r8$lambda$5Ek0ZrXu82JhY7ZM7XljhTPgKVI(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HF99bf103y5v7zGHpKUFlPhr66E(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$updateShowKeyboard$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_eRla3s4njWd8iQoHhyYq38ZP1g(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$a2otEEGyeLoKAWNTfRmj1OwrF2U(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawHint(Landroid/graphics/Canvas;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xfwbJ4DkpwO_eJIOqrWfa4fuALo(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lambda$new$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcodePointCount(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->codePointCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->dialogId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetignoreTextChange(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmentionBackgroundBlur(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrectF(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollAnimator(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshiftDp(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->shiftDp:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextChangeRunnable(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcodePointCount(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->codePointCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreTextChange(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollAnimator(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshiftDp(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->shiftDp:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateMentionsContainer(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->createMentionsContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdrawBackground(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreplaceWithText(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;IILjava/lang/CharSequence;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replaceWithText(IILjava/lang/CharSequence;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 145
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v10, Lorg/telegram/ui/Components/blur3/StrokeDrawable;

    invoke-direct {v10}, Lorg/telegram/ui/Components/blur3/StrokeDrawable;-><init>()V

    iput-object v10, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->strokeDrawable:Lorg/telegram/ui/Components/blur3/StrokeDrawable;

    .line 97
    new-instance v11, Lorg/telegram/ui/Components/blur3/StrokeDrawable;

    invoke-direct {v11}, Lorg/telegram/ui/Components/blur3/StrokeDrawable;-><init>()V

    iput-object v11, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->strokeDrawableEmoji:Lorg/telegram/ui/Components/blur3/StrokeDrawable;

    .line 98
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    .line 108
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    .line 109
    new-instance v15, Landroid/graphics/LinearGradient;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, -0x10000

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [I

    move-result-object v20

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v0

    move-object/from16 v21, v4

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v15, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    .line 110
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    .line 113
    new-instance v0, Landroid/text/TextPaint;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmapPaint:Landroid/graphics/Paint;

    const/4 v5, -0x4

    .line 122
    iput v5, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->shiftDp:I

    .line 129
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v5, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    .line 435
    new-instance v5, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    .line 498
    new-instance v5, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v6, 0x40400000    # 3.0f

    move/from16 v16, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v13, v6}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;FF)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 677
    new-instance v5, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    move-object v5, v0

    .line 876
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move/from16 v18, v2

    move/from16 v17, v3

    const-wide/16 v2, 0x0

    move/from16 v20, v4

    move-object/from16 v19, v5

    const-wide/16 v4, 0x12c

    move/from16 v24, v17

    move/from16 v17, v13

    move/from16 v13, v24

    move-object/from16 v24, v19

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object v2, v6

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 880
    iput-boolean v13, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    .line 882
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    .line 883
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    .line 884
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clickBounds:Landroid/graphics/RectF;

    .line 1167
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clipPath:Landroid/graphics/Path;

    .line 1191
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v3, 0x1f4

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 147
    iput-object v8, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 148
    iput-object v7, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    move-object/from16 v3, p3

    .line 149
    iput-object v3, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v0, p4

    .line 150
    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->containerView:Landroid/widget/FrameLayout;

    .line 151
    iput-object v9, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    .line 153
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v9, v1, v13, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;IZ)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    .line 154
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/16 v4, 0x8

    invoke-direct {v0, v9, v1, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    .line 155
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/16 v5, 0x9

    invoke-direct {v0, v9, v1, v5}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTextBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    move/from16 v0, v16

    .line 157
    iput-boolean v0, v10, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->nonRound:Z

    .line 158
    new-instance v5, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v4, 0x0

    invoke-direct {v5, v1, v8, v6, v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IF)V

    invoke-virtual {v10, v5}, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)V

    .line 164
    invoke-virtual {v10, v13}, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->setBackgroundColor(I)V

    .line 165
    iput-boolean v0, v11, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->nonRound:Z

    .line 166
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;

    invoke-direct {v0, v1, v8, v6, v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IF)V

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)V

    .line 172
    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->setBackgroundColor(I)V

    const/high16 v0, -0x80000000

    .line 174
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    new-instance v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-direct {v0, v7, v5}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    .line 178
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextStyle()I

    move-result v5

    new-instance v7, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v7}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    move v6, v4

    const/4 v4, 0x0

    move v10, v6

    const/4 v6, 0x1

    move-object/from16 v23, v2

    move v11, v10

    const/16 v10, 0x8

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v3, 0x1

    .line 312
    iput-boolean v3, v0, Lorg/telegram/ui/Components/EditTextEmoji;->glassDesignForEmojiView:Z

    .line 313
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/EditTextSuggestionsFix;

    invoke-direct {v5}, Lorg/telegram/ui/Components/EditTextSuggestionsFix;-><init>()V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 314
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setFocusable(Z)V

    .line 315
    iget v4, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v4}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextStyle()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v13

    :goto_0
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->allowEmojisForNonPremium(Z)V

    .line 316
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 317
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    iput-boolean v3, v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutYFix:Z

    .line 318
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v5, v4, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawHint:Lorg/telegram/messenger/Utilities$Callback2;

    .line 319
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSupportRtlHint(Z)V

    .line 320
    new-instance v3, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move/from16 v5, v18

    :goto_1
    invoke-direct {v3, v9, v4, v5}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v3, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    .line 321
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 322
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;Z)V

    .line 323
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v5, v24

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 324
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    const/high16 v5, -0x3e300000    # -26.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 325
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    const/16 v5, 0x30

    if-eqz v3, :cond_2

    .line 326
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 328
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setAlpha(F)V

    .line 329
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v6, :cond_3

    move/from16 v6, v17

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 330
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_4

    move/from16 v7, v17

    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 331
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$4;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$4;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 392
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 393
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    const/16 v6, 0x50

    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_3

    :cond_5
    move v3, v6

    :goto_3
    or-int/lit8 v26, v3, 0x7

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->additionalRightMargin()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    int-to-float v3, v3

    const/high16 v30, 0x41000000    # 8.0f

    const/16 v24, -0x1

    const/high16 v25, -0x40000000    # -2.0f

    const/high16 v27, 0x41400000    # 12.0f

    const/high16 v28, 0x41000000    # 8.0f

    move/from16 v29, v3

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/high16 v3, 0x3fa00000    # 1.25f

    const v7, 0x3d4ccccd    # 0.05f

    .line 396
    invoke-static {v0, v7, v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 397
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->input_done:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonCheck:Landroid/graphics/drawable/Drawable;

    .line 398
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 399
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-static {v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonCheck:Landroid/graphics/drawable/Drawable;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-direct {v0, v3, v7, v13, v8}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v3, 0x42100000    # 36.0f

    .line 400
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v7, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 401
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 403
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    .line 404
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_4

    :cond_6
    move v3, v6

    :goto_4
    or-int/lit8 v26, v3, 0x5

    const/high16 v29, 0x41000000    # 8.0f

    const/high16 v30, 0x41000000    # 8.0f

    const/16 v24, 0x2c

    const/high16 v25, 0x42300000    # 44.0f

    const/high16 v27, 0x41000000    # 8.0f

    const/high16 v28, 0x41000000    # 8.0f

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v13, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v3, 0x11

    .line 413
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 414
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 415
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 416
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x140

    const v18, 0x3ecccccd    # 0.4f

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v23}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 417
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 418
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x40000000    # 2.0f

    .line 419
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 420
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    or-int/lit8 v3, v3, 0x5

    const/16 v4, 0x34

    const/16 v7, 0x10

    invoke-static {v4, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    move v5, v6

    :goto_6
    or-int/lit8 v8, v5, 0x5

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    const/16 v3, 0x32

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_7

    :cond_9
    move v2, v13

    :goto_7
    int-to-float v10, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    if-eqz v2, :cond_a

    move v3, v13

    :cond_a
    int-to-float v12, v3

    const/16 v6, 0x34

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 424
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateScrollTo(Z)V
    .locals 6

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 509
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 512
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 515
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 516
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    .line 517
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setForceCursorEnd(Z)V

    .line 518
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz p1, :cond_3

    sub-int v3, v2, v4

    .line 521
    :cond_3
    const-string/jumbo p1, "scrollY"

    filled-new-array {v1, v3}, [I

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x168

    .line 522
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->scrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method private createMentionsContainer()V
    .locals 9

    .line 536
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v8}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    .line 559
    new-instance v2, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    .line 560
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setupMentionContainer()V

    .line 561
    new-instance v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$6;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionsDelegate:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    .line 572
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    .line 573
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->factoryForMentions:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    if-eqz v0, :cond_0

    .line 574
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->photoViewer(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->setBackgroundDrawable(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    .line 576
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->containerView:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/16 v3, 0x53

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setupMentionContainer()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V
    .locals 5

    .line 1248
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    if-eqz p5, :cond_1

    .line 1253
    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v1, v3

    .line 1254
    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    .line 1255
    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    .line 1256
    instance-of v3, p5, Landroid/view/View;

    if-eqz v3, :cond_0

    check-cast p5, Landroid/view/View;

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1258
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1259
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1260
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p4

    float-to-int v0, v1

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1261
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1263
    :cond_2
    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    const/high16 p4, 0x43000000    # 128.0f

    goto :goto_2

    :cond_3
    const/16 v0, 0x99

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/16 v2, 0x80

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p4, v0

    :goto_2
    float-to-int p4, p4

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1264
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;Ljava/lang/Runnable;)V
    .locals 11

    .line 1209
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v2

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    .line 1210
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 1211
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1214
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v9

    .line 1215
    iget v2, v9, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutX:F

    neg-float v2, v2

    const/4 v10, 0x0

    invoke-virtual {p1, v2, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1216
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v5, v2

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1217
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {v1, v10, v8, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1218
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v6, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v7, v2, v4

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V

    .line 1219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1220
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmapPaint:Landroid/graphics/Paint;

    const/16 v2, 0xa5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1221
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 1226
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v8

    .line 1227
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    if-eqz v8, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    const v2, -0x7f000001

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    if-nez v8, :cond_3

    .line 1229
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1231
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v9

    .line 1232
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    const/16 v5, 0xff

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1233
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1234
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawReply(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 907
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hasReply:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTextBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 913
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 914
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v1, :cond_1

    .line 915
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_0
    int-to-float v4, v4

    sub-float/2addr v1, v4

    goto :goto_1

    .line 917
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x42a40000    # 82.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 919
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x42480000    # 50.0f

    .line 920
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    :goto_2
    move v8, v1

    move v9, v3

    goto :goto_3

    .line 922
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 925
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyBackgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v1

    .line 926
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTextBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaint(F)Landroid/graphics/Paint;

    move-result-object v10

    .line 928
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v8

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v4

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v8

    invoke-virtual {v11, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v12, 0x40a00000    # 5.0f

    if-eqz v1, :cond_3

    .line 930
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v11, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    if-eqz v10, :cond_4

    .line 934
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v2, v1

    .line 936
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyClipPath:Landroid/graphics/Path;

    if-nez v1, :cond_5

    .line 937
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyClipPath:Landroid/graphics/Path;

    goto :goto_4

    .line 939
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    :goto_4
    const/high16 v1, 0x41a80000    # 21.0f

    .line 941
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/4 v7, 0x0

    invoke-static {v1, v7, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    .line 942
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyClipPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v1, v1, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 943
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyClipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 944
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTitle:Lorg/telegram/ui/Components/Text;

    const/high16 v14, 0x41a00000    # 20.0f

    const/high16 v15, 0x42200000    # 40.0f

    if-eqz v1, :cond_6

    .line 945
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v8

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 947
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePath:Landroid/graphics/Path;

    if-nez v1, :cond_7

    .line 948
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePath:Landroid/graphics/Path;

    const/16 v1, 0x8

    .line 949
    new-array v1, v1, [F

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePathRadii:[F

    .line 950
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    aput v3, v1, v7

    .line 951
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePathRadii:[F

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v3, 0x2

    aput v4, v1, v3

    const/4 v3, 0x5

    .line 952
    aput v4, v1, v3

    const/4 v3, 0x4

    aput v4, v1, v3

    .line 953
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x7

    aput v3, v1, v4

    const/4 v4, 0x6

    aput v3, v1, v4

    goto :goto_5

    .line 955
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 957
    :goto_5
    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v3, v11, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 958
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePathRadii:[F

    invoke-virtual {v1, v11, v3, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 959
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_8

    .line 960
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    .line 961
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 963
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v9, v3

    float-to-int v3, v9

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 964
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v10, :cond_9

    .line 966
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 967
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 968
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 969
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 972
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyText:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_a

    .line 973
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v8

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_a
    :goto_6
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 406
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->textChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 435
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onTextChange()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 678
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateShowKeyboard$3(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 716
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    .line 717
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/high16 v0, -0x3e300000    # -26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextLeft()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 720
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 721
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 722
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 723
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 724
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onUpdateShowKeyboard(F)V

    .line 725
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_0

    .line 726
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 728
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 729
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private replaceWithText(IILjava/lang/CharSequence;Z)V
    .locals 2

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-nez v0, :cond_0

    return-void

    .line 592
    :cond_0
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr p2, p1

    .line 593
    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_1

    .line 595
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {v0, p2, p4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 597
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 600
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateShowKeyboard(ZZ)V
    .locals 9

    .line 693
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_6

    .line 696
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 699
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 701
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_2

    .line 702
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 704
    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->beforeUpdateShownKeyboard(Z)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p2, :cond_8

    if-eqz p1, :cond_4

    .line 707
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p2, :cond_3

    .line 708
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 710
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 712
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/view/View;->scrollBy(II)V

    .line 714
    :goto_0
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    if-eqz p1, :cond_5

    move v2, v3

    :cond_5
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p2, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 715
    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_6

    .line 732
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 734
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$7;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$7;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Z)V

    invoke-virtual {p2, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_7

    .line 750
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 751
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 753
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 754
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1a4

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 756
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_4

    :cond_8
    if-eqz p1, :cond_9

    move p2, v3

    goto :goto_2

    :cond_9
    move p2, v2

    .line 758
    :goto_2
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    .line 759
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    const/high16 v5, -0x3e300000    # -26.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextLeft()I

    move-result v6

    add-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 762
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v7, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 763
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextContainer:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 764
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object p2

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 765
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    move v5, v4

    goto :goto_3

    :cond_a
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 767
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onUpdateShowKeyboard(F)V

    .line 768
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 769
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->afterUpdateShownKeyboard(Z)V

    .line 770
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 772
    :goto_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->animateScrollTo(Z)V

    .line 773
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSuggestionsEnabled(Z)V

    if-nez p1, :cond_c

    .line 775
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2, v4, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    :cond_c
    if-eqz p1, :cond_11

    .line 778
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-lt p1, v0, :cond_11

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p1

    if-nez p1, :cond_11

    .line 779
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 p2, 0x41400000    # 12.0f

    if-nez p1, :cond_d

    .line 780
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    .line 782
    :cond_d
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    .line 783
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlurBitmap(Landroid/graphics/Bitmap;F)V

    .line 784
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    .line 785
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_10

    .line 786
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_e

    .line 788
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    goto :goto_5

    .line 790
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 792
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 793
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_f

    .line 794
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 795
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 797
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    .line 799
    :cond_10
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    :cond_11
    :goto_6
    return-void
.end method


# virtual methods
.method protected additionalKeyboardHeight()I
    .locals 1

    .line 633
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    return v0
.end method

.method public additionalRightMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract afterUpdateShownKeyboard(Z)V
.end method

.method protected abstract beforeUpdateShownKeyboard(Z)V
.end method

.method protected abstract captionLimitToast()Z
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x1

    .line 1313
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    .line 1314
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method protected clipChild(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public closeKeyboard()V
    .locals 2

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void
.end method

.method protected abstract customBlur()Z
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 983
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreDraw:Z

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 986
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 988
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    const/high16 v4, 0x42300000    # 44.0f

    if-eqz v3, :cond_1

    .line 989
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    .line 990
    :cond_1
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v3, :cond_2

    .line 991
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v3, 0x42a40000    # 82.0f

    .line 993
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 995
    :goto_0
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hasReply:Z

    if-eqz v3, :cond_3

    const/high16 v3, 0x42480000    # 50.0f

    .line 996
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 998
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    float-to-int v3, v3

    .line 999
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeight:I

    if-eq v3, v5, :cond_5

    .line 1000
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onEditHeightChange(I)V

    .line 1001
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v5, :cond_4

    .line 1002
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1004
    :cond_4
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeight:I

    .line 1006
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateMentionsLayoutPosition()V

    const/high16 v1, 0x40e00000    # 7.0f

    .line 1009
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v5, 0x41000000    # 8.0f

    .line 1010
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1011
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v6

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v6, :cond_7

    .line 1012
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    if-nez v4, :cond_6

    .line 1013
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v4, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 1014
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v6

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeightTranslation:F

    invoke-virtual {v6, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1017
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v8, v5

    .line 1020
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v9, v1

    int-to-float v9, v9

    add-int/2addr v5, v3

    int-to-float v3, v5

    .line 1017
    invoke-virtual {v4, v6, v8, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1023
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clickBounds:Landroid/graphics/RectF;

    .line 1026
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v1, v4

    .line 1027
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    .line 1023
    invoke-virtual {v3, v6, v8, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 1030
    :cond_7
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v6, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    add-float/2addr v6, v4

    int-to-float v4, v3

    sub-float/2addr v6, v4

    .line 1031
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeightTranslation:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v11

    if-ltz v4, :cond_8

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    if-nez v4, :cond_8

    .line 1032
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    iput v6, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->lastHeightTranslation:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1034
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    int-to-float v6, v1

    .line 1036
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v3

    int-to-float v8, v8

    .line 1037
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v9, v1

    int-to-float v1, v9

    .line 1038
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v9, v5

    int-to-float v5, v9

    .line 1034
    invoke-virtual {v4, v6, v8, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1040
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clickBounds:Landroid/graphics/RectF;

    .line 1042
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    .line 1043
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 1044
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 1040
    invoke-virtual {v1, v10, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1048
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1049
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3c9374bc    # 0.018f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    .line 1050
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v1, 0x41a80000    # 21.0f

    .line 1052
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->forceRound()F

    move-result v4

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    const/4 v12, 0x0

    invoke-static {v1, v12, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v4, v1

    .line 1053
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->factoryForMentions:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    const/4 v13, 0x1

    if-eqz v1, :cond_a

    .line 1054
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundForCaptionField:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v5, 0x40a00000    # 5.0f

    if-nez v3, :cond_9

    .line 1055
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1056
    invoke-static {v3}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->photoViewer(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    .line 1057
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    const/high16 v3, 0x41b00000    # 22.0f

    .line 1058
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundForCaptionField:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1061
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1062
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v1, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    neg-int v1, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v1, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1063
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundForCaptionField:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1064
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundForCaptionField:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1065
    :cond_a
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1066
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V

    .line 1067
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v3, 0x40

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    const/16 v6, 0x26

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1068
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1070
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v1, v11, v10, v10}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaints(FFF)[Landroid/graphics/Paint;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1071
    aget-object v3, v1, v13

    if-nez v3, :cond_c

    goto :goto_2

    .line 1075
    :cond_c
    aget-object v3, v1, v12

    if-eqz v3, :cond_d

    .line 1076
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1078
    :cond_d
    aget-object v1, v1, v13

    if-eqz v1, :cond_e

    .line 1079
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1081
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1082
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1072
    :cond_f
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1073
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1086
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    .line 1087
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    sub-float v5, v1, v3

    .line 1088
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_12

    cmpg-float v1, v1, v10

    if-gtz v1, :cond_10

    move v1, v13

    goto :goto_4

    :cond_10
    move v1, v12

    :goto_4
    cmpg-float v5, v3, v10

    if-gtz v5, :cond_11

    move v5, v13

    goto :goto_5

    :cond_11
    move v5, v12

    :goto_5
    if-eq v1, v5, :cond_13

    .line 1089
    :cond_12
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->invalidateDrawOver2()V

    :cond_13
    cmpl-float v1, v3, v10

    const/16 v5, 0x1f

    const/16 v6, 0xff

    if-lez v1, :cond_14

    .line 1092
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v7, v6, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1095
    :cond_14
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawReply(Landroid/graphics/Canvas;)V

    .line 1097
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-lez v1, :cond_18

    .line 1101
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedFromX:I

    const v7, 0x7fffffff

    const/high16 v8, 0x41a00000    # 20.0f

    if-ne v1, v7, :cond_15

    .line 1102
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v1, v7

    goto :goto_6

    :cond_15
    const/high16 v7, -0x80000000

    if-ne v1, v7, :cond_16

    .line 1104
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v1, v7

    goto :goto_6

    :cond_16
    int-to-float v1, v1

    .line 1108
    :goto_6
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 1109
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    .line 1110
    invoke-static {v9, v8, v1, v7}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v10, v9, v1, v7}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->right:F

    iget v9, v9, Landroid/graphics/RectF;->top:F

    .line 1111
    invoke-static {v10, v9, v1, v7}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v14, v10, Landroid/graphics/RectF;->right:F

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14, v10, v1, v7}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 1109
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v8, v3

    .line 1114
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsePaint:Landroid/graphics/Paint;

    if-nez v9, :cond_17

    .line 1115
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsePaint:Landroid/graphics/Paint;

    .line 1116
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1117
    new-instance v15, Landroid/graphics/RadialGradient;

    const/4 v9, -0x1

    filled-new-array {v9, v9, v12}, [I

    move-result-object v19

    const/4 v10, 0x3

    new-array v5, v10, [F

    fill-array-data v5, :array_0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x42000000    # 32.0f

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v21}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v15, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradient:Landroid/graphics/RadialGradient;

    .line 1118
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1119
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    .line 1121
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutPaint:Landroid/graphics/Paint;

    .line 1122
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1123
    new-instance v22, Landroid/graphics/RadialGradient;

    filled-new-array {v12, v12, v9}, [I

    move-result-object v26

    new-array v5, v10, [F

    fill-array-data v5, :array_1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x42000000    # 32.0f

    move-object/from16 v27, v5

    move-object/from16 v28, v21

    invoke-direct/range {v22 .. v28}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v5, v22

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutGradient:Landroid/graphics/RadialGradient;

    .line 1124
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1126
    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 1127
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1128
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x41800000    # 16.0f

    div-float/2addr v9, v10

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v12

    div-float/2addr v12, v10

    invoke-virtual {v5, v9, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1129
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradient:Landroid/graphics/RadialGradient;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v9}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1130
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1131
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v4, v4, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1132
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1133
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1135
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    const/16 v9, 0x1f

    invoke-virtual {v2, v5, v6, v9}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1136
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawOver(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 1137
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 1138
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1139
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v10

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float/2addr v6, v10

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1140
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutGradient:Landroid/graphics/RadialGradient;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1141
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1142
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapseOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1143
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1144
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1146
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawOver2FromParent()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1147
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawOver2(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 1151
    :cond_18
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1153
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->factoryForMentions:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    if-nez v1, :cond_19

    .line 1154
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 1155
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clipPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1156
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1157
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1158
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->strokeDrawable:Lorg/telegram/ui/Components/blur3/StrokeDrawable;

    iput v4, v1, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->radius:F

    .line 1159
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1162
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->strokeDrawable:Lorg/telegram/ui/Components/blur3/StrokeDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1163
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_19
    :goto_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 468
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches(FF)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 471
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez v0, :cond_6

    .line 472
    instance-of v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    move v0, v1

    .line 475
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 476
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 477
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-ne v4, v3, :cond_3

    goto :goto_1

    .line 480
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 481
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 482
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setForceCursorEnd(Z)V

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboard()V

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScrollY(I)V

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v2

    .line 492
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 493
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 495
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    :goto_2
    return v1
.end method

.method protected abstract drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V
.end method

.method protected drawBlurBitmap(Landroid/graphics/Bitmap;F)V
    .locals 0

    float-to-int p2, p2

    .line 846
    invoke-static {p1, p2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    if-ne p2, v0, :cond_1

    .line 1270
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/high16 v1, 0x42a40000    # 82.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    sub-float v1, v8, v1

    mul-float/2addr v0, v1

    move v10, v0

    .line 1271
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v5, 0xff

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1274
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 1275
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1276
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 1277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1279
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1280
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1281
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v8

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1282
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1283
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    move v3, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    move v0, v3

    move v3, v1

    move v1, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1285
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1287
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadeGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->fadePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1291
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return v6

    .line 1294
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clipChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1296
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 1297
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 1298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return v1

    .line 1301
    :cond_2
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public drawOver(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public drawOver2(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 0

    return-void
.end method

.method public drawOver2FromParent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected forceRound()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 1205
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getCaptionDefaultLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCaptionLimit()I
    .locals 1

    .line 825
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionPremiumLimit()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionDefaultLimit()I

    move-result v0

    return v0
.end method

.method protected getCaptionPremiumLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCodePointCount()I
    .locals 1

    .line 817
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->codePointCount:I

    return v0
.end method

.method public getEditTextHeight()I
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getEditTextHeightClosedKeyboard()I
    .locals 2

    const/high16 v0, 0x42a40000    # 82.0f

    .line 622
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected getEditTextLeft()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEditTextStyle()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getOver2Alpha()F
    .locals 1

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    return v0
.end method

.method public getSelectionLength()I
    .locals 3

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1369
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    .line 1371
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract ignoreTouches(FF)Z
.end method

.method public invalidateBlur()V
    .locals 1

    .line 439
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public invalidateDrawOver2()V
    .locals 0

    return-void
.end method

.method protected isAtTop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCaptionOverLimit()Z
    .locals 2

    .line 821
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCodePointCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionLimit()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 1384
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1385
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 1388
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    .line 1390
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1392
    sget v0, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1393
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1394
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1395
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    .line 1396
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1397
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    goto :goto_0

    .line 859
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->collapseEmojiView()V

    :goto_0
    return v2

    .line 863
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return v2

    .line 868
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-nez v0, :cond_4

    .line 869
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    return v2

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method protected onCaptionLimitUpdate(Z)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1403
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1404
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 1407
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurBitmapShader:Landroid/graphics/BitmapShader;

    .line 1408
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->blurPaint:Landroid/graphics/Paint;

    .line 1409
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1410
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1411
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hintTextBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method protected onEditHeightChange(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    return-void
.end method

.method protected onTextChange()V
    .locals 0

    return-void
.end method

.method protected abstract onUpdateShowKeyboard(F)V
.end method

.method public setAccount(I)V
    .locals 0

    .line 131
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    return-void
.end method

.method public setBlurredBackgroundDrawableForMentions(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->factoryForMentions:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    return-void
.end method

.method public setCollapsed(ZI)V
    .locals 0

    .line 1193
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsed:Z

    .line 1194
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->collapsedFromX:I

    .line 1195
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    .line 428
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->dialogId:J

    return-void
.end method

.method public setOnHeightUpdate(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onHeightUpdate:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setOnKeyboardOpen(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 627
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onKeyboardOpen:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 502
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setReply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 892
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hasReply:Z

    .line 893
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 895
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hasReply:Z

    .line 897
    new-instance v0, Lorg/telegram/ui/Components/Text;

    const-string v1, ""

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {v0, p1, v3, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyTitle:Lorg/telegram/ui/Components/Text;

    .line 898
    new-instance p1, Lorg/telegram/ui/Components/Text;

    if-nez p2, :cond_2

    move-object p2, v1

    :cond_2
    invoke-direct {p1, p2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->replyText:Lorg/telegram/ui/Components/Text;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1318
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTextChange:Z

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUiBlurBitmap(Lorg/telegram/messenger/Utilities$CallbackVoidReturn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$CallbackVoidReturn<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 452
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getUiBlurBitmap:Lorg/telegram/messenger/Utilities$CallbackVoidReturn;

    return-void
.end method

.method protected setupMentionContainer()V
    .locals 2

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowStickers(Z)V

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowBots(Z)V

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowChats(Z)V

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchInDailogs(Z)V

    return-void
.end method

.method public updateColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 1377
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonCheck:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButtonDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected updateEditTextLeft()V
    .locals 4

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/high16 v1, -0x3e300000    # -26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextLeft()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardT:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public updateKeyboard(I)V
    .locals 7

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 640
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->additionalKeyboardHeight()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 642
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isWaitingForKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->additionalKeyboardHeight()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getKeyboardHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 645
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBottomPadding()I

    move-result v0

    :goto_1
    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 646
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 647
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 649
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    if-nez v2, :cond_6

    .line 650
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_4

    .line 651
    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 652
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    const/4 v2, 0x0

    .line 653
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    .line 656
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    neg-int v5, p1

    int-to-float v5, v5

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v2, v6, v1

    aput v5, v6, v3

    sget-object v2, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    .line 657
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_5

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_2

    .line 661
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x280

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 664
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->parentKeyboardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 667
    :cond_6
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_7

    move v1, v3

    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 670
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 671
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 672
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    :cond_8
    return-void
.end method

.method public updateMentionsLayoutPosition()V
    .locals 2

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->heightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1329
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1331
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
