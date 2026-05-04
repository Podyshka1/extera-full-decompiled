.class public Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBarPopupWindowLayout"
.end annotation


# instance fields
.field private animationEnabled:Z

.field private backAlpha:I

.field private backScaleX:F

.field private backScaleY:F

.field private backgroundColor:I

.field protected backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final bgPaddings:Landroid/graphics/Rect;

.field private cascadeEnabled:Z

.field public clipChildren:Z

.field private fitItems:Z

.field private gapEndY:I

.field private gapStartY:I

.field private itemAnimators:Ljava/util/ArrayList;

.field private lastStartedChild:I

.field protected linearLayout:Landroid/widget/LinearLayout;

.field private mOnDispatchKeyEventListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;

.field onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private onSizeChangedListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;

.field path:Landroid/graphics/Path;

.field private positions:Ljava/util/HashMap;

.field private reactionsEnterProgress:F

.field rect:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollView:Landroid/widget/ScrollView;

.field public shownFromBottom:Z

.field private startAnimationPending:Z

.field public subtractBackgroundHeight:I

.field public swipeBackGravityBottom:Z

.field public swipeBackGravityRight:Z

.field private swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

.field private topView:Landroid/view/View;

.field public updateAnimation:Z

.field protected window:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;


# direct methods
.method static bridge synthetic -$$Nest$fgetbackScaleY(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcascadeEnabled(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->cascadeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfitItems(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->fitItems:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgapStartY(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemAnimators(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->itemAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpositions(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->positions:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputgapEndY(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapEndY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgapStartY(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastStartedChild(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartAnimationPending(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startAnimationPending:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 6

    .line 168
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 117
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    .line 118
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startAnimationPending:Z

    const/16 v2, 0xff

    .line 120
    iput v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    .line 121
    iput v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    const/4 v2, 0x1

    .line 123
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->animationEnabled:Z

    .line 124
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->cascadeEnabled:Z

    .line 126
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->positions:Ljava/util/HashMap;

    const v3, -0xf4240

    .line 127
    iput v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    .line 128
    iput v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapEndY:I

    .line 129
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    .line 131
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    .line 169
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 p2, 0x41000000    # 8.0f

    .line 173
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0, v0, v4, v5, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 175
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 176
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 177
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 181
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    and-int/lit8 p2, p4, 0x2

    if-lez p2, :cond_2

    .line 184
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    :cond_2
    and-int/lit8 p2, p4, 0x1

    const/high16 v0, -0x40000000    # -2.0f

    const/4 v3, -0x2

    if-lez p2, :cond_3

    .line 188
    new-instance p2, Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    .line 189
    invoke-static {v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    and-int/lit8 p2, p4, 0x4

    const/16 p3, 0x30

    const/16 p4, 0x50

    if-nez p2, :cond_6

    .line 194
    :try_start_0
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    .line 195
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 201
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p2, v4}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 203
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 204
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz p2, :cond_5

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v4, :cond_4

    move v4, p4

    goto :goto_0

    :cond_4
    move v4, p3

    :goto_0
    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 207
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 210
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 214
    :cond_6
    :goto_2
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 292
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_7

    .line 294
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 295
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz p1, :cond_9

    .line 296
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v0, :cond_8

    move p3, p4

    :cond_8
    invoke-static {v3, v3, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 298
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 160
    sget v0, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private startChildAnimation(Landroid/view/View;)V
    .locals 8

    .line 415
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->animationEnabled:Z

    if-eqz v0, :cond_3

    .line 416
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v1, v3, v6

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 419
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x40c00000    # 6.0f

    goto :goto_1

    :cond_1
    const/high16 v3, -0x3f400000    # -6.0f

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    new-array v7, v2, [F

    aput v3, v7, v4

    aput v5, v7, v6

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v4

    aput-object v3, v2, v6

    .line 417
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0xb4

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 421
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->-$$Nest$sfgetdecelerateInterpolator()Landroid/view/animation/DecelerateInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->itemAnimators:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    .line 434
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->itemAnimators:Ljava/util/ArrayList;

    .line 436
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->itemAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addViewToSwipeBack(Landroid/view/View;)I
    .locals 3

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    :goto_0
    const/4 v2, -0x2

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 491
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    sub-float v2, v9, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 493
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    sub-float v3, v9, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 495
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget v2, v2, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->transitionProgress:F

    sub-float v2, v9, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 496
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    neg-float v1, v1

    .line 497
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget v2, v2, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->transitionProgress:F

    mul-float/2addr v1, v2

    .line 498
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 499
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 502
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityBottom:Z

    if-eqz v1, :cond_1

    .line 503
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    sub-float v2, v9, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 505
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 506
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    const/4 v10, 0x0

    if-nez v2, :cond_2

    move v2, v10

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    :goto_0
    sub-int v11, v1, v2

    .line 507
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapEndY:I

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-nez v2, :cond_3

    move v2, v10

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    :goto_1
    sub-int v12, v1, v2

    move v1, v10

    .line 509
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v13, 0x1

    if-ge v1, v2, :cond_5

    .line 510
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    move v14, v13

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v14, v10

    :goto_3
    move v15, v10

    :goto_4
    const/4 v1, 0x2

    if-ge v15, v1, :cond_6

    if-ne v15, v13, :cond_7

    .line 516
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    if-ge v11, v1, :cond_7

    :cond_6
    move-object/from16 v1, p1

    move/from16 v18, v9

    goto/16 :goto_13

    .line 519
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    const/16 v2, 0xff

    const v3, -0xf4240

    if-eqz v14, :cond_8

    .line 521
    iget v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    if-eq v4, v2, :cond_8

    .line 522
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    move v7, v3

    move v3, v4

    move v4, v5

    move v5, v6

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    move/from16 v16, v7

    const/16 v7, 0x1f

    move/from16 v17, v2

    const/4 v2, 0x0

    move/from16 v18, v9

    move/from16 v9, v16

    move/from16 v16, v8

    move v8, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move v2, v10

    goto :goto_5

    :cond_8
    move/from16 v17, v2

    move/from16 v16, v8

    move/from16 v18, v9

    move v8, v1

    move v9, v3

    move-object/from16 v1, p1

    .line 524
    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v2, v9, :cond_9

    .line 525
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 526
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v10, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_9
    move v2, v13

    .line 528
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    goto :goto_6

    :cond_a
    move/from16 v2, v17

    :goto_6
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 529
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v2, :cond_b

    .line 530
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 531
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    int-to-float v4, v2

    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    sub-float v9, v18, v5

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v10, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_d

    .line 533
    :cond_b
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    if-le v11, v2, :cond_16

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-nez v15, :cond_13

    .line 536
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz v3, :cond_f

    iget-boolean v3, v3, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->stickToRight:Z

    if-eqz v3, :cond_f

    .line 537
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-nez v5, :cond_c

    move v5, v10

    goto :goto_7

    :cond_c
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    :goto_7
    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v6, v9, :cond_d

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_8

    :cond_d
    move v6, v10

    :goto_8
    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v7, v9, :cond_e

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v11

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_e
    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v2, v7

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_d

    .line 539
    :cond_f
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_10

    move v4, v10

    goto :goto_9

    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    :goto_9
    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v5, v9, :cond_11

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_a

    :cond_11
    move v5, v10

    :goto_a
    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v6, v9, :cond_12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v11

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_12
    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v2, v6

    invoke-virtual {v3, v10, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_d

    :cond_13
    if-ge v2, v12, :cond_14

    .line 543
    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v2, v9, :cond_25

    .line 544
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_12

    .line 548
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz v3, :cond_15

    iget-boolean v3, v3, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->stickToRight:Z

    if-eqz v3, :cond_15

    .line 549
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v2, v6

    invoke-virtual {v3, v4, v12, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_d

    .line 551
    :cond_15
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v2, v5

    invoke-virtual {v3, v10, v12, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_d

    .line 555
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz v2, :cond_18

    iget-boolean v2, v2, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->stickToRight:Z

    if-eqz v2, :cond_18

    .line 556
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-gez v4, :cond_17

    move v4, v10

    goto :goto_b

    :cond_17
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_d

    .line 558
    :cond_18
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-gez v3, :cond_19

    move v3, v10

    goto :goto_c

    :cond_19
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    :goto_c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 562
    :goto_d
    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_1b

    .line 563
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_1a

    .line 564
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->rect:Landroid/graphics/Rect;

    .line 566
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->rect:Landroid/graphics/Rect;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 567
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->rect:Landroid/graphics/Rect;

    iget v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    invoke-static {v2, v3, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 569
    :cond_1b
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 570
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 571
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->clipChildren:Z

    if-eqz v2, :cond_1c

    .line 572
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 573
    iget v2, v3, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 574
    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 575
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 576
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_1c
    if-eqz v14, :cond_24

    .line 579
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 580
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/high16 v3, 0x41000000    # 8.0f

    .line 581
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 582
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->path:Landroid/graphics/Path;

    if-nez v3, :cond_1d

    .line 583
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->path:Landroid/graphics/Path;

    goto :goto_e

    .line 585
    :cond_1d
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 587
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->path:Landroid/graphics/Path;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v5, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 588
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move v2, v10

    .line 589
    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 590
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v3, :cond_22

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_22

    .line 591
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 593
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :cond_1e
    if-eq v6, v0, :cond_1f

    .line 596
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v4, v7

    .line 597
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v7

    add-float/2addr v5, v7

    .line 598
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_1e

    .line 603
    :cond_1f
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-nez v6, :cond_20

    move/from16 v6, v18

    goto :goto_10

    :cond_20
    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    :goto_10
    mul-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-nez v6, :cond_21

    move v6, v10

    goto :goto_11

    :cond_21
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    :goto_11
    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 604
    invoke-virtual {v3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 605
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 608
    :cond_23
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 610
    :cond_24
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_25
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v16

    move/from16 v9, v18

    goto/16 :goto_4

    .line 613
    :goto_13
    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    cmpl-float v3, v2, v18

    if-eqz v3, :cond_26

    .line 614
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    const/16 v7, 0x1f

    move/from16 v19, v6

    move v6, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v19

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 615
    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    .line 616
    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 617
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 618
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 620
    :cond_26
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->mOnDispatchKeyEventListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;

    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;->onDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 484
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getBackAlpha()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 344
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    return v0
.end method

.method public getBackScaleX()F
    .locals 1

    .line 472
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    return v0
.end method

.method public getBackScaleY()F
    .locals 1

    .line 476
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 325
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    return v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public getViewsCount()I
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getVisibleHeight()I
    .locals 2

    .line 692
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 723
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v1, :cond_1

    .line 725
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 728
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 705
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 706
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz p1, :cond_0

    .line 707
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startAnimationPending:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->invalidateTransforms(Z)V

    :cond_0
    return-void
.end method

.method public precalculateHeight()I
    .locals 2

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 462
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 463
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public removeInnerViews()V
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 638
    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 441
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->animationEnabled:Z

    return-void
.end method

.method public setBackAlpha(I)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 336
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    if-eq v0, p1, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 339
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    return-void
.end method

.method public setBackScaleX(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 349
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 350
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onSizeChangedListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;

    if-eqz p1, :cond_0

    .line 353
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;->onSizeChanged()V

    :cond_0
    return-void
.end method

.method public setBackScaleY(F)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 360
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_8

    .line 361
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    .line 362
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->animationEnabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->updateAnimation:Z

    if-eqz v0, :cond_7

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 364
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v1, :cond_3

    .line 365
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    :goto_0
    if-ltz v1, :cond_7

    .line 366
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->positions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 371
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int/2addr v3, v4

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    sub-int v3, v0, v3

    int-to-float v3, v3

    int-to-float v4, v0

    mul-float/2addr v4, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v3, v1, -0x1

    .line 374
    iput v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    .line 375
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startChildAnimation(Landroid/view/View;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v2, v1, :cond_7

    .line 381
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 382
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 385
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 386
    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    if-ge v2, v5, :cond_5

    goto :goto_3

    .line 389
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->positions:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    const/high16 v5, 0x41c00000    # 24.0f

    .line 390
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v3, v5

    int-to-float v5, v5

    int-to-float v6, v0

    mul-float/2addr v6, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v2, 0x1

    .line 393
    iput v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    .line 394
    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startChildAnimation(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 398
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onSizeChangedListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;

    if-eqz p1, :cond_8

    .line 400
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;->onSizeChanged()V

    :cond_8
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .line 329
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 330
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    .line 407
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    .line 408
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public setCascadeEnabled(Z)V
    .locals 0

    .line 445
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->cascadeEnabled:Z

    return-void
.end method

.method public setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->mOnDispatchKeyEventListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;

    return-void
.end method

.method public setFitItems(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->fitItems:Z

    return-void
.end method

.method public setOnSizeChangedListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onSizeChangedListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;

    return-void
.end method

.method public setParentWindow(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->window:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void
.end method

.method public setReactionsTransitionProgress(F)V
    .locals 0

    .line 716
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShownFromBottom(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    return-void
.end method

.method public setSwipeBackForegroundColor(I)V
    .locals 1

    .line 700
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->setForegroundColor(I)V

    return-void
.end method

.method public setTopView(Landroid/view/View;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    return-void
.end method

.method public setupRadialSelectors(I)V
    .locals 7

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 645
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xa

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    .line 646
    :goto_2
    invoke-static {p1, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateRadialSelectors()V
    .locals 10

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    .line 655
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 656
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v5

    :cond_1
    move-object v3, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v2

    move v5, v4

    :goto_2
    if-ge v4, v0, :cond_9

    .line 667
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 668
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_6

    .line 671
    :cond_3
    sget v7, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 672
    instance-of v8, v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v9, 0x1

    if-eqz v8, :cond_7

    .line 673
    move-object v8, v6

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eq v6, v1, :cond_5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v9

    :goto_4
    if-ne v6, v3, :cond_6

    move v6, v9

    goto :goto_5

    :cond_6
    move v6, v2

    :goto_5
    invoke-virtual {v8, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    :cond_7
    if-eqz v7, :cond_8

    move v5, v9

    goto :goto_6

    :cond_8
    move v5, v2

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method
