.class public Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutContainer"
.end annotation


# instance fields
.field private backgroundColor:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private drawNavigationBar:Z

.field private fragmentPanTranslationOffset:I

.field private isKeyboardVisible:Z

.field private isSupportEdgeToEdge:Z

.field private navbarGradientMatrix:Landroid/graphics/Matrix;

.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private wasPortrait:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetisKeyboardVisible(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSupportEdgeToEdge(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isSupportEdgeToEdge:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 136
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    .line 130
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    .line 163
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->navbarGradientMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 333
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetinPreviewMode(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetpreviewMenu(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 347
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgettransitionAnimationPreviewMode(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    .line 351
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eq p0, v0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2

    .line 353
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return v2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 168
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    if-nez v0, :cond_0

    .line 169
    invoke-static {p2}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->disableHapticFeedback(Landroid/view/View;)V

    .line 170
    invoke-static {p0}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->disableHapticFeedback(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->disableHapticFeedback(Landroid/view/View;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetfragmentsStack(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetfragmentsStack(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetfragmentsStack(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 178
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetsheetFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetsheetFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetsheetFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetsheetFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    .line 183
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getWindowView()Landroid/view/View;

    move-result-object v0

    if-eq v0, p2, :cond_4

    return v2

    .line 186
    :cond_4
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_5

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 191
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_8

    .line 193
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p2, :cond_6

    goto :goto_2

    .line 197
    :cond_6
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 198
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getCastShadows()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 200
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getShadowAlpha()I

    move-result v0

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    const/16 v0, 0xff

    .line 205
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v1, :cond_9

    .line 207
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    add-int/2addr v1, v2

    invoke-virtual {p3, p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;II)V

    :cond_9
    return p2
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 360
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->fragmentPanTranslationOffset:I

    if-eqz v0, :cond_1

    .line 361
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 362
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundColor:I

    if-eq v2, v1, :cond_0

    .line 363
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->fragmentPanTranslationOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 367
    :goto_0
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 288
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 291
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 292
    instance-of p5, p4, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p5, :cond_0

    .line 293
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 294
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4, p2, p2, p5, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_1
    move p4, p2

    :goto_2
    if-ge p4, p1, :cond_5

    .line 299
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 300
    instance-of v0, p5, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_4

    .line 301
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, -0xeeddcd

    .line 302
    invoke-virtual {p5, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p5}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, p5, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheetWindow;

    if-eqz v1, :cond_2

    goto :goto_3

    .line 310
    :cond_2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    .line 313
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p3

    .line 314
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 310
    invoke-virtual {p5, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 303
    :cond_3
    :goto_3
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 306
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 307
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 303
    invoke-virtual {p5, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    :cond_4
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 320
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 321
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    if-eqz p4, :cond_6

    sget p4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_5

    :cond_6
    move p4, p2

    :goto_5
    sub-int/2addr p3, p4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    .line 323
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, p1

    sub-int/2addr p3, p4

    if-lez p3, :cond_7

    const/4 p2, 0x1

    :cond_7
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetwaitingForKeyboardCloseRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-boolean p2, p2, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    if-nez p2, :cond_8

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-boolean p2, p2, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isKeyboardVisible:Z

    if-nez p2, :cond_8

    .line 325
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetwaitingForKeyboardCloseRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetwaitingForKeyboardCloseRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputwaitingForKeyboardCloseRunnable(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 243
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 244
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    const/4 v8, 0x0

    if-le v7, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v8

    .line 246
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->wasPortrait:Z

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isInPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->finishPreviewFragment()V

    .line 249
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->wasPortrait:Z

    .line 251
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 256
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->LIGHT_STATUS_BAR_OVERLAY:I

    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->rect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetbottomSheetTabs(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetbottomSheetTabs(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateCurrentAccount()V

    :cond_3
    move v1, v8

    :goto_1
    if-ge v1, v9, :cond_5

    .line 265
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 266
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    .line 267
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 268
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move v5, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v5, v8

    :goto_2
    move v10, v8

    :goto_3
    if-ge v10, v9, :cond_a

    .line 273
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 274
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v2, :cond_8

    const v2, -0xeeddcd

    .line 275
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v2

    if-nez v2, :cond_6

    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheetWindow;

    if-eqz v2, :cond_7

    :cond_6
    move v11, v5

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 279
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_8
    move v11, v5

    goto :goto_6

    .line 276
    :goto_4
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isSupportEdgeToEdge:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fgetnavigationBarInsetHeight(Lorg/telegram/ui/ActionBar/ActionBarLayout;)I

    move-result v2

    move v5, v2

    goto :goto_5

    :cond_9
    move v5, v8

    :goto_5
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 277
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_6
    add-int/lit8 v10, v10, 0x1

    move v5, v11

    goto :goto_3

    .line 283
    :cond_a
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isSupportEdgeToEdge:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz v0, :cond_1

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDrawNavigationBar(Z)V
    .locals 1

    .line 380
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->drawNavigationBar:Z

    if-eq v0, p1, :cond_0

    .line 381
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->drawNavigationBar:Z

    .line 382
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFragmentPanTranslationOffset(I)V
    .locals 0

    .line 387
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->fragmentPanTranslationOffset:I

    .line 388
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShouldHandleBottomInsets(Z)V
    .locals 1

    .line 374
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isSupportEdgeToEdge:Z

    if-eq v0, p1, :cond_0

    .line 375
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isSupportEdgeToEdge:Z

    .line 376
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->isSupportEdgeToEdge:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    if-eqz v0, :cond_1

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
