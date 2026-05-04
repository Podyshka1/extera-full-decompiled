.class public Lorg/telegram/ui/Components/EditTextBoldCursor;
.super Lorg/telegram/ui/Components/EditTextEffects;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EditTextBoldCursor$ActionModeCallback2Wrapper;
    }
.end annotation


# static fields
.field private static editorClass:Ljava/lang/Class;

.field private static getVerticalOffsetMethod:Ljava/lang/reflect/Method;

.field private static mCursorDrawableResField:Ljava/lang/reflect/Field;

.field private static mEditor:Ljava/lang/reflect/Field;

.field private static mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

.field private static mScrollYField:Ljava/lang/reflect/Field;

.field private static mScrollYGet:Z

.field private static mShowCursorField:Ljava/lang/reflect/Field;


# instance fields
.field private activeLineColor:I

.field private activeLinePaint:Landroid/graphics/Paint;

.field private activeLineWidth:F

.field private allowDrawCursor:Z

.field private attachedToWindow:Landroid/view/View;

.field private currentDrawHintAsHeader:Z

.field cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private cursorDrawn:Z

.field private cursorSize:I

.field private cursorWidth:F

.field public drawHint:Lorg/telegram/messenger/Utilities$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field drawInMaim:Z

.field private editor:Ljava/lang/Object;

.field public ellipsizeByGradient:Z

.field private ellipsizeGradient:Landroid/graphics/LinearGradient;

.field private ellipsizeMatrix:Landroid/graphics/Matrix;

.field private ellipsizePaint:Landroid/graphics/Paint;

.field private ellipsizeWidth:I

.field private errorLayout:Landroid/text/StaticLayout;

.field private errorLineColor:I

.field private errorPaint:Landroid/text/TextPaint;

.field private errorText:Ljava/lang/CharSequence;

.field private fixed:Z

.field public floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

.field private floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

.field private floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private forceCursorEnd:Z

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private headerAnimationProgress:F

.field private headerHintColor:I

.field private headerTransformAnimation:Landroid/animation/AnimatorSet;

.field private hint:Ljava/lang/CharSequence;

.field private hintAlpha:F

.field private hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

.field private hintColor:I

.field private hintLastUpdateTime:J

.field private hintLayout:Landroid/text/StaticLayout;

.field public hintLayoutOffset:I

.field public hintLayoutX:F

.field public hintLayoutY:F

.field public hintLayoutYFix:Z

.field private hintVisible:Z

.field private ignoreBottomCount:I

.field public ignoreClipTop:Z

.field private ignoreTopCount:I

.field private invalidateRunnable:Ljava/lang/Runnable;

.field private isTextWatchersSuppressed:Z

.field private lastLineActiveness:F

.field lastOffset:I

.field private lastSize:I

.field lastText:Ljava/lang/CharSequence;

.field private lastTouchX:I

.field private lineActive:Z

.field private lineActiveness:F

.field private lineColor:I

.field private lineLastUpdateTime:J

.field private linePaint:Landroid/graphics/Paint;

.field private lineSpacingExtra:F

.field private lineVisible:Z

.field private lineY:F

.field public lineYFix:Z

.field private listenerFixer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mCursorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTempRect:Landroid/graphics/Rect;

.field private nextSetTextAnimated:Z

.field private onPremiumMenuLockClickListener:Ljava/lang/Runnable;

.field private padding:Landroid/graphics/Rect;

.field private rect:Landroid/graphics/Rect;

.field private registeredTextWatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field rightHintOffset:F

.field private scrollY:I

.field private supportRtlHint:Z

.field private transformHintToHeader:Z

