.class public abstract Lorg/telegram/ui/Cells/TextSelectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$PathCopyTo;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;,
        Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;
    }
.end annotation


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field protected actionsIsShowing:Z

.field allowDiscard:Z

.field public allowScrollPrentRelative:Z

.field private callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

.field protected capturedX:I

.field protected capturedY:I

.field protected cornerRadius:F

.field private endArea:Landroid/graphics/RectF;

.field protected enterProgress:F

.field private handleViewAnimator:Landroid/animation/ValueAnimator;

.field protected handleViewProgress:F

.field private final hideActionsRunnable:Ljava/lang/Runnable;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private invalidateParent:Z

.field private isOneTouch:Z

.field keyboardSize:I

.field private lastX:I

.field private lastY:I

.field protected final layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

.field private longpressDelay:I

.field private magnifier:Landroid/widget/Magnifier;

.field private magnifierDx:F

.field private magnifierDy:F

.field private magnifierX:F

.field private magnifierXanimated:F

.field private magnifierY:F

.field private magnifierYanimated:F

.field protected maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

.field protected maybeTextX:I

.field protected maybeTextY:I

.field protected movingDirectionSettling:Z

.field protected movingHandle:Z

.field protected movingHandleStart:Z

.field movingOffsetX:F

.field movingOffsetY:F

.field protected multiselect:Z

.field private onTranslateListener:Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

.field private parentIsScrolling:Z

.field protected parentNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field protected parentRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field protected parentView:Landroid/view/ViewGroup;

.field protected path:Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollDown:Z

.field private scrollRunnable:Ljava/lang/Runnable;

.field private scrolling:Z

.field protected selectedCellEditDate:Ljava/lang/Integer;

.field protected selectedCellId:I

.field protected selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

.field public selectionEnd:I

.field protected selectionHandlePaint:Landroid/graphics/Paint;

.field protected selectionHandlePath:Landroid/graphics/Path;

.field protected selectionPaint:Landroid/graphics/Paint;

.field protected selectionPath:Lorg/telegram/ui/Components/CornerPath;

.field protected selectionPathMirror:Lorg/telegram/ui/Cells/TextSelectionHelper$PathCopyTo;

.field public selectionStart:I

.field protected showActionsAsPopupAlways:Z

.field private final showActionsRunnable:Ljava/lang/Runnable;

.field private snap:Z

.field private startArea:Landroid/graphics/RectF;

.field final startSelectionRunnable:Ljava/lang/Runnable;

.field private final tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

.field protected final textArea:Landroid/graphics/Rect;

.field private final textSelectActionCallback:Landroid/view/ActionMode$Callback;

.field protected textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

.field protected textX:I

.field protected textY:I

