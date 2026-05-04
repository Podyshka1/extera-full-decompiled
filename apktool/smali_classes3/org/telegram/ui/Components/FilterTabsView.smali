.class public Lorg/telegram/ui/Components/FilterTabsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;,
        Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;,
        Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;,
        Lorg/telegram/ui/Components/FilterTabsView$Tab;,
        Lorg/telegram/ui/Components/FilterTabsView$TabView;
    }
.end annotation


# instance fields
.field private final COLORS:Landroid/util/Property;

.field private aActiveTextColorKey:I

.field private aBackgroundColorKey:I

.field private aTabLineColorKey:I

.field private aUnactiveTextColorKey:I

.field private activeTextColorKey:I

.field private final adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

.field private additionalTabWidth:I

.field private allTabsWidth:I

.field private animatingIndicator:Z

.field private animatingIndicatorProgress:F

.field private final animationRunnable:Ljava/lang/Runnable;

.field private animationTime:F

.field private animationValue:F

.field private backgroundColorKey:I

.field blurredBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private final clipPath:Landroid/graphics/Path;

.field private colorChangeAnimator:Landroid/animation/AnimatorSet;

.field private final counterPaint:Landroid/graphics/Paint;

.field private currentPosition:I

.field private delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

.field private final deletePaint:Landroid/graphics/Paint;

.field private editingAnimationProgress:F

.field private editingForwardAnimation:Z

.field private editingStartAnimationProgress:F

.field private emojiColorFilter:Landroid/graphics/ColorFilter;

.field private final idToPosition:Landroid/util/SparseIntArray;

.field private ignoreLayout:Z

.field private final interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field private invalidated:Z

.field private isEditing:Z

.field private isStaticAllChats:Z

.field itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private lastAnimationTime:J

.field private lastEditingAnimationTime:J

.field private final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final listViewPaddingH:I

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

.field private lockDrawableColor:I

.field private manualScrollingToId:I

.field private manualScrollingToPosition:I

.field private oldAnimatedTab:I

.field private orderChanged:Z

.field private final positionToCount:Landroid/util/SparseIntArray;

.field private final positionToId:Landroid/util/SparseIntArray;

.field private final positionToStableId:Landroid/util/SparseIntArray;

.field private final positionToWidth:Landroid/util/SparseIntArray;

.field private final positionToX:Landroid/util/SparseIntArray;

.field private prevLayoutWidth:I

.field private previousId:I

.field private previousPosition:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollingToChild:I

.field private selectedTabId:I

.field private selectorColorKey:I

.field private final selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private tabLineColorKey:I

.field private final tabs:Ljava/util/ArrayList;

.field private final textCounterPaint:Landroid/text/TextPaint;

.field public final textPaint:Landroid/text/TextPaint;

.field private unactiveTextColorKey:I