.field private windowView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$W1hKvaPVziBouVWRc7Qy581gACw(Lorg/telegram/ui/Components/EditTextBoldCursor;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->lambda$startActionMode$1()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YAKuiqN2njHiQJRxdTG2KGdkfEM(Lorg/telegram/ui/Components/EditTextBoldCursor;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->shouldShowQuoteButton()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vEuIVHniu3NcJvH1g5TW3yraD1Y(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->lambda$drawHint$0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetattachedToWindow(Lorg/telegram/ui/Components/EditTextBoldCursor;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcursorSize(Lorg/telegram/ui/Components/EditTextBoldCursor;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcursorWidth(Lorg/telegram/ui/Components/EditTextBoldCursor;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcursorDrawn(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupFloatingActionModeViews(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 226
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance p1, Lorg/telegram/ui/Components/EditTextBoldCursor$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$1;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateRunnable:Ljava/lang/Runnable;

    .line 116
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 130
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->forceCursorEnd:Z

    const/high16 v0, 0x40000000    # 2.0f

    .line 134
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineVisible:Z

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    .line 148
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastLineActiveness:F

    .line 149
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    const/4 v0, -0x1

    .line 166
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastOffset:I

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    .line 173
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    .line 503
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->padding:Landroid/graphics/Rect;

    .line 737
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastTouchX:I

    .line 227
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const/4 p1, 0x2

    .line 228
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    .line 230
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->init()V

    return-void
.end method

.method private checkHeaderVisibility(Z)V
    .locals 5

    .line 682
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 683
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->currentDrawHintAsHeader:Z

    if-eq v3, v0, :cond_6

    .line 684
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    .line 685
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    .line 686
    iput-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    .line 688
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->currentDrawHintAsHeader:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 690
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    move v3, v4

    .line 691
    :cond_3
    new-array v0, v2, [F

    aput v3, v0, v1

    const-string v3, "headerAnimationProgress"

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 692
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 693
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 694
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    move v3, v4

    .line 696
    :cond_5
    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    .line 698
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method private clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 6

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p2, v0

    .line 1083
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1085
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    if-eqz p1, :cond_1

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1090
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    goto :goto_0

    .line 1092
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 p1, 0x0

    .line 1094
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    sub-float v1, p2, v1

    .line 1096
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v3, v4

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_2

    add-int/2addr v2, v0

    .line 1099
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    sub-int/2addr v2, p1

    return v2

    .line 1100
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v4

    if-lez p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x100000

    sub-int/2addr p1, v0

    int-to-float p1, p1

    add-float/2addr v3, v4

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_3

    cmpg-float p1, p2, v4

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    float-to-int p1, p2

    .line 1103
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    return p1

    .line 1101
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    return v0
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->dismiss()V

    .line 1122
    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    .line 1124
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1126
    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;)V
    .locals 11

    .line 767
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 770
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_2

    :cond_1
    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 771
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 772
    iget-wide v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLastUpdateTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    const-wide/16 v7, 0x11

    if-ltz v0, :cond_3

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    :cond_3
    move-wide v5, v7

    .line 776
    :cond_4
    iput-wide v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLastUpdateTime:J

    .line 777
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    const/high16 v3, 0x43160000    # 150.0f

    if-eqz v0, :cond_5

    .line 778
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    long-to-float v4, v5

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 780
    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    goto :goto_0

    .line 783
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    long-to-float v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 785
    iput v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 788
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 790
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b

    .line 791
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_a

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 793
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 797
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    goto :goto_1

    .line 800
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 801
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 804
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    goto :goto_1

    .line 808
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    .line 810
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 812
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-nez v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_14

    .line 813
    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 815
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 817
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    .line 818
    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    cmpl-float v6, v3, v2

    if-eqz v6, :cond_d

    int-to-float v7, v4

    sub-float/2addr v7, v3

    float-to-int v7, v7

    goto :goto_2

    :cond_d
    move v7, v4

    .line 822
    :goto_2
    iget-boolean v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->supportRtlHint:Z

    const/high16 v9, 0x40e00000    # 7.0f

    if-eqz v8, :cond_e

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_e

    .line 823
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    .line 824
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v10

    add-int/2addr v7, v10

    int-to-float v7, v7

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutX:F

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    iget-object v10, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutY:F

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 826
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutOffset:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutX:F

    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    iget-object v10, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutY:F

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 828
    :goto_3
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    if-eqz v7, :cond_11

    const v7, 0x3e99999a    # 0.3f

    .line 829
    iget v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    mul-float/2addr v8, v7

    sub-float v7, v1, v8

    .line 831
    iget-boolean v8, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->supportRtlHint:Z

    if-eqz v8, :cond_f

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_f

    add-float/2addr v5, v3

    mul-float v1, v5, v7

    sub-float/2addr v5, v1

    .line 832
    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    :cond_f
    if-eqz v6, :cond_10

    sub-float/2addr v1, v7

    mul-float/2addr v3, v1

    .line 834
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 836
    :cond_10
    :goto_4
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 837
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 838
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerHintColor:I

    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    invoke-static {v2, v3, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 840
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 841
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 843
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    if-eqz v1, :cond_12

    iget-boolean v1, v1, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChange:Z

    if-eqz v1, :cond_12

    .line 844
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 845
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 846
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->draw(Landroid/graphics/Canvas;Landroid/text/TextPaint;)V

    .line 847
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 849
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawHint:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v1, :cond_13

    .line 850
    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/Canvas;)V

    invoke-interface {v1, p1, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 852
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 855
    :goto_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v2, "fonts/rregular.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 856
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    :goto_7
    return-void
.end method

.method private init()V
    .locals 19

    move-object/from16 v1, p0

    .line 342
    const-class v2, Landroid/widget/TextView;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    .line 343
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLinePaint:Landroid/graphics/Paint;

    .line 344
    new-instance v0, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41300000    # 11.0f

    .line 345
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x2

    if-lt v0, v4, :cond_0

    .line 347
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    :cond_0
    const/16 v6, 0x1d

    const/4 v7, 0x0

    const v8, -0xab5e25

    const/high16 v9, 0x41200000    # 10.0f

    if-lt v0, v6, :cond_1

    .line 351
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$5;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor$5;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 372
    new-instance v10, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    move/from16 v17, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    move/from16 v18, v9

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/16 v6, 0x8

    new-array v6, v6, [F

    aput v11, v6, v16

    aput v12, v6, v3

    aput v13, v6, v17

    const/4 v11, 0x3

    aput v14, v6, v11

    const/4 v11, 0x4

    aput v15, v6, v11

    const/4 v11, 0x5

    aput v4, v6, v11

    const/4 v4, 0x6

    aput v5, v6, v4

    const/4 v4, 0x7

    aput v9, v6, v4

    invoke-direct {v10, v6, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 373
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v8, v8}, [I

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 374
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 375
    iget-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    move/from16 v18, v9

    const/16 v16, 0x0

    .line 380
    :goto_0
    :try_start_0
    sget-boolean v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYGet:Z

    if-nez v0, :cond_2

    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 381
    sput-boolean v3, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYGet:Z

    .line 382
    const-class v0, Landroid/view/View;

    const-string v4, "mScrollY"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    .line 383
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :catchall_0
    :cond_2
    :try_start_1
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;

    if-nez v0, :cond_3

    .line 390
    const-string v0, "mEditor"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    .line 391
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 392
    const-string v0, "android.widget.Editor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    :try_start_2
    const-string v4, "mShowCursor"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    .line 395
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 398
    :catch_0
    :goto_1
    :try_start_3
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;

    const-string v4, "invalidateTextDisplayList"

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

    .line 399
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 401
    :catch_1
    :try_start_4
    const-string v0, "getVerticalOffset"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v16

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    .line 402
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 405
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 407
    :cond_3
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_6

    .line 409
    :try_start_5
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v8, v8}, [I

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 410
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_4

    .line 412
    iget-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    :cond_4
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 419
    :catchall_2
    :try_start_6
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_5

    .line 420
    const-string v0, "mCursorDrawableRes"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    .line 421
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 423
    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mCursorDrawableResField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_6

    .line 424
    sget v2, Lorg/telegram/messenger/R$drawable;->field_carret_empty:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_6
    const/high16 v0, 0x41c00000    # 24.0f

    .line 430
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    return-void
.end method

.method private synthetic lambda$drawHint$0(Landroid/graphics/Canvas;)V
    .locals 1

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private synthetic lambda$startActionMode$1()Z
    .locals 1

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->updateViewLocationInWindow()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private shouldShowQuoteButton()Z
    .locals 5

    .line 1177
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 1180
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1184
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    const-class v4, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-eqz v0, :cond_3

    .line 1185
    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private updateCursorPosition(IIF)V
    .locals 4

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, v0, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result p3

    .line 1110
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1111
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    add-int/2addr v0, p3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    invoke-virtual {v1, p3, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateCursorPosition()Z
    .locals 6

    .line 1068
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1069
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->forceCursorEnd:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1070
    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1071
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 1072
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1073
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v3, v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->updateCursorPosition(IIF)V

    .line 1075
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastText:Ljava/lang/CharSequence;

    .line 1076
    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastOffset:I

    return v4
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1289
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTextWatchersTextChanged()V
    .locals 6

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 278
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5, v2, v3}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 279
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v4

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 280
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public fixHandleView(Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 436
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->fixed:Z

    return-void

    .line 437
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->fixed:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 439
    :try_start_0
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 440
    const-string v0, "android.widget.Editor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;

    .line 441
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mEditor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    .line 442
    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 443
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    .line 445
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->listenerFixer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_2

    .line 446
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editorClass:Ljava/lang/Class;

    const-string v1, "getPositionListener"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 447
    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 448
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->listenerFixer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 450
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->listenerFixer:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :catchall_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->fixed:Z

    :cond_3
    return-void
.end method

.method protected getActionModeStyle()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAutofillType()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorLayout(I)Landroid/text/StaticLayout;
    .locals 8

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 575
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .locals 2

    .line 730
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 731
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    .line 732
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    neg-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 734
    :cond_1
    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getExtendedPaddingTop()I
    .locals 1

    .line 721
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 722
    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    const/4 v0, 0x0

    return v0

    .line 725
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v0

    return v0
.end method

.method public getHeaderAnimationProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 710
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    return v0
.end method

.method public getHintLayoutEx()Landroid/text/Layout;
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .line 1116
    invoke-super {p0}, Landroid/widget/EditText;->getLineSpacingExtra()F

    move-result v0

    return v0
.end method

.method public getLineY()F
    .locals 1

    .line 580
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    return v0
.end method

.method public getOnPremiumMenuLockClickListener()Ljava/lang/Runnable;
    .locals 1

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->onPremiumMenuLockClickListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextCursorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 12

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 321
    invoke-super {p0}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 323
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$4;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v3, 0x1

    aput v4, v10, v3

    const/4 v3, 0x2

    aput v5, v10, v3

    const/4 v3, 0x3

    aput v6, v10, v3

    const/4 v3, 0x4

    aput v7, v10, v3

    const/4 v3, 0x5

    aput v8, v10, v3

    const/4 v3, 0x6

    aput v9, v10, v3

    const/4 v3, 0x7

    aput v2, v10, v3

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor$4;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/drawable/shapes/Shape;)V

    .line 330
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public hasErrorText()Z
    .locals 1

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideActionMode()V
    .locals 0

    .line 1206
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method public invalidateForce()V
    .locals 3

    .line 747
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 748
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 755
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditor:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    .line 757
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 758
    sget-object v1, Lorg/telegram/ui/Components/EditTextBoldCursor;->mEditorInvalidateDisplayList:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public isTextWatchersSuppressed()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1133
    :try_start_0
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEffects;->onAttachedToWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1135
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1137
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1143
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEffects;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1144
    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 863
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawHint(Landroid/graphics/Canvas;)V

    .line 865
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeByGradient:Z

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeWidth:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, p1

    .line 869
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result p1

    const v1, 0x7fffffff

    .line 870
    iput v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    const/4 v2, 0x0

    .line 872
    :try_start_0
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 873
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    .line 874
    sget-object v0, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 876
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 879
    :goto_1
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v3, :cond_20

    :goto_2
    const/4 v3, 0x1

    .line 883
    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreTopCount:I

    .line 884
    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ignoreBottomCount:I

    .line 885
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    int-to-float p1, p1

    const/4 v4, 0x0

    .line 886
    invoke-virtual {v8, v4, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 888
    :try_start_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawInMaim:Z

    .line 889
    invoke-super {p0, v8}, Lorg/telegram/ui/Components/EditTextEffects;->onDraw(Landroid/graphics/Canvas;)V

    .line 890
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->drawInMaim:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 892
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v0, :cond_1f

    .line 896
    :goto_3
    sget-object p1, Lorg/telegram/ui/Components/EditTextBoldCursor;->mScrollYField:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->scrollY:I

    if-eq v0, v1, :cond_3

    .line 898
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 900
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v0, :cond_2

    goto :goto_4

    .line 901
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 905
    :cond_3
    :goto_4
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 906
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    const/16 v0, 0x30

    if-nez p1, :cond_a

    .line 909
    :try_start_3
    sget-object p1, Lorg/telegram/ui/Components/EditTextBoldCursor;->mShowCursorField:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->editor:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 910
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    .line 911
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-wide/16 v5, 0x3e8

    rem-long/2addr v9, v5

    const-wide/16 v5, 0x1f4

    cmp-long p1, v9, v5

    if-gez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    :cond_4
    move p1, v2

    goto :goto_5

    .line 913
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    .line 914
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    .line 916
    :goto_5
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    if-eqz v1, :cond_f

    if-eqz p1, :cond_f

    .line 917
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 919
    sget-object p1, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_6

    .line 920
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    if-eq p1, v0, :cond_7

    .line 921
    sget-object p1, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_6

    .line 924
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    if-eq p1, v0, :cond_7

    .line 925
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_6

    :cond_7
    move p1, v2

    .line 928
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v8, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 929
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 930
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 931
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    .line 932
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->updateCursorPosition()Z

    .line 933
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 934
    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 935
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 936
    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 937
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 938
    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    cmpl-float v7, v1, v4

    if-eqz v7, :cond_8

    sub-int/2addr p1, v3

    if-ge v0, p1, :cond_8

    int-to-float p1, v6

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 939
    iput p1, v5, Landroid/graphics/Rect;->bottom:I

    .line 941
    :cond_8
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p1, v1

    iput p1, v5, Landroid/graphics/Rect;->top:I

    .line 942
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 944
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 945
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_a

    .line 948
    :goto_7
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v0, :cond_9

    goto/16 :goto_a

    .line 949
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 953
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z

    if-eqz p1, :cond_f

    .line 955
    :try_start_4
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 957
    sget-object p1, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_b

    .line 958
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    if-eq p1, v0, :cond_c

    .line 959
    sget-object p1, Lorg/telegram/ui/Components/EditTextBoldCursor;->getVerticalOffsetMethod:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9

    .line 962
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    if-eq p1, v0, :cond_c

    .line 963
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_8

    :cond_c
    move p1, v2

    .line 966
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v8, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 967
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 968
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 969
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    .line 970
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->updateCursorPosition()Z

    .line 971
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 972
    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 973
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 974
    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 975
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 976
    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    cmpl-float v7, v1, v4

    if-eqz v7, :cond_d

    sub-int/2addr p1, v3

    if-ge v0, p1, :cond_d

    int-to-float p1, v6

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 977
    iput p1, v5, Landroid/graphics/Rect;->bottom:I

    .line 979
    :cond_d
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p1, v1

    iput p1, v5, Landroid/graphics/Rect;->top:I

    .line 980
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 982
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 983
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 984
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawn:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    .line 986
    :goto_9
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v0, :cond_e

    goto :goto_a

    .line 987
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 992
    :cond_f
    :goto_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineVisible:Z

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1d

    iget p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineColor:I

    if-eqz p1, :cond_1d

    .line 993
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 994
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    .line 995
    iget-object v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 996
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorLineColor:I

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 997
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 998
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    goto :goto_b

    .line 999
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1000
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    goto :goto_b

    .line 1002
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    iget v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1003
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    .line 1005
    :goto_b
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eq v3, v5, :cond_12

    .line 1006
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineLastUpdateTime:J

    .line 1007
    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastLineActiveness:F

    .line 1009
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v9, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineLastUpdateTime:J

    sub-long/2addr v5, v9

    long-to-float v3, v5

    const/high16 v5, 0x43160000    # 150.0f

    div-float/2addr v3, v5

    cmpg-float v5, v3, v1

    if-ltz v5, :cond_14

    .line 1010
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eqz v6, :cond_13

    iget v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpl-float v7, v7, v1

    if-nez v7, :cond_14

    :cond_13
    if-nez v6, :cond_16

    iget v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_16

    .line 1011
    :cond_14
    iget v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastLineActiveness:F

    iget-boolean v7, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eqz v7, :cond_15

    move v7, v1

    goto :goto_c

    :cond_15
    move v7, v4

    :goto_c
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    if-gez v5, :cond_16

    .line 1013
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1017
    :cond_16
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_17

    move v3, v2

    goto :goto_d

    :cond_17
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v3, v5

    .line 1018
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineYFix:Z

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_e

    :cond_18
    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v5

    .line 1019
    :goto_e
    iget v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastTouchX:I

    if-gez v3, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 1020
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    .line 1021
    iget v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpg-float v6, v6, v1

    if-gez v6, :cond_1a

    .line 1022
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v9, v6

    sub-int p1, v2, p1

    int-to-float v10, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr p1, v6

    int-to-float v11, p1

    int-to-float v12, v2

    iget-object v13, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1024
    :cond_1a
    iget p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActiveness:F

    cmpl-float v6, p1, v4

    if-lez v6, :cond_1d

    .line 1025
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1026
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineActive:Z

    if-eqz v6, :cond_1b

    int-to-float v5, v5

    mul-float/2addr v5, p1

    .line 1027
    iput v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    :cond_1b
    if-eqz v6, :cond_1c

    move p1, v1

    .line 1029
    :cond_1c
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr p1, v5

    float-to-int p1, p1

    .line 1031
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    iget v6, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    div-float/2addr v6, v0

    sub-float v6, v3, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v9, v5, v6

    sub-int p1, v2, p1

    int-to-float v10, p1

    .line 1033
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    iget v5, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineWidth:F

    div-float/2addr v5, v0

    add-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float v11, p1, v3

    int-to-float v12, v2

    iget-object v13, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLinePaint:Landroid/graphics/Paint;

    .line 1030
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1039
    :cond_1d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeByGradient:Z

    if-eqz p1, :cond_1e

    .line 1040
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 1041
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v8, p1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1042
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1043
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 1044
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1045
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeWidth:I

    sub-int/2addr p1, v2

    int-to-float v9, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float v11, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v12, p1

    iget-object v13, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1047
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 1048
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1049
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1050
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1051
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float v9, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeWidth:I

    add-int/2addr p1, v0

    int-to-float v11, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v12, p1

    iget-object v13, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1052
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 1053
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    :cond_1e
    return-void

    .line 893
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 880
    :cond_20
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 674
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 676
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    .line 678
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->checkHeaderVisibility(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1229
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1230
    const-string v0, "android.widget.EditText"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    .line 1232
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1235
    :cond_0
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 604
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 605
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    .line 606
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p2, :cond_0

    .line 607
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 609
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p2, :cond_1

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 612
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-nez v1, :cond_4

    .line 613
    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastSize:I

    if-eq v1, p1, :cond_2

    .line 614
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hint:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0, v1, v2, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V

    .line 616
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayoutYFix:Z

    if-eqz p2, :cond_3

    .line 617
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr p2, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    goto :goto_0

    .line 619
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    goto :goto_0

    .line 622
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineY:F

    .line 624
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastSize:I

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 589
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 591
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lastTouchX:I

    .line 743
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setAllowDrawCursor(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->allowDrawCursor:Z

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCursorColor(I)V
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorDrawable:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 490
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCursorSize(I)V
    .locals 0

    .line 494
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorSize:I

    return-void
.end method

.method public setCursorWidth(F)V
    .locals 0

    .line 480
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->cursorWidth:F

    return-void
.end method

.method public setEllipsizeByGradient(Z)V
    .locals 9

    .line 1278
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeByGradient:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    .line 1279
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeWidth:I

    .line 1280
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizePaint:Landroid/graphics/Paint;

    .line 1281
    new-instance v1, Landroid/graphics/LinearGradient;

    iget p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeWidth:I

    int-to-float v4, p1

    const/4 p1, -0x1

    const v0, 0xffffff

    filled-new-array {p1, v0}, [I

    move-result-object v6

    const/4 p1, 0x2

    new-array v7, p1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    .line 1282
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1283
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->ellipsizeMatrix:Landroid/graphics/Matrix;

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setErrorLineColor(I)V
    .locals 1

    .line 498
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorLineColor:I

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setErrorText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 563
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorText:Ljava/lang/CharSequence;

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setForceCursorEnd(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->forceCursorEnd:Z

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHandlesColor(I)V
    .locals 2

    .line 1245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1249
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1250
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1251
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1253
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1254
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1255
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1258
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1259
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public setHeaderAnimationProgress(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 704
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerAnimationProgress:F

    .line 705
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHeaderHintColor(I)V
    .locals 0

    .line 540
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerHintColor:I

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHintColor(I)V
    .locals 1

    .line 529
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 533
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_1

    .line 534
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 536
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHintRightOffset(I)V
    .locals 1

    .line 182
    iget v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->rightHintOffset:F

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    .line 628
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 632
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;ZLandroid/text/TextPaint;)V
    .locals 8

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 637
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 640
    const-string p1, ""

    .line 642
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-eqz p2, :cond_4

    .line 646
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    if-nez p2, :cond_3

    .line 647
    new-instance p2, Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    .line 649
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hint:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0, v1, p1, p3}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->create(Landroid/text/StaticLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    goto :goto_0

    .line 651
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimator:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    if-eqz p2, :cond_5

    .line 652
    invoke-virtual {p2}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->cancel()V

    .line 655
    :cond_5
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hint:Ljava/lang/CharSequence;

    .line 656
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_6

    .line 657
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p3, p2, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 658
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    move-object v1, p1

    .line 662
    new-instance v0, Landroid/text/StaticLayout;

    const/high16 p1, 0x447a0000    # 1000.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLayout:Landroid/text/StaticLayout;

    .line 663
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHintText2(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_1

    .line 177
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method public setHintVisible(ZZ)V
    .locals 2

    .line 517
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintLastUpdateTime:J

    .line 521
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintVisible:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 523
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAlpha:F

    .line 525
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLineColors(III)V
    .locals 4

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineVisible:Z

    .line 506
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->search_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->padding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 508
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineColor:I

    .line 509
    iput p2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLineColor:I

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->activeLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    iput p3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorLineColor:I

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->errorPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 715
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    .line 716
    iput p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineSpacingExtra:F

    return-void
.end method

.method public setNextSetTextAnimated(Z)V
    .locals 0

    .line 556
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->nextSetTextAnimated:Z

    return-void
.end method

.method public setOnPremiumMenuLockClickListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1265
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->onPremiumMenuLockClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 1221
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1223
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setSelection(II)V
    .locals 0

    .line 1212
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1214
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setSupportRtlHint(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->supportRtlHint:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 597
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 598
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->nextSetTextAnimated:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->checkHeaderVisibility(Z)V

    const/4 p1, 0x0

    .line 599
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->nextSetTextAnimated:Z

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 547
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_1

    .line 550
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 552
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    return-void
.end method

.method public setTextWatchersSuppressed(ZZ)V
    .locals 5

    .line 291
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-ne v0, p1, :cond_0

    goto :goto_2

    .line 292
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->isTextWatchersSuppressed:Z

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/TextWatcher;

    .line 296
    invoke-super {p0, p2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->registeredTextWatchers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    .line 300
    invoke-super {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p2, :cond_2

    .line 302
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 303
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 304
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public setTransformHintToHeader(Z)V
    .locals 1

    .line 459
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->transformHintToHeader:Z

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 464
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 465
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->headerTransformAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    :goto_0
    return-void
.end method

.method public setWindowView(Landroid/view/View;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 5

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 1151
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    if-eqz v0, :cond_2

    .line 1152
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->finish()V

    .line 1154
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->cleanupFloatingActionModeViews()V

    .line 1155
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getActionModeStyle()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    .line 1156
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->onPremiumMenuLockClickListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->setOnPremiumLockClick(Ljava/lang/Runnable;)V

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    new-instance v1, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->setQuoteShowVisible(Lorg/telegram/messenger/Utilities$Callback0Return;)V

    .line 1158
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor$ActionModeCallback2Wrapper;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor$ActionModeCallback2Wrapper;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/ActionMode$Callback;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbar:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/telegram/ui/ActionBar/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    .line 1159
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 1166
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 1167
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/FloatingActionMode;->invalidate()V

    .line 1168
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1169
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1170
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->floatingActionMode:Lorg/telegram/ui/ActionBar/FloatingActionMode;

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->windowView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->attachedToWindow:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1193
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 1191
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public useAnimatedTextDrawable()V
    .locals 2

    .line 234
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 244
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor$3;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x5

    .line 250
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor;->hintAnimatedDrawable2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    return-void
.end method