.field protected tmpCoord:[I

.field private topOffset:I

.field private touchSlop:I

.field private tryCapture:Z

.field public useMovingOffset:Z


# direct methods
.method public static synthetic $r8$lambda$Qbuw2rkVXkVNwK374vSaxAKumEM(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vrAF32jPNZK05dEyUvma2ddo89k(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->lambda$showHandleViews$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionMode(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/ActionMode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetendArea(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->endArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethideActionsRunnable(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActionsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinterpolator(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinvalidateParent(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidateParent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisOneTouch(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->isOneTouch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastX(Lorg/telegram/ui/Cells/TextSelectionHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->lastX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastY(Lorg/telegram/ui/Cells/TextSelectionHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->lastY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmagnifierX(Lorg/telegram/ui/Cells/TextSelectionHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmagnifierXanimated(Lorg/telegram/ui/Cells/TextSelectionHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmagnifierY(Lorg/telegram/ui/Cells/TextSelectionHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmagnifierYanimated(Lorg/telegram/ui/Cells/TextSelectionHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonTranslateListener(Lorg/telegram/ui/Cells/TextSelectionHelper;)Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->onTranslateListener:Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentIsScrolling(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentIsScrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollDown(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrollDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollRunnable(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrolling(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowActionsRunnable(Lorg/telegram/ui/Cells/TextSelectionHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsnap(Lorg/telegram/ui/Cells/TextSelectionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->snap:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartArea(Lorg/telegram/ui/Cells/TextSelectionHelper;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopOffset(Lorg/telegram/ui/Cells/TextSelectionHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->topOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettouchSlop(Lorg/telegram/ui/Cells/TextSelectionHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->touchSlop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisOneTouch(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->isOneTouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastX(Lorg/telegram/ui/Cells/TextSelectionHelper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->lastX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastY(Lorg/telegram/ui/Cells/TextSelectionHelper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->lastY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollDown(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrollDown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrolling(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsnap(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->snap:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtryCapture(Lorg/telegram/ui/Cells/TextSelectionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcopyText(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->copyText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCoordsInParent(Lorg/telegram/ui/Cells/TextSelectionHelper;)[I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getCoordsInParent()[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideActions(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideMagnifier(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideMagnifier()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mquoteText(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->quoteText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowActions(Lorg/telegram/ui/Cells/TextSelectionHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMagnifier(Lorg/telegram/ui/Cells/TextSelectionHelper;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->showMagnifier(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 82
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    .line 89
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->path:Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    .line 94
    new-instance v0, Lorg/telegram/ui/Components/CornerPath;

    invoke-direct {v0}, Lorg/telegram/ui/Components/CornerPath;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    .line 95
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    .line 96
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$PathCopyTo;

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$PathCopyTo;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPathMirror:Lorg/telegram/ui/Cells/TextSelectionHelper$PathCopyTo;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 101
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->createActionCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectActionCallback:Landroid/view/ActionMode$Callback;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startArea:Landroid/graphics/RectF;

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->endArea:Landroid/graphics/RectF;

    .line 146
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    .line 150
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->interpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsAsPopupAlways:Z

    .line 156
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$1;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->scrollRunnable:Ljava/lang/Runnable;

    .line 191
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$2;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    .line 307
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->useMovingOffset:Z

    .line 326
    iput-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->onTranslateListener:Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    .line 519
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsRunnable:Ljava/lang/Runnable;

    .line 617
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$3;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActionsRunnable:Ljava/lang/Runnable;

    .line 1738
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    .line 312
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->longpressDelay:I

    .line 313
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->touchSlop:I

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CornerPath;->setRectsUnionDiffDelta(F)V

    return-void
.end method

.method private copyText()V
    .locals 1

    .line 1566
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1569
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1573
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1574
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActions()V

    const/4 v0, 0x1

    .line 1575
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    if-eqz v0, :cond_2

    .line 1577
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;->onTextCopied()V

    :cond_2
    :goto_0
    return-void
.end method

.method private createActionCallback()Landroid/view/ActionMode$Callback;
    .locals 2

    .line 1407
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$4;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    .line 1510
    new-instance v1, Lorg/telegram/ui/Cells/TextSelectionHelper$5;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$5;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/view/ActionMode$Callback;)V

    return-object v1
.end method

.method private drawLine(Landroid/text/Layout;IIIZZF)V
    .locals 13

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p7

    .line 1740
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->reset()V

    .line 1741
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-virtual {p1, v0, v1, v3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 1744
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    iget v3, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->lastBottom:F

    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    const/4 v4, 0x0

    if-gez v3, :cond_0

    .line 1745
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 1746
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    .line 1748
    iget-object v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    iget v6, v6, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->lastBottom:F

    int-to-float v3, v3

    sub-float/2addr v6, v3

    div-float/2addr v5, v6

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    move v3, v4

    :goto_0
    const/4 v6, 0x0

    .line 1753
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-static {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->-$$Nest$fgetrectsCount(Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v6, v7, :cond_3

    .line 1754
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-static {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->-$$Nest$fgetrects(Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    .line 1755
    iget v9, v7, Landroid/graphics/RectF;->left:F

    .line 1756
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    if-eqz p5, :cond_1

    iget v10, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    div-float/2addr v10, v8

    goto :goto_2

    :cond_1
    move v10, v4

    :goto_2
    sub-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v3

    mul-float/2addr v10, v5

    add-float/2addr v10, v3

    float-to-int v10, v10

    int-to-float v10, v10

    iget v11, v7, Landroid/graphics/RectF;->right:F

    .line 1758
    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    if-eqz p6, :cond_2

    iget v12, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    div-float/2addr v12, v8

    goto :goto_3

    :cond_2
    move v12, v4

    :goto_3
    add-float/2addr v11, v12

    float-to-int v8, v11

    int-to-float v8, v8

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v3

    mul-float/2addr v11, v5

    add-float/2addr v11, v3

    float-to-int v11, v11

    int-to-float v11, v11

    .line 1755
    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1761
    iget-object v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v7, v9}, Lorg/telegram/ui/Components/CornerPath;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1764
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tempPath2:Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;

    invoke-static {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->-$$Nest$fgetrectsCount(Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;)I

    move-result v2

    if-nez v2, :cond_4

    if-nez p6, :cond_4

    .line 1766
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    .line 1767
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    float-to-int v1, v1

    .line 1768
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    .line 1769
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    int-to-float v0, v0

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    div-float v5, v4, v8

    sub-float/2addr v0, v5

    int-to-float v2, v2

    int-to-float v1, v1

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    int-to-float p1, p1

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 p6, p1

    move/from16 p3, v0

    move/from16 p5, v1

    move/from16 p4, v2

    move-object p2, v3

    move-object/from16 p7, v4

    invoke-virtual/range {p2 .. p7}, Lorg/telegram/ui/Components/CornerPath;->addRect(FFFFLandroid/graphics/Path$Direction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1771
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private getCoordsInParent()[I
    .locals 5

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move v2, v1

    move v3, v2

    .line 1326
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    if-eq v0, v4, :cond_3

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    int-to-float v2, v2

    .line 1332
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    .line 1333
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 1334
    instance-of v4, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_2

    .line 1335
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1336
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1338
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1339
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move v1, v3

    .line 1347
    :goto_1
    filled-new-array {v1, v2}, [I

    move-result-object v0

    return-object v0
.end method

.method private hideActions()V
    .locals 2

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    if-eqz v0, :cond_0

    .line 632
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActionsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 635
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    .line 637
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    .line 641
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_2

    .line 642
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method private hideMagnifier()V
    .locals 2

    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    :cond_0
    return-void
.end method

.method public static isInterruptedCharacter(C)Z
    .locals 1

    .line 730
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    .line 521
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActions()V

    return-void
.end method

.method private synthetic lambda$showHandleViews$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 503
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    return-void
.end method

.method private quoteText()V
    .locals 4

    .line 1582
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1587
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_1

    .line 1588
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 1593
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    return-void

    .line 1597
    :cond_3
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-virtual {p0, v0, v2, v3, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onQuoteClick(Lorg/telegram/messenger/MessageObject;IILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1598
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    return-void
.end method

.method private showActions()V
    .locals 6

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-nez v0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->canShowActions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    .line 532
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/telegram/ui/ActionBar/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 533
    new-instance v2, Lorg/telegram/ui/ActionBar/FloatingActionMode;

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectActionCallback:Landroid/view/ActionMode$Callback;

    check-cast v4, Landroid/view/ActionMode$Callback2;

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/telegram/ui/ActionBar/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectActionCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 536
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectActionCallback:Landroid/view/ActionMode$Callback;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionMode:Landroid/view/ActionMode;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/ActionMode;->hide(J)V

    .line 539
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActionsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 540
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->actionsIsShowing:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private showMagnifier(I)V
    .locals 9

    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->isOneTouch:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 420
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 422
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 428
    :cond_2
    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 430
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v1, v4

    .line 431
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getCoordsInParent()[I

    move-result-object v4

    .line 432
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textY:I

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    .line 433
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v7, v7, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 437
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    instance-of v8, v7, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    if-eqz v8, :cond_3

    .line 438
    aget v0, v4, v3

    .line 439
    invoke-interface {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_1

    .line 441
    :cond_3
    aget v7, v4, v3

    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 442
    aget v3, v4, v3

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    add-float/2addr v3, v0

    float-to-int v2, v3

    move v0, v7

    :goto_1
    if-ge p1, v0, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    if-le p1, v2, :cond_5

    move p1, v2

    .line 450
    :cond_5
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    int-to-float v2, v5

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 451
    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    .line 452
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDy:F

    .line 454
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_7

    .line 455
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    .line 456
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDx:F

    .line 459
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    if-nez p1, :cond_8

    .line 460
    invoke-static {}, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticApiModelOutline1;->m()V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/widget/Magnifier;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    .line 461
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    .line 462
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    .line 465
    :cond_8
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierY:F

    cmpl-float v2, p1, v0

    const/high16 v3, 0x41800000    # 16.0f

    if-eqz v2, :cond_9

    .line 466
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDy:F

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    .line 469
    :cond_9
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDy:F

    const/4 v2, 0x0

    cmpl-float v4, p1, v2

    if-lez v4, :cond_a

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_a

    .line 470
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    goto :goto_3

    :cond_a
    cmpg-float p1, p1, v2

    if-gez p1, :cond_b

    .line 471
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b

    .line 472
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    .line 475
    :cond_b
    :goto_3
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierX:F

    cmpl-float v4, p1, v0

    if-eqz v4, :cond_c

    .line 476
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDx:F

    mul-float/2addr v4, v3

    add-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    .line 479
    :cond_c
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierDx:F

    cmpl-float v3, p1, v2

    if-lez v3, :cond_d

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_d

    .line 480
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    goto :goto_4

    :cond_d
    cmpg-float p1, p1, v2

    if-gez p1, :cond_e

    .line 481
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_e

    .line 482
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    .line 485
    :cond_e
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierXanimated:F

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifierYanimated:F

    int-to-float v1, v1

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 486
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 485
    invoke-virtual {p1, v0, v2}, Landroid/widget/Magnifier;->show(FF)V

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->magnifier:Landroid/widget/Magnifier;

    invoke-virtual {p1}, Landroid/widget/Magnifier;->update()V

    :cond_f
    :goto_5
    return-void
.end method


# virtual methods
.method protected canCopy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canSelect(I)Z
    .locals 1

    .line 1373
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected canShowActions()Z
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected canShowQuote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancelTextSelectionRunnable()V
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 668
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return-void
.end method

.method public checkSelectionCancel(Landroid/view/MotionEvent;)V
    .locals 2

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 662
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->cancelTextSelectionRunnable()V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    return-void
.end method

.method public clear(Z)V
    .locals 3

    .line 676
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onExitSelectionMode(Z)V

    const/4 p1, -0x1

    .line 677
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 678
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 679
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideMagnifier()V

    .line 680
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActions()V

    .line 681
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    const/4 v0, 0x0

    .line 682
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v1, 0x0

    .line 683
    iput v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    .line 684
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellEditDate:Ljava/lang/Integer;

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 686
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 688
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 690
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    .line 691
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    if-eqz v2, :cond_1

    .line 692
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;->onStateChanged(Z)V

    .line 694
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    .line 695
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    .line 696
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    .line 697
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    .line 698
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetX:F

    .line 699
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingOffsetY:F

    .line 700
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandle:Z

    return-void
.end method

.method protected drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZF)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    if-eqz v1, :cond_f

    .line 1636
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 1640
    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v9, 0x0

    move/from16 v3, p3

    invoke-static {v3, v2, v9}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v3

    .line 1641
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move/from16 v4, p4

    invoke-static {v4, v2, v9}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v4

    .line 1643
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CornerPath;->reset()V

    .line 1644
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1645
    iget v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->cornerRadius:F

    const v5, 0x3fd33333    # 1.65f

    mul-float v10, v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v11, v2

    .line 1649
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1650
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    if-ne v2, v12, :cond_1

    xor-int/lit8 v5, p5, 0x1

    xor-int/lit8 v6, p6, 0x1

    move/from16 v7, p7

    .line 1653
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawLine(Landroid/text/Layout;IIIZZF)V

    move-object/from16 v0, p0

    move v15, v2

    move v13, v3

    move v2, v12

    const/16 p4, 0x1

    goto/16 :goto_6

    :cond_1
    move/from16 v7, p7

    move v14, v4

    .line 1655
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 1657
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    if-lez v0, :cond_7

    add-int/lit8 v4, v0, -0x1

    .line 1659
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1660
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v15

    float-to-int v15, v15

    .line 1662
    invoke-virtual {v1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move v6, v4

    .line 1664
    :goto_0
    invoke-virtual {v1, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v16

    if-eqz v16, :cond_3

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1668
    :cond_3
    :goto_1
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    const/16 p4, 0x1

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    if-ne v9, v13, :cond_4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    goto :goto_2

    :cond_5
    const/16 p4, 0x1

    .line 1670
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    :goto_2
    float-to-int v6, v6

    .line 1672
    invoke-static {v15, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1673
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v4, :cond_6

    .line 1674
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v4, v13, :cond_6

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1675
    new-instance v0, Landroid/graphics/Rect;

    int-to-float v5, v9

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, v11

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    int-to-float v6, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v11

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    invoke-direct {v0, v5, v9, v6, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v9, v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    const/16 p4, 0x1

    move v4, v0

    goto :goto_3

    :goto_4
    xor-int/lit8 v5, p5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    .line 1678
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawLine(Landroid/text/Layout;IIIZZF)V

    move v15, v2

    move v13, v3

    if-eqz v9, :cond_8

    .line 1680
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v2, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1681
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/CornerPath;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :cond_8
    add-int/lit8 v2, v15, 0x1

    :goto_5
    if-ge v2, v12, :cond_9

    .line 1684
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    float-to-int v3, v3

    .line 1685
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    float-to-int v4, v4

    .line 1686
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1687
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1688
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    int-to-float v5, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    int-to-float v6, v11

    sub-float v18, v5, v6

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float v20, v3, v6

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    sget-object v22, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v21, v3

    move-object/from16 v17, v4

    move/from16 v19, v5

    invoke-virtual/range {v17 .. v22}, Lorg/telegram/ui/Components/CornerPath;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1690
    :cond_9
    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    xor-int/lit8 v6, p6, 0x1

    const/4 v5, 0x1

    move v2, v12

    move v4, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawLine(Landroid/text/Layout;IIIZZF)V

    .line 1692
    :goto_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_a

    move/from16 v9, p4

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_b

    .line 1694
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 1697
    :cond_b
    invoke-virtual {v1, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    .line 1698
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    .line 1699
    invoke-virtual {v1, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    int-to-float v11, v11

    .line 1700
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    int-to-float v12, v12

    if-eqz p5, :cond_c

    if-eqz p6, :cond_c

    cmpl-float v14, v11, v12

    if-nez v14, :cond_c

    sub-float v14, v7, v6

    .line 1702
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v14, v14, v10

    if-gez v14, :cond_c

    .line 1703
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1704
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    float-to-int v1, v1

    sub-float v6, v11, v10

    float-to-int v6, v6

    float-to-int v2, v2

    float-to-int v7, v11

    invoke-virtual {v4, v1, v6, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1705
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1706
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    if-lt v3, v5, :cond_e

    .line 1708
    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    goto :goto_8

    :cond_c
    if-eqz p5, :cond_d

    .line 1711
    invoke-virtual {v1, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1712
    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    float-to-int v14, v6

    sub-float v5, v11, v10

    float-to-int v5, v5

    add-float/2addr v6, v10

    invoke-virtual {v1, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    float-to-int v11, v11

    invoke-virtual {v13, v14, v5, v6, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1713
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v5, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1714
    iget-object v6, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v5, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_d

    .line 1716
    iget v5, v13, Landroid/graphics/Rect;->left:I

    float-to-int v6, v10

    sub-int/2addr v5, v6

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v11, v13, Landroid/graphics/Rect;->right:I

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v13, v5, v6, v11, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1717
    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    :cond_d
    if-eqz p6, :cond_e

    .line 1721
    invoke-virtual {v1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1722
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    sub-float v5, v7, v10

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    sub-float v2, v12, v10

    float-to-int v2, v2

    float-to-int v5, v7

    float-to-int v6, v12

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1723
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1724
    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_e

    .line 1726
    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    .line 1730
    :cond_e
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CornerPath;->closeRects()V

    .line 1731
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPath:Lorg/telegram/ui/Components/CornerPath;

    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v9, :cond_f

    .line 1733
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 1734
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_f
    :goto_9
    return-void
.end method

.method protected fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V
    .locals 1

    const/4 v0, 0x0

    .line 1790
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V

    return-void
.end method

.method protected abstract fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V
.end method

.method protected abstract getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I
.end method

.method protected abstract getLineHeight()I
.end method

.method public getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    .line 650
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    return-object p1
.end method

.method public getParentBottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParentTopPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 3375
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    return-object v0
.end method

.method protected getSelectedText()Ljava/lang/CharSequence;
    .locals 3

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1614
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 3371
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public invalidate()V
    .locals 1

    .line 1397
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_0

    .line 1398
    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;->invalidate()V

    .line 1400
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-eqz v0, :cond_1

    .line 1401
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    :cond_1
    return-void
.end method

.method public isInSelectionMode()Z
    .locals 1

    .line 511
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 657
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedCellId:I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public isTryingSelect()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return v0
.end method

.method protected jumpToLine(IIZFFLorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
    .locals 0

    .line 1351
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    .line 1352
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-nez p3, :cond_0

    .line 1353
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-le p2, p1, :cond_0

    .line 1355
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1356
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    const/4 p1, 0x0

    .line 1357
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 1359
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->snap:Z

    return-void

    .line 1361
    :cond_1
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    if-nez p3, :cond_2

    .line 1362
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    if-le p1, p2, :cond_2

    .line 1364
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    .line 1365
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    .line 1366
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->movingHandleStart:Z

    .line 1368
    :cond_2
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->snap:Z

    return-void
.end method

.method protected offsetToCord(I)[I
    .locals 4

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;)V

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 1623
    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    sub-int/2addr p1, v0

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    .line 1624
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1628
    :cond_0
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1629
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v3, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    add-float/2addr p1, v3

    float-to-int p1, p1

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 1630
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 1631
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    aget v0, p1, v1

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, p1, v1

    return-object p1

    .line 1625
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tmpCoord:[I

    return-object p1
.end method

.method protected onExitSelectionMode(Z)V
    .locals 0

    return-void
.end method

.method protected onOffsetChanged()V
    .locals 0

    return-void
.end method

.method public onParentScrolled()V
    .locals 2

    .line 715
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 716
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentIsScrolling:Z

    .line 717
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    .line 718
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->hideActions()V

    :cond_0
    return-void
.end method

.method protected onQuoteClick(Lorg/telegram/messenger/MessageObject;IILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method protected abstract onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v1

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 390
    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    sub-int v3, v2, v0

    sub-int/2addr v2, v0

    mul-int/2addr v3, v2

    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    sub-int v2, v0, p1

    sub-int/2addr v0, p1

    mul-int/2addr v2, v0

    add-int/2addr v3, v2

    .line 391
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->touchSlop:I

    mul-int/2addr p1, p1

    if-le v3, p1, :cond_1

    .line 392
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 393
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    .line 395
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return p1

    .line 398
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 399
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return v1

    .line 352
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    .line 354
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 356
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    iget v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz p1, :cond_a

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 358
    iget p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedX:I

    .line 359
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->capturedY:I

    .line 360
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-le p1, v4, :cond_4

    add-int/lit8 p1, v4, -0x1

    .line 361
    :cond_4
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ge p1, v4, :cond_5

    add-int/lit8 p1, v4, 0x1

    :cond_5
    move v5, p1

    .line 362
    iget p1, v3, Landroid/graphics/Rect;->top:I

    if-ge v0, p1, :cond_6

    add-int/lit8 v0, p1, 0x1

    .line 363
    :cond_6
    iget p1, v3, Landroid/graphics/Rect;->bottom:I

    if-le v0, p1, :cond_7

    add-int/lit8 v0, p1, -0x1

    :cond_7
    move v6, v0

    .line 365
    iget v7, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    iget v8, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    const/4 v10, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I

    move-result p1

    .line 366
    iget-object v0, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt p1, v3, :cond_9

    .line 368
    iget-object v3, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    invoke-virtual {p0, p1, v3, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V

    .line 369
    iget-object v3, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v3, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    if-nez v3, :cond_8

    .line 370
    iput-boolean v1, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return v1

    .line 373
    :cond_8
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 374
    iget v3, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    .line 375
    iget-object v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_9

    iget-object v5, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object v5, v5, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_9

    .line 376
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v2

    :cond_9
    if-ltz p1, :cond_b

    .line 379
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_b

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_b

    .line 380
    iget-object p1, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 381
    iget-object p1, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->startSelectionRunnable:Ljava/lang/Runnable;

    iget v0, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->longpressDelay:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 382
    iput-boolean v2, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    goto :goto_0

    :cond_a
    move-object v4, p0

    .line 385
    :cond_b
    :goto_0
    iget-boolean p1, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->tryCapture:Z

    return p1
.end method

.method protected pickEndView()V
    .locals 0

    return-void
.end method

.method protected pickStartView()V
    .locals 0

    return-void
.end method

.method protected selectLayout(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->callback:Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;

    return-void
.end method

.method public setInvalidateParent()V
    .locals 1

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidateParent:Z

    return-void
.end method

.method public setKeyboardSize(I)V
    .locals 0

    .line 3358
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->keyboardSize:I

    .line 3359
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    return-void
.end method

.method public setMaybeTextCord(II)V
    .locals 0

    .line 345
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    .line 346
    iput p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    return-void
.end method

.method public setOnTranslate(Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->onTranslateListener:Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;

    return-void
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 332
    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 333
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 335
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 734
    iput p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->topOffset:I

    return-void
.end method

.method protected showHandleViews()V
    .locals 4

    .line 495
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    if-nez v0, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 501
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewAnimator:Landroid/animation/ValueAnimator;

    .line 502
    new-instance v2, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewProgress:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->handleViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    const/4 v0, 0x0

    .line 723
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->parentIsScrolling:Z

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->invalidate()V

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->showActionsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