# direct methods
.method public static synthetic $r8$lambda$AIINp7iYPWr04rmofQhQbBfS2JE(Lorg/telegram/ui/Components/FilterTabsView;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/FilterTabsView;->lambda$new$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bz-Qz5y6icLbkdkE40-xG-gPlzs(Lorg/telegram/ui/Components/FilterTabsView;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FilterTabsView;->lambda$new$1(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LUlLhaIciS00vlgmp_dSDwB023s(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaActiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->aActiveTextColorKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaBackgroundColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->aBackgroundColorKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaTabLineColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->aTabLineColorKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaUnactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->aUnactiveTextColorKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->activeTextColorKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetadditionalTabWidth(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatingIndicator(Lorg/telegram/ui/Components/FilterTabsView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatingIndicatorProgress(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationRunnable(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationTime(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationTime:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationValue(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->backgroundColorKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->counterPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPosition(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeletePaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->deletePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditingAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteditingStartAnimationProgress(Lorg/telegram/ui/Components/FilterTabsView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemojiColorFilter(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->emojiColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinterpolator(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/CubicBezierInterpolator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisEditing(Lorg/telegram/ui/Components/FilterTabsView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAnimationTime(Lorg/telegram/ui/Components/FilterTabsView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->lastAnimationTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->lockDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlockDrawableColor(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->lockDrawableColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmanualScrollingToId(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmanualScrollingToPosition(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpositionToStableId(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousId(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousPosition(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedTabId(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectorDrawable(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettabLineColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabLineColorKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettabs(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->textCounterPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetunactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView;->unactiveTextColorKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputaActiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aActiveTextColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputaBackgroundColorKey(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aBackgroundColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputaTabLineColorKey(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aTabLineColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputaUnactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aUnactiveTextColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->activeTextColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimatingIndicator(Lorg/telegram/ui/Components/FilterTabsView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimationTime(Lorg/telegram/ui/Components/FilterTabsView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationTime:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimationValue(Lorg/telegram/ui/Components/FilterTabsView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationValue:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackgroundColorKey(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->backgroundColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPosition(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemojiColorFilter(Lorg/telegram/ui/Components/FilterTabsView;Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->emojiColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlockDrawable(Lorg/telegram/ui/Components/FilterTabsView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->lockDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlockDrawableColor(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->lockDrawableColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputorderChanged(Lorg/telegram/ui/Components/FilterTabsView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->orderChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousId(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousPosition(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedTabId(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtabLineColorKey(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabLineColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputunactiveTextColorKey(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->unactiveTextColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTabsWidths(Lorg/telegram/ui/Components/FilterTabsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->updateTabsWidths()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 1056
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 928
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    .line 929
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->textCounterPaint:Landroid/text/TextPaint;

    .line 930
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->deletePaint:Landroid/graphics/Paint;

    .line 931
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->counterPaint:Landroid/graphics/Paint;

    .line 932
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->emojiColorFilter:Landroid/graphics/ColorFilter;

    .line 934
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    const/4 v4, -0x1

    .line 956
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    .line 963
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 964
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    .line 966
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    .line 969
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabLine:I

    iput v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabLineColorKey:I

    .line 970
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabActiveText:I

    iput v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->activeTextColorKey:I

    .line 971
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabUnactiveText:I

    iput v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->unactiveTextColorKey:I

    .line 972
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabSelector:I

    iput v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorColorKey:I

    .line 973
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iput v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->backgroundColorKey:I

    .line 974
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->aTabLineColorKey:I

    .line 975
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->aActiveTextColorKey:I

    .line 976
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->aUnactiveTextColorKey:I

    .line 977
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->aBackgroundColorKey:I

    .line 988
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 990
    new-instance v5, Landroid/util/SparseIntArray;

    const/4 v7, 0x5

    invoke-direct {v5, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    .line 991
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    .line 992
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    .line 993
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    .line 994
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToCount:Landroid/util/SparseIntArray;

    .line 995
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    .line 1006
    new-instance v5, Lorg/telegram/ui/Components/FilterTabsView$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/FilterTabsView$1;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    .line 1035
    new-instance v5, Lorg/telegram/ui/Components/FilterTabsView$2;

    const-string v8, "animationValue"

    invoke-direct {v5, p0, v8}, Lorg/telegram/ui/Components/FilterTabsView$2;-><init>(Lorg/telegram/ui/Components/FilterTabsView;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->COLORS:Landroid/util/Property;

    .line 1682
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->clipPath:Landroid/graphics/Path;

    .line 1797
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->oldAnimatedTab:I

    .line 1057
    iput-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v5, 0x41300000    # 11.0f

    .line 1058
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1059
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v2, 0x41600000    # 14.0f

    .line 1060
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1061
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1062
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1063
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1064
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1066
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 1067
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const/16 v3, 0x8

    .line 1068
    new-array v3, v3, [F

    aput v2, v3, v6

    aput v2, v3, v1

    const/4 v5, 0x2

    aput v2, v3, v5

    const/4 v8, 0x3

    aput v2, v3, v8

    const/4 v8, 0x4

    aput v2, v3, v8

    aput v2, v3, v7

    const/4 v7, 0x6

    aput v2, v3, v7

    const/4 v8, 0x7

    aput v2, v3, v8

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1069
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabLineColorKey:I

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1071
    invoke-virtual {p0, v6}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1072
    new-instance v0, Lorg/telegram/ui/Components/FilterTabsView$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$3;-><init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1102
    invoke-virtual {v0, v5}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1103
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1104
    new-instance v2, Lorg/telegram/ui/Components/FilterTabsView$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FilterTabsView$4;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 1207
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1208
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/16 v2, 0x9

    .line 1209
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    .line 1210
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorRadius(I)V

    .line 1211
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorColorKey:I

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1212
    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$5;

    invoke-direct {p2, p0, p1, v6, v6}, Lorg/telegram/ui/Components/FilterTabsView$5;-><init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;IZ)V

    iput-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1251
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 1252
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/high16 p2, 0x41bc0000    # 23.5f

    .line 1253
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v2

    div-int/2addr v2, v5

    sub-int/2addr p2, v2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listViewPaddingH:I

    .line 1254
    invoke-virtual {v0, p2, v6, p2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1255
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1256
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawSelectorBehind(Z)V

    .line 1257
    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;-><init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    .line 1258
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 1259
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1261
    new-instance p1, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1281
    new-instance p1, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1288
    new-instance p1, Lorg/telegram/ui/Components/FilterTabsView$6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/FilterTabsView$6;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1295
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdaptiveOverScroll()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 1296
    invoke-static {v4, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1614
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1615
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1619
    iget-boolean v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 1650
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1652
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 1653
    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgetanimateTabWidth(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1654
    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgetanimateFromTabWidth(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F

    move-result v2

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgettabWidth(Lorg/telegram/ui/Components/FilterTabsView$TabView;)I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    goto :goto_0

    .line 1655
    :cond_1
    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgettabWidth(Lorg/telegram/ui/Components/FilterTabsView$TabView;)I

    move-result v2

    int-to-float v2, v2

    :goto_0
    const/high16 v6, 0x41800000    # 16.0f

    .line 1657
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1659
    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgetanimateTabWidth(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1660
    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgetanimateFromTabWidth(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    goto :goto_1

    .line 1661
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    .line 1662
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    sub-float/2addr v6, v2

    div-float/2addr v6, v4

    add-float/2addr v7, v6

    float-to-int v6, v7

    int-to-float v6, v6

    .line 1664
    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgettabCounterVisible(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F

    goto/16 :goto_8

    :cond_3
    move v2, v5

    move v6, v2

    goto/16 :goto_8

    .line 1620
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 1622
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1626
    iget-boolean v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    if-eqz v6, :cond_5

    .line 1627
    iget v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousPosition:I

    .line 1628
    iget v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    goto :goto_3

    .line 1630
    :cond_5
    iget v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    .line 1631
    iget v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 1633
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 1634
    iget-object v9, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 1635
    iget-object v10, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 1636
    iget-object v11, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 1637
    iget-object v12, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v3

    goto :goto_4

    :cond_6
    move v6, v5

    .line 1638
    :goto_4
    iget-object v12, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v3

    goto :goto_5

    :cond_7
    move v7, v5

    .line 1639
    :goto_5
    iget v12, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    if-eqz v12, :cond_8

    .line 1640
    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    invoke-static {v8, v9, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v2

    :goto_6
    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    goto :goto_7

    .line 1642
    :cond_8
    iget-object v12, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1643
    iget v12, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    invoke-static {v8, v9, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v8

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v8, v1

    int-to-float v1, v8

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v2

    goto :goto_6

    .line 1645
    :goto_7
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    invoke-static {v10, v11, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    .line 1646
    iget v8, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move v6, v1

    :goto_8
    cmpl-float v1, v2, v5

    if-eqz v1, :cond_9

    .line 1668
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1669
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1670
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getPivotX()F

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v5, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getPivotY()F

    move-result v7

    invoke-virtual {p1, v1, v3, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1672
    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 1674
    div-int/lit8 v0, v0, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1675
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v4, 0x41480000    # 12.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v6, v5

    sub-float/2addr v5, v1

    float-to-int v5, v5

    add-float/2addr v6, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v6, v2

    add-float/2addr v6, v1

    float-to-int v1, v6

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v3, v5, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 1677
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1678
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method

.method private findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;
    .locals 2

    const/4 v0, 0x0

    .line 1751
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1752
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-eqz v1, :cond_0

    .line 1753
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IFF)V
    .locals 0

    .line 1262
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    invoke-interface {p4}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->canPerformActions()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 1265
    :cond_0
    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 1266
    iget-boolean p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    if-eqz p4, :cond_3

    if-nez p2, :cond_1

    .line 1267
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->hideAllChats:Z

    if-eqz p2, :cond_2

    :cond_1
    const/high16 p2, 0x40c00000    # 6.0f

    .line 1268
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 1269
    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Landroid/graphics/RectF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p3

    if-gez p4, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgetrect(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Landroid/graphics/RectF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/RectF;->right:F

    add-float/2addr p4, p2

    cmpl-float p2, p4, p3

    if-lez p2, :cond_2

    .line 1270
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgetcurrentTab(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onDeletePressed(I)V

    :cond_2
    :goto_0
    return-void

    .line 1275
    :cond_3
    iget p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    if-ne p2, p3, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz p3, :cond_4

    .line 1276
    invoke-interface {p3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onSamePageSelected()V

    return-void

    .line 1279
    :cond_4
    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgetcurrentTab(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)Z
    .locals 4

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->canPerformActions()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    const/4 v3, 0x1

    if-ne p2, v2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->didSelectTab(Lorg/telegram/ui/Components/FilterTabsView$TabView;Z)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1285
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    return v3

    :cond_2
    :goto_1
    return v1
.end method

.method private scrollToChild(IZ)V
    .locals 1

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    if-eq v0, p1, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1771
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    if-eqz p2, :cond_1

    .line 1773
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 1775
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTabsWidths()V
    .locals 7

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1544
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listViewPaddingH:I

    .line 1545
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1546
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v4

    .line 1547
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1548
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToCount:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1549
    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    iget v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1550
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(IILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZ)V
    .locals 6

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 1427
    iget v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    if-ne v4, v3, :cond_0

    .line 1428
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    .line 1430
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1431
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1432
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1433
    iget v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    if-eq v4, v3, :cond_1

    if-ne v4, p1, :cond_1

    .line 1434
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    .line 1437
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {p0, p3, p5}, Lorg/telegram/ui/Components/FilterTabsView;->text(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, p0

    move v2, p1

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FilterTabsView$Tab;-><init>(Lorg/telegram/ui/Components/FilterTabsView;ILjava/lang/CharSequence;Ljava/lang/String;Z)V

    move-object v2, v0

    .line 1438
    iput-boolean p7, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    .line 1439
    iput-boolean p8, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    .line 1440
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v3

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateColorsTo(IIIII)V
    .locals 1

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1496
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1498
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->aTabLineColorKey:I

    .line 1499
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->aActiveTextColorKey:I

    .line 1500
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->aUnactiveTextColorKey:I

    .line 1501
    iput p5, p0, Lorg/telegram/ui/Components/FilterTabsView;->aBackgroundColorKey:I

    .line 1502
    iput p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorColorKey:I

    .line 1503
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1505
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    .line 1506
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->COLORS:Landroid/util/Property;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p0, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1507
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1508
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/FilterTabsView$7;-><init>(Lorg/telegram/ui/Components/FilterTabsView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1521
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->colorChangeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public checkTabsCounter()V
    .locals 8

    .line 1899
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1900
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    .line 1901
    iget v5, v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget v7, v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v6, v7}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v6

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget v6, v4, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v5, v6}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_3

    .line 1905
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v5, 0x1

    .line 1906
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1907
    iget-boolean v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_3

    .line 1908
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    .line 1909
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->requestLayout()V

    .line 1910
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    :goto_2
    if-ge v1, v0, :cond_3

    .line 1912
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v3

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1919
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method public currentTabIsDefault()Z
    .locals 3

    .line 2173
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2177
    :cond_0
    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1694
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1695
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1696
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1697
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 1556
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 1557
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, p4, :cond_0

    .line 1558
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FilterTabsView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1560
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 1561
    iget-wide v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->lastEditingAnimationTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x11

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1562
    iput-wide p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->lastEditingAnimationTime:J

    .line 1564
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    const/4 p2, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_8

    .line 1565
    :cond_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingForwardAnimation:Z

    const/high16 v5, 0x43d20000    # 420.0f

    if-eqz v4, :cond_4

    .line 1566
    iget v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    cmpg-float v6, v4, v3

    if-gtz v6, :cond_2

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, p2

    :goto_0
    long-to-float v7, v0

    div-float/2addr v7, v5

    add-float/2addr v4, v7

    .line 1567
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    if-nez p1, :cond_3

    if-eqz v6, :cond_3

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_3

    .line 1569
    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    .line 1571
    :cond_3
    iget v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    cmpl-float v4, v4, p4

    if-ltz v4, :cond_7

    .line 1572
    iput p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    .line 1573
    iput-boolean p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingForwardAnimation:Z

    goto :goto_1

    .line 1576
    :cond_4
    iget v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    cmpl-float v6, v4, v3

    if-ltz v6, :cond_5

    move p2, v2

    :cond_5
    long-to-float v6, v0

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    .line 1577
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    cmpg-float p2, v4, v3

    if-gtz p2, :cond_6

    .line 1579
    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    .line 1581
    :cond_6
    iget p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float p2, p2, v4

    if-gtz p2, :cond_7

    .line 1582
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingAnimationProgress:F

    .line 1583
    iput-boolean v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingForwardAnimation:Z

    :cond_7
    :goto_1
    move p2, v2

    :cond_8
    const/high16 v4, 0x43340000    # 180.0f

    if-eqz p1, :cond_9

    .line 1589
    iget p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    cmpg-float v3, p1, p4

    if-gez v3, :cond_a

    long-to-float p2, v0

    div-float/2addr p2, v4

    add-float/2addr p1, p2

    .line 1590
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    cmpl-float p1, p1, p4

    if-lez p1, :cond_b

    .line 1592
    iput p4, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    goto :goto_2

    :cond_9
    if-nez p1, :cond_a

    .line 1597
    iget p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    cmpl-float p4, p1, v3

    if-lez p4, :cond_a

    long-to-float p2, v0

    div-float/2addr p2, v4

    sub-float/2addr p1, p2

    .line 1598
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_b

    .line 1600
    iput v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingStartAnimationProgress:F

    goto :goto_2

    :cond_a
    move v2, p2

    :cond_b
    :goto_2
    if-eqz v2, :cond_c

    .line 1606
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1607
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1608
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    return p3
.end method

.method public finishAddingTabs(Z)V
    .locals 2

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1476
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1477
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onTabSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;ZZ)V

    .line 1478
    iget p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->oldAnimatedTab:I

    return-void
.end method

.method public getCurrentTabId()I
    .locals 1

    .line 1525
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    return v0
.end method

.method public getCurrentTabStableId()I
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getDefaultTabId()I
    .locals 1

    .line 2181
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2185
    :cond_0
    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    return v0
.end method

.method public getFirstTabId()I
    .locals 2

    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getLastTabId()I
    .locals 3

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->getTabsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 2169
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getNextPageId(Z)I
    .locals 3

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    add-int/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public getSelectorColorKey()I
    .locals 1

    .line 1537
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorColorKey:I

    return v0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1383
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getStableId(I)I
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public getTab(I)Lorg/telegram/ui/Components/FilterTabsView$Tab;
    .locals 1

    if-ltz p1, :cond_1

    .line 1468
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->getTabsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1471
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTabsContainer()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getTabsCount()I
    .locals 1

    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isAnimatingIndicator()Z
    .locals 1

    .line 1304
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    return v0
.end method

.method public isEditing()Z
    .locals 1

    .line 1868
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2189
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFirstTab()Z
    .locals 1

    .line 1362
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstTabSelected()Z
    .locals 4

    .line 2193
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2196
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method public isLocked(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2200
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2201
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v2, p1, :cond_0

    .line 2202
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public notifyTabCounterChanged(I)V
    .locals 5

    .line 1924
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ltz p1, :cond_3

    .line 1925
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 1928
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    .line 1929
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    .line 1932
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1933
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v1, 0x1

    .line 1934
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1935
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    if-eqz p1, :cond_3

    .line 1936
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    .line 1937
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView;->requestLayout()V

    .line 1938
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1939
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 1940
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1941
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_3

    .line 1942
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v3

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected onDefaultTabMoved()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1781
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 1783
    iget p3, p1, Lorg/telegram/ui/Components/FilterTabsView;->prevLayoutWidth:I

    sub-int/2addr p4, p2

    if-eq p3, p4, :cond_0

    .line 1784
    iput p4, p1, Lorg/telegram/ui/Components/FilterTabsView;->prevLayoutWidth:I

    const/4 p2, -0x1

    .line 1785
    iput p2, p1, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    .line 1786
    iget-boolean p2, p1, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    if-eqz p2, :cond_0

    .line 1787
    iget-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 1788
    iput-boolean p2, p1, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    const/4 p2, 0x1

    .line 1789
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 1790
    iget-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz p2, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1791
    invoke-interface {p2, p3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1709
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1710
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listViewPaddingH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1711
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->findDefaultTab()Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1712
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->hideAllChats:Z

    if-eqz v2, :cond_7

    .line 1714
    :cond_0
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->hideAllChats:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4

    move v2, v5

    move v6, v2

    .line 1716
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 1717
    iget-object v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    if-eq v7, v1, :cond_1

    .line 1719
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v7

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1723
    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1724
    sget v7, Lorg/telegram/messenger/R$string;->FilterAllChatsShort:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1726
    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->setTitle(Ljava/lang/String;Ljava/util/ArrayList;Z)Z

    .line 1727
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v8

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v9

    add-int/2addr v8, v9

    .line 1729
    iget-boolean v9, p0, Lorg/telegram/ui/Components/FilterTabsView;->isStaticAllChats:Z

    if-nez v9, :cond_3

    add-int/2addr v8, v6

    if-le v8, v0, :cond_3

    move-object v2, v7

    :cond_3
    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->setTitle(Ljava/lang/String;Ljava/util/ArrayList;Z)Z

    .line 1730
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result v1

    add-int/2addr v6, v1

    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getPaddingTab()I

    move-result v1

    add-int/2addr v6, v1

    iput v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1732
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1733
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    if-ge v1, v0, :cond_5

    sub-int/2addr v0, v1

    .line 1734
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->additionalTabWidth:I

    if-eq v2, v0, :cond_6

    .line 1736
    iput-boolean v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->ignoreLayout:Z

    .line 1737
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 1738
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1739
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1740
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1741
    iput-boolean v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->ignoreLayout:Z

    .line 1743
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView;->updateTabsWidths()V

    .line 1744
    iput-boolean v5, p0, Lorg/telegram/ui/Components/FilterTabsView;->invalidated:Z

    .line 1747
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 1686
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1687
    iget-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    .line 1688
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->clipPath:Landroid/graphics/Path;

    const/high16 p3, 0x41100000    # 9.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float v1, p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float v2, p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float v3, p1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float v4, p2

    const/high16 p1, 0x41800000    # 16.0f

    .line 1689
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float v5, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v6, p1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 1688
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public removeTabs()V
    .locals 2

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1397
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1398
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToX:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 1402
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->allTabsWidth:I

    .line 1403
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    const/4 v1, -0x1

    .line 1404
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    .line 1405
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousPosition:I

    .line 1406
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousId:I

    .line 1407
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1761
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1764
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public resetTabId()V
    .locals 1

    const/4 v0, -0x1

    .line 1415
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    return-void
.end method

.method public scrollToTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V
    .locals 6

    .line 1318
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    if-ne v0, p2, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1321
    :cond_0
    iget-boolean v1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1322
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz p2, :cond_1

    .line 1323
    invoke-interface {p2, p1, v2}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    if-ge v0, p2, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    const/4 v4, -0x1

    .line 1328
    iput v4, p0, Lorg/telegram/ui/Components/FilterTabsView;->scrollingToChild:I

    .line 1329
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousPosition:I

    .line 1330
    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->previousId:I

    .line 1331
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    .line 1332
    iget v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    .line 1334
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    if-eqz v0, :cond_4

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1336
    iput-boolean v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    :cond_4
    const/4 v0, 0x0

    .line 1339
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationTime:F

    .line 1340
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    .line 1341
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    .line 1342
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x10

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1346
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz v0, :cond_5

    .line 1347
    invoke-interface {v0, p1, v3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;Z)V

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    invoke-interface {v0, p1, v3, v1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onTabSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;ZZ)V

    .line 1349
    iget p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->oldAnimatedTab:I

    .line 1351
    :cond_5
    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToChild(IZ)V

    return-void
.end method

.method public selectFirstTab()V
    .locals 2

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1358
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V

    return-void
.end method

.method public selectLastTab()V
    .locals 2

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1369
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V

    return-void
.end method

.method public selectTabWithId(IF)V
    .locals 8

    .line 1800
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    cmpg-float v3, p2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v3, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    cmpl-float v3, p2, v4

    if-lez v3, :cond_2

    move p2, v4

    :cond_2
    :goto_0
    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 1811
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 1812
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    goto :goto_1

    .line 1814
    :cond_3
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 1815
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    .line 1817
    :goto_1
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    .line 1818
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1819
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1820
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    cmpg-float v2, p2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-gez v2, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v3

    .line 1821
    :goto_2
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/FilterTabsView;->scrollToChild(IZ)V

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v6, p2, v2

    if-ltz v6, :cond_5

    .line 1823
    iget v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->oldAnimatedTab:I

    if-ne v7, v0, :cond_6

    :cond_5
    cmpg-float v2, p2, v2

    if-gtz v2, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->oldAnimatedTab:I

    iget v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    if-eq v2, v7, :cond_9

    :cond_6
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    iget v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    if-eq v2, v7, :cond_9

    if-ltz v6, :cond_7

    goto :goto_3

    :cond_7
    move v0, v7

    .line 1825
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v7, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    if-ge v7, v0, :cond_8

    move v3, v5

    :cond_8
    invoke-interface {v2, v6, v3, v5}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onTabSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;ZZ)V

    .line 1826
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->oldAnimatedTab:I

    :cond_9
    cmpl-float p2, p2, v4

    if-ltz p2, :cond_a

    .line 1830
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToPosition:I

    .line 1831
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->manualScrollingToId:I

    .line 1832
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    .line 1833
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    :cond_a
    :goto_4
    return-void
.end method

.method public selectTabWithStableId(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 95
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToStableId:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 96
    iput v1, p0, Lorg/telegram/ui/Components/FilterTabsView;->currentPosition:I

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectedTabId:I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public setAnimationIdicatorProgress(F)V
    .locals 1

    .line 1373
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicatorProgress:F

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1376
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    if-eqz v0, :cond_0

    .line 1378
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    return-void
.end method

.method public setBlurredBackground(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V
    .locals 0

    .line 1314
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->blurredBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColors(IIIII)V
    .locals 0

    .line 1482
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->tabLineColorKey:I

    .line 1483
    iput p5, p0, Lorg/telegram/ui/Components/FilterTabsView;->backgroundColorKey:I

    .line 1484
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->activeTextColorKey:I

    .line 1485
    iput p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->unactiveTextColorKey:I

    .line 1486
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1487
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1489
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1490
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1491
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->delegate:Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    return-void
.end method

.method public setIsEditing(Z)V
    .locals 6

    .line 1872
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    const/4 p1, 0x1

    .line 1873
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->editingForwardAnimation:Z

    .line 1874
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1875
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1876
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->adapter:Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1877
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1878
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->isEditing:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->orderChanged:Z

    if-eqz p1, :cond_2

    .line 1879
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->saveDialogFiltersOrder()V

    .line 1880
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;-><init>()V

    .line 1881
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    .line 1882
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1883
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 1884
    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1885
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;->order:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1887
    :cond_0
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFiltersOrder;->order:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1890
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->lockFiltersInternal()V

    .line 1891
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/ui/Components/FilterTabsView$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1893
    iput-boolean v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->orderChanged:Z

    :cond_2
    return-void
.end method

.method public setStaticAllChats(Z)V
    .locals 0

    .line 985
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->isStaticAllChats:Z

    return-void
.end method

.method public shakeLock(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2209
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2210
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz v2, :cond_0

    .line 2211
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 2212
    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->-$$Nest$fgetcurrentTab(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v3, p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2213
    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->shakeLockIcon(FI)V

    const/4 p1, 0x3

    .line 2215
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopAnimatingIndicator()V
    .locals 1

    const/4 v0, 0x0

    .line 1308
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->animatingIndicator:Z

    return-void
.end method

.method public text(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/CharSequence;
    .locals 2

    .line 1419
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1420
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public updateColors()V
    .locals 1

    .line 1701
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView;->blurredBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 1702
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->updateColors()V

    .line 1704
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
